--1. Cho biết mã, tên các sản phẩm có giá trên 30000vnd.
select p.ProductID, p.ProductName, p.Price
from PRODUCT as p
where p.Price > 30000

--2. Đưa ra mã, tên và loại nguyên liệu được nhập vào năm 2024 và là "Thực phẩm".
select I.ItemID, I.ItemName, I.TypeItem
from ITEM as I
where I.TypeItem = N'Thực phẩm' 
	  and year(I.SupplyDate) = 2024 

--3. Cho biết tổng số đơn hàng và số tiền bán được trong tháng 6/2023.
select count(O.OrderID) as TotalOrders, sum(O.TotalPrice) as TotalPrice
from ORDERS as O
where month(O.OrderDate) = 6 and year(O.OrderDate) = 2023

	
--4. Hãy thống kế những nhân viên mức lương cao nhất công ty theo từng vị trí làm việc.
SELECT RoleStaff, MAX(Salary) AS MaxSalary
FROM STAFF
GROUP BY RoleStaff;

--5. Cho biết mã, tên sản phẩm và tên các nguyên liệu được sử dụng trong sản phẩm đó.
select P.ProductID, P.ProductName, I.ItemName
from PRODUCT as P
left join  USED_IN as UI
on P.ProductID = UI.ProductID
left join ITEM as I
on UI.ItemID = I.ItemID

--6. Cho biết sản phẩm được sử dụng bằng nguyên liệu hạt cà phê.
select P.ProductID, P.ProductName, I.ItemName
from PRODUCT as P
join USED_IN as UI
on UI.ProductID = P.ProductID
join ITEM as I
on I.ItemID = UI.ItemID
where I.ItemName in (N'Hạt cà phê')


--7. Cho biết sản phẩm bán chạy nhất trong năm 2023.
select top 1 OD.ProductID, P.ProductName, sum(OD.Quantity) as QuantityProduct 
from ORDERDETAIL as OD
join PRODUCT as P
on OD.ProductID = P.ProductID
join ORDERS as O
on O.OrderID = OD.OrderID
where year(O.OrderDate) = 2023
group by OD.ProductID, P.ProductName
order by sum(OD.Quantity) desc

--8. Cho biết tên nhân viên, mức lương( tính cả trợ cấp ) và tổng số đơn hàng của từng nhân 
-- viên với điều kiện nhân viên bắt đầu làm việc từ năm 2024 , sắp xếp nhân viên với thứ tự giảm
-- dần theo họ và tên.

select S.FirstName, S.LastName,year(S.DateStartWork) as YearStartWork , (S.Salary + S.Allowance) as TotalSalary 
		, count(O.OrderID) as TotalOrders
from STAFF as S
join ORDERS as O
on O.StaffID = S.StaffID
where year(S.DateStartWork) = 2024
group by S.FirstName, S.LastName, (S.Salary + S.Allowance),year(S.DateStartWork)
order by S.LastName,S.FirstName desc

--9. Hãy cho biết mỗi khách hàng trong năm 2023 đã đặt bao nhiêu đơn hàng( ngoại trừ các đơn
--hàng tại quán) và tổng giá trị của đơn hàng là bao nhiêu, sắp xếp thứ tự tăng dần theo tổng
--giá trị đơn hàng.

select C.CustomerID,O.LocationOrders, count(O.OrderID) as totalOrders , sum(O.TotalPrice) as totalPrice
from CUSTOMER as C
join ORDERS as O
on O.CustomerID = C.CustomerID
where year(O.OrderDate) = 2023 and O.LocationOrders not in (N'tại quán')
group by C.CustomerID,O.LocationOrders
order by sum(O.TotalPrice)  

--10. Hãy cho biết những khách hàng đã mua sản phầm cà phê đen, cà phê nâu và bạc xỉu với số 
--lượng từ 3 trở lên và cho biết hoá đơn mua từ ngày bao nhiêu, sắp xếp thứ tự từ điển theo họ và tên.

select C.CustomerID, C.FirstName, C.LastName, O.OrderID, O.OrderDate, OD.Quantity, P.ProductName
from CUSTOMER as C
join ORDERS as O
on O.CustomerID = C.CustomerID
join ORDERDETAIL as OD
on O.OrderID = OD.OrderID
join PRODUCT as P
on OD.ProductID = P.ProductID
where OD.Quantity > 3 and P.ProductName in (N'Cà phê đen',N'Cà phê nâu',N'Bạc xỉu')
order by C.LastName, C.FirstName 

--11. Hãy cho biết tên nguyên liệu và tên nhà cung cấp nguyên liệu mà cửa hàng đã nhập về trong năm 2024,
--sắp xếp thứ tự giảm dần theo số nguyên liệu được sử dụng trong sản phẩm
select I.ItemName, S.SupplierName, count(UI.ItemID) as ItemUsed
from ITEM as I
join SUPPLIER as S
on I.SupplierID = S.SupplierID
join USED_IN as UI
on UI.ItemID = I.ItemID
where year(I.SupplyDate) = 2024 
group by I.ItemName, S.SupplierName
order by count(UI.ItemID)

--12. Lấy ra thông tin về  các nguyên liệu có cùng thể loại với nguyên liệu 'Hạt cà phê'.
select I.ItemName, I.TypeItem
from ITEM as I
where I.TypeItem = (
	select I2.TypeItem
	from ITEM as I2
	where I2.ItemName in (N'Hạt cà phê')
)

-- 13. Lọc ra tên sản phẩm và tống số đơn hàng có chứa sản phẩm đó.
select ProductName, TotalOrders
from 
	(select p.ProductID, p.ProductName, (
				select COUNT(*)
				from ORDERDETAIL as od
				where od.ProductID = p.ProductID
			) as TotalOrders
	FROM PRODUCT as p) AS Temp;

 --14. Lấy thông tin về đơn hàng, cùng với tổng giá trị đơn hàng và tỷ lệ giữa tổng giá trị đơn hàng so 
 --với phí giao hàng.
 select O.OrderID, O.OrderDate, O.TotalPrice,
		(select sum(OD.Price * OD.Quantity)
		 from ORDERDETAIL as OD
		 where OD.OrderID = O.OrderID
		) as TotalPricePerOrders,
		round((select sum(OD.Price * OD.Quantity)
		 from ORDERDETAIL as OD
		 where OD.OrderID = O.OrderID
		)/O.TotalPrice,2) as Ratio
 from ORDERS as O

--15. Hãy thống kê những khách hàng có tổng giá trị tất cả đơn đặt hàng trong tháng 6 lớn hơn 200000
--và đơn đặt hàng không chứa sản phẩm có giá rẻ nhất trong tất cả sản phẩm, sắp xếp thứ tự từ điển theo họ và tên.

select C.CustomerID, C.FirstName, C.LastName, count(O.OrderID) as totalOrder, sum(O.TotalPrice) as totalPrice
from CUSTOMER as C
left join ORDERS as O on C.CustomerID = O.CustomerID
join ORDERDETAIL as OD on OD.OrderID = O.OrderID
join PRODUCT as P on P.ProductID = OD.ProductID
where C.CustomerID NOT IN (
    select O.CustomerID
    from ORDERS as O
    join ORDERDETAIL as OD on OD.OrderID = O.OrderID
    join PRODUCT as P on P.ProductID = OD.ProductID
    group by O.CustomerID
    having min(P.Price) = (
        select min(Price) 
        from PRODUCT
    )
)
and month(O.OrderDate) = 6
group by C.CustomerID, C.FirstName, C.LastName
having sum(O.TotalPrice) > 200000
order by C.LastName, C.FirstName 



