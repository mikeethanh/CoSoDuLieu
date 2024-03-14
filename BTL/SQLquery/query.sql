--1. Cho biết mã, tên các sản phẩm có giá trên 30000vnd
select p.ProductID, p.ProductName, p.Price
from PRODUCT as p
where p.Price > 30000

--2. Đưa ra mã, tên và loại nguyên liệu được nhập vào từ năm 2024 và thuộc loại Thực phẩm.
select I.ItemID, I.ItemName, I.TypeItem
from ITEM as I
where I.TypeItem = N'Thực phẩm' 
	  and year(I.SupplyDate) = 2024 

--3. Cho biết tổng số đơn hàng và số tiền bán được trong tháng 6/2023.
select count(O.OrderID) as TotalOrdersIn12_2024, sum(O.TotalPrice) as TotalPriceIn12_2024
from ORDERS as O
where month(O.OrderDate) = 6 and year(O.OrderDate) = 2023

--5. Cho biết tên nhân viên, mức lương( tính cả trợ cấp ) và tổng số đơn hàng của từng nhân 
-- viên với điều kiện nhân viên bắt đầu làm việc từ năm 2024 , sắp xếp nhân viên với thứ tự giảm
-- dần theo họ và tên.

select S.FirstName, S.LastName , (S.Salary + S.Allowance) as TotalSalary 
		, count(O.OrderID) as TotalOrders
from STAFF as S
join ORDERS as O
on O.StaffID = S.StaffID
where year(S.DateStartWork) = 2024
group by S.FirstName, S.LastName, (S.Salary + S.Allowance)
order by S.FirstName, S.LastName desc
