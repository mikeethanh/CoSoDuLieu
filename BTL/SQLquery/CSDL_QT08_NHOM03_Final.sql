CREATE DATABASE QuanLyQuanNuoc
USE QuanLyQuanNuoc

CREATE TABLE CUSTOMER
(
  CustomerID INT IDENTITY(1,1) NOT NULL,
  FirstName NVARCHAR(50) NOT NULL,
  LastName NVARCHAR(50) NOT NULL,
  PhoneNumber VARCHAR(10),
  Email VARCHAR(50),
  CONSTRAINT PK_CUSTOMER UNIQUE(CustomerID),
  CONSTRAINT UN_CUSTOMER_EMAIL UNIQUE (Email),
  CONSTRAINT CHECK_CUSTOMER_PHONENUMBER CHECK(PhoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);

CREATE TABLE STAFF (
  StaffID INT NOT NULL,
  FirstName NVARCHAR(50) NOT NULL,
  LastName NVARCHAR(50) NOT NULL,
  DateStartWork DATE NOT NULL,
  RoleStaff NVARCHAR(50) NOT NULL,
  PhoneNumber VARCHAR(10) NOT NULL,
  Salary BIGINT NOT NULL,
  Allowance INT DEFAULT 0, 
  CONSTRAINT PK_STAFF PRIMARY KEY (StaffID),
  CONSTRAINT UN_STAFF_PHONENUMBER UNIQUE (PhoneNumber),
  CONSTRAINT CHECK_STAFF_PHONENUMBER CHECK(PhoneNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  CONSTRAINT CHECK__STAFF_DATESTARTWORK CHECK(DateStartWork <= GETDATE())
);

CREATE TABLE ORDERS
(
  OrderID INT NOT NULL,
  CustomerID INT NOT NULL,
  StaffID INT NOT NULL,
  OrderDate DATE NOT NULL,
  StatusOrders NVARCHAR(50) NOT NULL,
  LocationOrders NVARCHAR(255) NOT NULL,
  TotalPrice FLOAT NOT NULL,
  ShipVia INT DEFAULT 0,
  CONSTRAINT PK_ORDERS PRIMARY KEY (OrderID),
  CONSTRAINT FK_ORDERS_CUSTOMER FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
  CONSTRAINT FK_ORDERS_STAFF FOREIGN KEY (StaffID) REFERENCES STAFF(StaffID),
  CONSTRAINT CHECK_ORDERS_DATESTARTWORK CHECK(OrderDate <= GETDATE()),
);

CREATE TABLE PRODUCT
(
  ProductID INT NOT NULL,
  TypeProduct NVARCHAR(50) NOT NULL,
  ProductName NVARCHAR(100) NOT NULL,
  Size NCHAR(1),
  Price FLOAT NOT NULL,
  CONSTRAINT PK_PRODUCT PRIMARY KEY (ProductID),
  CONSTRAINT UN__PRODUCT_PRODUCTNAME UNIQUE (ProductName)
);

CREATE TABLE ORDERDETAIL
(  
  ProductID INT NOT NULL,
  OrderID INT NOT NULL,
  Price FLOAT NOT NULL,
  Quantity INT NOT NULL,
  TotalPrice AS (Price * Quantity),
  CONSTRAINT PK_ORDERDETAIL PRIMARY KEY (ProductID, OrderID),
  CONSTRAINT FK_ORDERDETAIL_PRODUCT FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID),
  CONSTRAINT FK_ORDERDETAIL_ORDERS FOREIGN KEY (OrderID) REFERENCES ORDERS(OrderID)
);

CREATE TABLE SUPPLIER
(
  SupplierID INT NOT NULL,
  SupplierName NVARCHAR(50) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  PhoneNumber VARCHAR(10) NOT NULL,
  TradingName NVARCHAR(50) NOT NULL,
  CONSTRAINT PK_SUPPLIER PRIMARY KEY (SupplierID),
  CONSTRAINT UN_SUPPLIER_PHONENUMBER UNIQUE (PhoneNumber),
  CONSTRAINT UN_SUPPLIER_EMAIL UNIQUE (Email),
  CONSTRAINT CHECK_SUPPLIER_PHONENUMBER CHECK(PhoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);

CREATE TABLE ITEM
(
  ItemID INT NOT NULL,
  SupplierID INT NOT NULL,
  ItemName NVARCHAR(100) NOT NULL,
  TypeItem NVARCHAR(50) NOT NULL,
  SupplyDate DATE NOT NULL,
  CONSTRAINT PK_ITEM PRIMARY KEY (ItemID),
  CONSTRAINT FK_ITEM_SUPPLIER FOREIGN KEY (SupplierID) REFERENCES SUPPLIER(SupplierID),
  CONSTRAINT CHECK_ITEM_DATESTARTWORK CHECK(SupplyDate <= GETDATE())
);


CREATE TABLE USED_IN
(
  ProductID INT NOT NULL,
  ItemID INT NOT NULL,
  ItemWeight NVARCHAR(50) NOT NULL,
  CONSTRAINT PK_USED_IN PRIMARY KEY (ProductID, ItemID),
  CONSTRAINT FK_USED_IN_PRODUCT FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID),
  CONSTRAINT FK_USED_IN_ITEM FOREIGN KEY (ItemID) REFERENCES ITEM(ItemID)
);

-- Insert vào CUSTOMER
INSERT INTO CUSTOMER(LastName, FirstName, PhoneNumber, Email) VALUES
    (N'Anh', N'Nguyễn', '0981651321', 'anhnguyen@gmail.com'),
    (N'Phương', N'Nguyễn', '0981234321', 'phuongnguyen@gmail.com'),
    (N'Duy', N'Nguyễn', '0985671321', 'duynguyen@gmail.com'),
    (N'Anh', N'Trần', '0981697543', 'anhtran@gmail.com'),
    (N'Lê', N'Nguyễn', '0981890654', 'lenguyen@gmail.com'),
    (N'Thúy', N'Lê', '0981651752', 'thuyle@gmail.com'),
    (N'Hiếu', N'Lý', '0981659654', 'lyhieu@gmail.com'),
    (N'Tuấn', N'Nguyễn', '0981651234', 'nguyentuan@gmail.com'),
    (N'Vy', N'Phạm', '0981617891', 'phamvyy@gmail.com'),
    (N'Mai', N'Trịnh', '0961651901', 'trinhmai@gmail.com'),
    (N'Thanh', N'Lê', '0961651752', 'thuylee@gmail.com'),
    (N'Dung', N'Lý', '0961659654', 'lyhieuu@gmail.com'),
    (N'Vy', N'Nguyễn', '0961651234', 'nguyenvy@gmail.com'),
    (N'Vy', N'Phạm', '0961617891', 'phamvy@gmail.com'),
    (N'Mai', N'Trịnh', '0961651901', 'trinhmaii@gmail.com');

-- Insert vào STAFF
INSERT INTO STAFF(StaffID, LastName, FirstName, PhoneNumber, RoleStaff, Salary, DateStartWork, Allowance) VALUES
    (10, N'Cảnh', N'Lữ', '0981651211', N'quản lý', 7500000, '2022-06-15', 100000),
    (15, N'Ngọc', N'Phạm', '0910651881', N'pha chế', 4500000, '2023-06-25', 150000),
    (21, N'Lụa', N'Trần', '0981651974', N'pha chế', 4000000, '2024-02-28', 0),
    (17, N'Thái', N'Duy', '0981351871', N'pha chế', 4500000, '2023-07-01', 20000),
    (22, N'Vy', N'Cầm', '0981654443', N'thu ngân', 5000000, '2024-01-30', 0),
    (24, N'Thế', N'Anh', '0981651416', N'thu ngân', 5500000, '2023-08-10', 100000),
    (26, N'Lợi', N'Lê', '0981654276', N'thu ngân', 5500000, '2023-06-20', 300000),
    (28, N'Cẩm', N'Tú', '0981651232', N'thu ngân', 5500000, '2024-02-15', 100000),
    (31, N'Thai', N'Trần', '0961651974', N'pha chế', 4000000, '2024-02-28', 0),
    (32, N'Thu', N'Duy', '0961351871', N'pha chế', 4500000, '2023-07-01', 20000),
    (35, N'Vi', N'Cầm', '0961654443', N'thu ngân', 5000000, '2024-01-30', 0),
    (37, N'Linh', N'Anh', '0961651416', N'thu ngân', 5500000, '2023-08-10', 100000);

-- Insert vào SUPPLIER
INSERT INTO SUPPLIER(SupplierID, SupplierName, Email, PhoneNumber, TradingName) VALUES
    (1, N'Trung Nguyên', 'cftrungnguyen@gmail.com', '0987412679', N'Hạt cà phê arabica'),
    (2, N'Monin', 'monin@gmail.com', '0935672670', N'Siro hoa quả'),
    (3, N'Nestle', 'nestle@gmail.com', '0418419076', N'Chocolate'),
    (4, N'Vinamilk', 'vinamilk@gmail.com', '0982462678', N'Sữa tươi Vinamilk'),
    (5, N'Tân Hiệp Phát', 'tanhiepphat@gmail.com', '0915629271', N'Nước ép đóng hộp'),
    (6, N'Đông Tăng', 'dongtang@gmail.com', '0912791664', N'Lá trà Đông Tăng'),
    (7, N'McCormick', 'mrcormick@gmail.com', '0981610948', N'Đường McCormick'),
    (8, N'Đại Thành', 'daithanh@gmail.com', '0981667109', N'Trái cây'),
    (9, N'Ba Vì Dairy Farm', 'baividairyfarm@gmail.com', '0981179253', N'Sữa chua Ba Vì');

-- Insert vào ITEM
INSERT INTO ITEM(ItemID, ItemName, TypeItem, SupplyDate, SupplierID) VALUES
    (1, N'Hạt cà phê', N'Thực phẩm', '2024-01-15', 1),
    (2, N'Lá trà', N'Thực phẩm', '2023-12-30', 6),
    (3, N'Si-rô', N'Thực phẩm', '2024-02-21', 2),
    (4, N'Sữa tươi', N'Đồ uống', '2024-02-10', 4),
    (5, N'Sữa chua', N'Đồ uống', '2024-02-03', 9),
    (6, N'Chocolate', N'Thực phẩm', '2024-03-10', 3),
    (7, N'Trái cây', N'Thực phẩm', '2024-03-12', 8),
    (8, N'Đường', N'Thực phẩm', '2024-03-07', 7),
    (9, N'Nước ép đóng hộp', N'Thực phẩm', '2023-11-02', 5),
    (10, N'Đá', N'Thực phẩm', '2024-03-14', 7),
    (11, N'Trái cây sấy khô', N'Thực phẩm', '2023-12-22', 8);

-- Insert vào PRODUCT
INSERT INTO PRODUCT(ProductID, Price, TypeProduct, Size, ProductName) VALUES
    (1, 35000, N'Đồ uống', 'S', N'Cà phê đen'),
    (2, 32000, N'Đồ uống', 'S', N'Cà phê nâu'),
    (3, 35000, N'Đồ uống', 'M', N'Latte'),
    (4, 30000, N'Đồ uống', 'S', N'Bạc xỉu'),
    (5, 28000, N'Đồ uống', 'S', N'Cà phê cốt dừa'),
    (6, 15000, N'Đồ uống', 'L', N'Trà xanh'),
    (7, 30000, N'Đồ uống', 'L', N'Trà ô long'),
    (8, 32000, N'Đồ uống', 'L', N'Trà đen');

-- Insert vào ORDERS
INSERT INTO ORDERS(OrderID, OrderDate, ShipVia, TotalPrice, StatusOrders, LocationOrders, CustomerID, StaffID) VALUES
    (122, '2023-06-15', 20000, 170000, N'Đã hoàn thành', N'Cầu Giấy', 11, 22),
    (123, '2023-06-15', 30000, 128000, N'Đã hoàn thành', N'Thanh Xuân', 2, 24),
    (124, '2023-06-15', 20000, 50000, N'Đã hoàn thành', N'Cầu Giấy', 12, 26),
    (125, '2023-06-16', 25000, 53000, N'Đã hoàn thành', N'Bắc Từ Liêm ', 6, 26),
    (127, '2023-06-16', 30000, 188000, N'Đã hoàn thành', N'Thanh Xuân', 14, 26),
    (128, '2023-06-16', 30000, 230000, N'Đã hoàn thành', N'Tây Hồ', 6, 24),
    (129, '2023-06-16', 20000, 95000, N'Đã hoàn thành', N'Cầu Giấy', 13, 22),
    (133, '2023-06-18', 30000, 75000, N'Đã hoàn thành', N'Tây Hồ', 15, 24),
    (136, '2023-06-19', 30000, 90000, N'Đã hoàn thành', N'Ba Đình', 3, 24),
    (139, '2023-06-15', 20000, 170000, N'Đã hoàn thành', N'Cầu Giấy', 1, 22),
    (140, '2023-06-15', 30000, 128000, N'Đã hoàn thành', N'Thanh Xuân', 5, 24);

INSERT INTO ORDERS(OrderID, OrderDate, TotalPrice, StatusOrders, LocationOrders, CustomerID, StaffID) VALUES
    (126, '2023-06-16', 145000, N'Đã hủy đơn', N'Cầu Giấy', 9, 26),
    (130, '2023-06-17', 15000, N'Đã hủy đơn', N'tại quán', 8, 22),
    (131, '2023-06-17', 15000, N'Đã hoàn thành', N'tại quán', 13, 22),
    (132, '2023-06-18', 32000, N'Đã hoàn thành', N'tại quán', 10, 26),
    (134, '2023-06-18', 62000, N'Đã hủy đơn', N'Mỹ Đình', 4, 22),
    (135, '2023-06-19', 350000, N'Đã hoàn thành', N'tại quán', 7, 24),
    (137, '2023-06-19', 90000, N'Đã hủy đơn', N'Hà Đông', 12, 22),
    (138, '2023-06-19', 350000, N'Đã hoàn thành', N'tại quán', 10, 28);

-- Insert vào ORDERDETAIL
INSERT INTO ORDERDETAIL(Price, Quantity, ProductID, OrderID) VALUES
    (15000, 10, 6, 122),
    (35000, 2, 1, 123),
    (28000, 1, 5, 123),
    (30000, 1, 7, 124),
    (28000, 1, 5, 125),
    (35000, 2, 1, 126),
    (30000, 1, 4, 126),
    (30000, 1, 7, 126),
    (15000, 1, 6, 126),
    (35000, 2, 3, 127),
    (30000, 2, 7, 127),
    (28000, 1, 5, 127),
    (35000, 4, 1, 128),
    (30000, 2, 7, 128),
    (15000, 1, 6, 129),
    (30000, 2, 4, 129),
    (15000, 1, 6, 130),
    (15000, 1, 6, 131),
    (32000, 1, 2, 132),
    (30000, 1, 4, 133),
    (15000, 1, 6, 133),
    (30000, 1, 7, 134),
    (32000, 1, 2, 134),
    (35000, 10, 3, 135),
    (30000, 1, 4, 136),
    (30000, 1, 7, 136),
    (32000, 1, 8, 137),
    (28000, 1, 5, 137),
    (30000, 1, 4, 137),
    (35000, 10, 3, 138),
    (15000, 10, 6, 139),
    (35000, 2, 1, 140),
    (28000, 1, 5, 140);

-- Insert vào USED_IN
INSERT INTO USED_IN(ProductID, ItemID, ItemWeight) VALUES
    (1, 1, '10 gram'),
    (1, 10, '50-100 gram'),
    (2, 4, '8-10 gram'),
    (2, 1, '50 ml'),
    (2, 10, '50-100 gram'),
    (3, 2, '5-7 gram'),
    (3, 4, '80-100 ml'),
    (3, 8, '25-30 ml'),
    (3, 10, '50-100 gram'),
    (3, 3, '5-15 ml'),
    (4, 1, '5 gram'),
    (4, 4, '50 ml'),
    (4, 8, '20-40 ml'),
    (4, 10, '50-100 gram'),
    (4, 6, '2-3 gram'),
    (5, 1, '5 gram'),
    (5, 4, '50 ml'),
    (5, 8, '20-40 ml'),
    (5, 3, '5-15 ml'),
    (5, 10, '50-100 gram'),
    (6, 2, '5-7 gram'),
    (6, 3, '5-7 ml'),
    (6, 8, '15-20 ml'),
    (6, 10, '50-100 gram'),
    (6, 9, '10 ml'),
    (7, 2, '5-7 gram'),
    (7, 7, '120 gram'),
    (7, 8, '40 ml'),
    (7, 10, '50-100 gram'),
    (7, 11, '10 gram'),
    (8, 2, '5-7 gram'),
    (8, 8, '20-35 ml'),
    (8, 6, '2-4 gram'),
    (8, 10, '50-100 gram');


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
join ITEM as I
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
--hàng tại quán) và tổng giá trị của tất cả đơn hàng là bao nhiêu, sắp xếp thứ tự tăng dần theo tổng
--giá trị đơn hàng.

select C.CustomerID,O.LocationOrders, count(O.OrderID) as totalOrders , sum(O.TotalPrice) as totalPrice
from CUSTOMER as C
join ORDERS as O
on O.CustomerID = C.CustomerID
where year(O.OrderDate) = 2023 and O.LocationOrders not in (N'tại quán')
group by C.CustomerID,O.LocationOrders
order by sum(O.TotalPrice)  

--10. Hãy cho biết những khách hàng đã mua sản phầm cà phê đen, cà phê nâu và bạc xỉu với số 
--lượng từ 3 trở lên trong một hoá đơn và cho biết hoá đơn mua từ ngày bao nhiêu, sắp xếp thứ
-- tự từ điển theo họ và tên.

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
	from PRODUCT as p) as Temp;

 --14. Lấy thông tin về đơn hàng, cùng với tổng giá trị đơn hàng và tỷ lệ giữa tổng giá trị đơn hàng so 
 --với phí giao hàng.
 select O.OrderID, O.OrderDate, O.TotalPrice,
		(select sum(OD.Price * OD.Quantity)
		 from ORDERDETAIL as OD
		 where OD.OrderID = O.OrderID
		) as TotalPriceProduct,
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



