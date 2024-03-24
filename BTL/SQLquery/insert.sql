--insert in to CUSTOMER
insert into CUSTOMER( LastName, FirstName, PhoneNumber, Email)
Values
	(N'Anh',N'Nguyễn','0981651321','anhnguyen@gmail.com'),
	(N'Phương',N'Nguyễn','0981234321','phuongnguyen@gmail.com'),
	(N'Duy',N'Nguyễn','0985671321','duynguyen@gmail.com'),
	(N'Anh',N'Trần','0981697543','anhtran@gmail.com'),
	(N'Lê',N'Nguyễn','0981890654','lenguyen@gmail.com'),
	(N'Thúy',N'Lê','0981651752','thuyle@gmail.com'),
	(N'Hiếu',N'Lý','0981659654','lyhieu@gmail.com'),
	(N'Tuấn',N'Nguyễn','0981651234','nguyentuan@gmail.com'),
	(N'Vy',N'Phạm','0981617891','phamvyy@gmail.com'),
	(N'Mai',N'Trịnh','0961651901','trinhmai@gmail.com'),
	(N'Thanh',N'Lê','0961651752','thuylee@gmail.com'),
	(N'Dung',N'Lý','0961659654','lyhieuu@gmail.com'),
	(N'Vy',N'Nguyễn','0961651234','nguyenvy@gmail.com'),
	(N'Vy',N'Phạm','0961617891','phamvy@gmail.com'),
	(N'Mai',N'Trịnh','0961651901','trinhmaii@gmail.com');

--insert into STAFF
insert into staff(StaffID,LastName,FirstName,PhoneNumber,RoleStaff,Salary,DateStartWork,Allowance)
values
	(10,N'Cảnh',N'Lữ','0981651211',N'quản lý',7500000,'2022-06-15',100000),
	(15,N'Ngọc',N'Phạm','0910651881',N'pha chế',4500000,'2023-06-25',150000),
	(21,N'Lụa',N'Trần','0981651974',N'pha chế',4000000,'2024-02-28',0),
	(17,N'Thái',N'Duy','0981351871',N'pha chế',4500000,'2023-07-01',20000),
	(22,N'Vy',N'Cầm','0981654443',N'thu ngân',5000000,'2024-01-30',0),
	(24,N'Thế',N'Anh','0981651416',N'thu ngân',5500000,'2023-08-10',100000),
	(26,N'Lợi',N'Lê','0981654276',N'thu ngân',5500000,'2023-06-20',300000),
	(28,N'Cẩm',N'Tú','0981651232',N'thu ngân',5500000,'2024-02-15',100000),
	(31,N'Thai',N'Trần','0961651974',N'pha chế',4000000,'2024-02-28',0),
	(32,N'Thu',N'Duy','0961351871',N'pha chế',4500000,'2023-07-01',20000),
	(35,N'Vi',N'Cầm','0961654443',N'thu ngân',5000000,'2024-01-30',0),
	(37,N'Linh',N'Anh','0961651416',N'thu ngân',5500000,'2023-08-10',100000);

-- insert into SUPPLIER
insert into SUPPLIER(SupplierID, SupplierName, Email, PhoneNumber, TradingName)
values
(1,N'Trung Nguyên','cftrungnguyen@gmail.com','0987412679',N'Hạt cà phê arabica'),
(2,N'Monin','monin@gmail.com','0935672670',N'Siro hoa quả'),
(3,N'Nestle','nestle@gmail.com','0418419076','Chocolate'),
(4,N'Vinamilk','vinamilk@gmail.com','0982462678',N'Sữa tươi Vinamilk'),
(5,N'Tân Hiệp Phát','tanhiepphat@gmail.com','0915629271',N'Nước ép đóng hộp'),
(6,N'Đông Tăng','dongtang@gmail.com','0912791664',N'Lá trà Đông Tăng'),
(7,N'McCormick','mrcormick@gmail.com','0981610948',N'Đường McCormick'),
(8,N'Đại Thành','daithanh@gmail.com','0981667109',N'Trái cây'),
(9,N'Ba Vì Dairy Farm','baividairyfarm@gmail.com','0981179253',N'Sữa chua Ba Vì');

-- insert into ITEM
insert into ITEM(ItemID, ItemName, TypeItem, SupplyDate, SupplierID)
Values
(1,N'Hạt cà phê',N'Thực phẩm','2024-01-15',1),
(2,N'Lá trà',N'Thực phẩm','2023-12-30',6),
(3,N'Si-rô',N'Thực phẩm','2024-02-21',2),
(4,N'Sữa tươi',N'Đồ uống','2024-02-10',4),
(5,N'Sữa chua',N'Đồ uống','2024-02-03',9),
(6,N'Chocolate',N'Thực phẩm','2024-03-10',3),
(7,N'Trái cây',N'Thực phẩm','2024-03-12',8),
(8,N'Đường',N'Thực phẩm','2024-03-07',7),
(9,N'Nước ép đóng hộp',N'Thực phẩm','2023-11-02',5),
(10,N'Đá',N'Thực phẩm','2024-03-14',7),
(11,N'Trái cây sấy khô',N'Thực phẩm','2023-12-22',8);

