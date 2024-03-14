insert into CUSTOMER(CustomerID, FirstName, LastName, PhoneNumber, Email)
Values
	(1,N'Anh',N'Nguyễn','0981651321','anhnguyen@gmail.com'),
	(2,N'Phương',N'Nguyễn','0981234321','phuongnguyen@gmail.com'),
	(3,N'Duy',N'Nguyễn','0985671321','duynguyen@gmail.com'),
	(4,N'Anh',N'Trần','0981697543','anhtran@gmail.com'),
	(5,N'Lê',N'Nguyễn','0981890654','lenguyen@gmail.com'),
	(6,N'Thúy',N'Lê','0981651752','thuyle@gmail.com'),
	(7,N'Hiếu',N'Lý','0981659654','lyhieu@gmail.com'),
	(8,N'Tuấn',N'Nguyễn','0981651234','nguyentuan@gmail.com'),
	(9,N'Vy',N'Phạm','0981617891','phamvy@gmail.com'),
	(10,N'Mai',N'Trịnh','0981651901','trinhmai@gmail.com');

insert into staff(StaffID,FirstName,LastName,PhoneNumber,RoleStaff,Salary,DateStartWork,Allowance)
values
	(10,N'Cảnh',N'Lữ','0981651211',N'quản lý',7500000,'2022-06-15',100000),
	(15,N'Ngọc',N'Phạm','0910651881',N'pha chế',4500000,'2023-06-25',150000),
	(21,N'Lụa',N'Trần','0981651974',N'pha chế',4000000,'2024-02-28',0),
	(17,N'Thái',N'Duy','0981351871',N'pha chế',4500000,'2023-07-01',20000),
	(22,N'Vy',N'Cầm','0981654443',N'thu ngân',5000000,'2024-01-30',0),
	(24,N'Thế',N'Anh','0981651416',N'thu ngân',5500000,'2023-08-10',100000),
	(26,N'Lợi',N'Lê','0981654276',N'thu ngân',5500000,'2023-06-20',300000);

insert into ORDERS(OrderID,OrderDate,TotalPrice,StatusOrders,LocationOrders,CustomerID,StaffID)
Values
	(122,'2023-06-15','150000',N'Đã hoàn thành',N'Cầu Giấy',1,22),
(123,'2023-06-15','98000',N'Đã hoàn thành',N'Thanh Xuân',2,24),
(124,'2023-06-15','30000',N'Đã hoàn thành',N'Cầu Giấy',1,26),
(125,'2023-06-16','25000',N'Đã hoàn thành',N'Bắc Từ Liêm ',6,26),
(126,'2023-06-16','145000',N'Đã hủy đơn',N'Cầu Giấy',9,26),
(127,'2023-06-16','158000',N'Đã hoàn thành',N'Thanh Xuân',4,26),
(128,'2023-06-16','200000',N'Đã hoàn thành',N'Tây Hồ',2,24),
(129,'2023-06-16','55000',N'Đã hoàn thành',N'Cầu Giấy',3,22),
(130,'2023-06-17','15000',N'Đã hủy đơn',N'tại quán',8,22),
(131,'2023-06-17','15000',N'Đã hoàn thành',N'tại quán',9,22),
(132,'2023-06-18','10000',N'Đã hoàn thành',N'tại quán',10,26),
(133,'2023-06-18','20000',N'Đã hoàn thành',N'Tây Hồ',5,24),
(134,'2023-06-18','72000',N'Đã hủy đơn',N'Mỹ Đình',6,22),
(135,'2023-06-19','350000',N'Đã hoàn thành',N'tại quán',7,24),
(136,'2023-06-19','60000',N'Đã hoàn thành',N'Ba Đình',3,24),
(137,'2023-06-19','90000',N'Đã hủy đơn',N'Hà Đông',2,22),
(138,'2023-06-19','350000',N'Đã hoàn thành',N'tại quán',10,24);


insert into SUPPLIER(SupplierID, SupplierName, Email, PhoneNumber, TradingName)
values
(1,N'Trung Nguyên','cftrungnguyen@gmail.com','0987412679','Hạt cà phê arabica'),
(2,N'Monin','monin@gmail.com','0935672670',N'Siro hoa quả'),
(3,N'Nestle','nestle@gmail.com','0418419076','Chocolate'),
(4,N'Vinamilk','vinamilk@gmail.com','0982462678',N'Sữa tươi Vinamilk'),
(5,N'Tân Hiệp Phát','tanhiepphat@gmail.com','0915629271',N'Nước ép đóng hộp'),
(6,N'Đông Tăng','dongtang@gmail.com','0912791664',N'Lá trà Đông Tăng'),
(7,N'McCormick','mrcormick@gmail.com','0981610948',N'Đường McCormick'),
(8,N'Đại Thành','daithanh@gmail.com','0981667109',N'Trái cây'),
(9,N'Ba Vì Dairy Farm','baividairyfarm@gmail.com','098117925',N'Sữa chua Ba Vì');

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

Insert into PRODUCT(ProductID, Price, TypeProduct, Size, ProductName)
values
(1,35000,N'Đồ uống', 'S',N'Cà phê đen'),
(2,32000, N'Đồ uống', 'S',N'Cà phê nâu'),
(3,35000, N'Đồ uống', 'M',N'Latte'),
(4,30000, N'Đồ uống', 'S',N'Bạc xỉu'),
(5,28000, N'Đồ uống', 'S',N'Cà phê cốt dừa'),
(6,15000, N'Đồ uống', 'L',N'Trà xanh'),
(7,30000, N'Đồ uống', 'L',N'Trà ô long'),
(8,32000, N'Đồ uống', 'L',N'Trà đen');

--insert more
insert into staff(StaffID,FirstName,LastName,PhoneNumber,RoleStaff,Salary,DateStartWork,Allowance)
values
	(28,N'cẩm',N'Tú','0981651232',N'thu ngân',5500000,'2024-06-15',100000);

insert into ORDERS(OrderID,OrderDate,TotalPrice,StatusOrders,LocationOrders,CustomerID,StaffID)
Values
	(139,'2023-06-15','150000',N'Đã hoàn thành',N'Cầu Giấy',1,22),
	(140,'2023-06-15','98000',N'Đã hoàn thành',N'Thanh Xuân',2,24);

insert into ORDERS(OrderID,OrderDate,TotalPrice,StatusOrders,LocationOrders,CustomerID,StaffID)
Values
	(141,'2023-06-15','150000',N'Đã hoàn thành',N'Cầu Giấy',1,28);	