-- insert into PRODUCT
insert into PRODUCT(ProductID, Price, TypeProduct, Size, ProductName)
values
(1,35000,N'Đồ uống', 'S',N'Cà phê đen'),
(2,32000, N'Đồ uống', 'S',N'Cà phê nâu'),
(3,35000, N'Đồ uống', 'M',N'Latte'),
(4,30000, N'Đồ uống', 'S',N'Bạc xỉu'),
(5,28000, N'Đồ uống', 'S',N'Cà phê cốt dừa'),
(6,15000, N'Đồ uống', 'L',N'Trà xanh'),
(7,30000, N'Đồ uống', 'L',N'Trà ô long'),
(8,32000, N'Đồ uống', 'L',N'Trà đen');

-- insert into ORDERS
insert into ORDERS(OrderID,OrderDate,ShipVia,TotalPrice,StatusOrders,LocationOrders,CustomerID,StaffID)
Values
(122,'2023-06-15',20000,170000,N'Đã hoàn thành',N'Cầu Giấy',11,22),
(123,'2023-06-15',30000,128000,N'Đã hoàn thành',N'Thanh Xuân',2,24),
(124,'2023-06-15',20000,50000,N'Đã hoàn thành',N'Cầu Giấy',12,26),
(125,'2023-06-16',25000,53000,N'Đã hoàn thành',N'Bắc Từ Liêm ',6,26),
(127,'2023-06-16',30000,188000,N'Đã hoàn thành',N'Thanh Xuân',14,26),
(128,'2023-06-16',30000,230000,N'Đã hoàn thành',N'Tây Hồ',6,24),
(129,'2023-06-16',20000,95000,N'Đã hoàn thành',N'Cầu Giấy',13,22),
(133,'2023-06-18',30000,75000,N'Đã hoàn thành',N'Tây Hồ',15,24),
(136,'2023-06-19',30000,90000,N'Đã hoàn thành',N'Ba Đình',3,24),	
(139,'2023-06-15',20000,170000,N'Đã hoàn thành',N'Cầu Giấy',1,22),
(140,'2023-06-15',30000,128000,N'Đã hoàn thành',N'Thanh Xuân',5,24);

insert into ORDERS(OrderID,OrderDate,TotalPrice,StatusOrders,LocationOrders,CustomerID,StaffID)
Values
(126,'2023-06-16',145000,N'Đã hủy đơn',N'Cầu Giấy',9,26),
(130,'2023-06-17',15000,N'Đã hủy đơn',N'tại quán',8,22),
(131,'2023-06-17',15000,N'Đã hoàn thành',N'tại quán',13,22),
(132,'2023-06-18',32000,N'Đã hoàn thành',N'tại quán',10,26),
(134,'2023-06-18',62000,N'Đã hủy đơn',N'Mỹ Đình',4,22),
(135,'2023-06-19',350000,N'Đã hoàn thành',N'tại quán',7,24),
(137,'2023-06-19',90000,N'Đã hủy đơn',N'Hà Đông',12,22),
(138,'2023-06-19',350000,N'Đã hoàn thành',N'tại quán',10,28);

--ORDERDETAIL
insert into ORDERDETAIL(Price,Quantity,ProductID,OrderID)
values
(15000,10,6,122),

(35000,2,1,123),
(28000,1,5,123),

(30000,1,7,124),

(28000,1,5,125),

(35000,2,1,126),
(30000,1,4,126),
(30000,1,7,126),
(15000,1,6,126),

(35000,2,3,127),
(30000,2,7,127),
(28000,1,5,127),

(35000,4,1,128),
(30000,2,7,128),

(15000,1,6,129),
(30000,2,4,129),

(15000,1,6,130),

(15000,1,6,131),

(32000,1,2,132),

(30000,1,4,133),
(15000,1,6,133),

(30000,1,7,134),
(32000,1,2,134),

(35000,10,3,135),

(30000,1,4,136),
(30000,1,7,136),

(32000,1,8,137),
(28000,1,5,137),
(30000,1,4,137),


(35000,10,3,138),

(15000,10,6,139),

(35000,2,1,140),
(28000,1,5,140);

-- insert into USED_IN
insert into USED_IN(ProductID,ItemID,ItemWeight)
values
(1,1,'10 gram'),
(1,10,'50-100 gram'),

(2,4,'8-10 gram'),
(2,1,'50 ml'),
(2,10,'50-100 gram'),

(3,2,'5-7 gram'),
(3,4,'80-100 ml'),
(3,8,'25-30 ml'),
(3,10,'50-100 gram'),
(3,3,'5-15 ml'),

(4,1,'5 gram'),
(4,4,'50 ml'),
(4,8,'20-40 ml'),
(4,10,'50-100 gram'),
(4,6,'2-3 gram'),

(5,1,'5 gram'),
(5,4,'50 ml'),
(5,8,'20-40 ml'),
(5,3,'5-15 ml'),
(5,10,'50-100 gram'),

(6,2,'5-7 gram'),
(6,3,'5-7 ml'),
(6,8,'15-20 ml'),
(6,10,'50-100 gram'),
(6,9,'10 ml'),

(7,2,'5-7 gram'),
(7,7,'120 gram'),
(7,8,'40 ml'),
(7,10,'50-100 gram'),
(7,11,'10 gram'),

(8,2,'5-7 gram'),
(8,8,'20-35 ml'),
(8,6,'2-4 gram'),
(8,10,'50-100 gram');

