﻿--CAU 5
INSERT INTO NHACUNGCAP VALUES
(N'0000000000', N'Tâm Bình', N'TAMBINH', N'Hà Nội', N'0000000000', N'1000', N'tambinh@gmail.com'),
(N'1111111111', N'Tâm Tình', N'TAMTINH', N'Hà Nội', N'1111111111', N'2000', N'tamtinh@gmail.com'),
(N'2222222222', N'Thâm Tình', N'THAMTINH', N'Hà Nội', N'2222222222', N'3000', N'thamtinh@gmail.com'),
(N'3333333333', N'Tân Binh', N'TANBINH', N'Hà Nội', N'3333333333', N'4000', N'tanbinh@gmail.com'),
(N'4444444444', N'VINAMILK', N'VINAMILK', N'Hà Nội', N'4444444444', N'5000', N'vinamilk@gmail.com');

INSERT INTO LOAIHANG VALUES
(N'0000000000', N'Nước uống'),
(N'1111111111', N'Đồ ăn vặt'),
(N'2222222222', N'Trái cây'),
(N'3333333333', N'Thịt'),
(N'4444444444', N'Rau củ'),
(N'5555555555', N'Sữa');

INSERT INTO MATHANG VALUES
(N'6666666666', N'Đùi lợn ủ muối', N'4444444444', N'3333333333', '20', N'Chiếc', '80000000'),
(N'0000000000', N'Coca cola', N'0000000000', N'0000000000', '1000', N'Chai', '10000'),
(N'3333333333', N'Oishi', N'2222222222', N'1111111111', '5000', N'Gói', '5000'),
(N'1111111111', N'Rau muống', N'4444444444', N'4444444444', '1000', N'Mớ', '17000'),
(N'4444444444', N'Cam', N'1111111111', N'2222222222', '1000', N'KG', '10000'),
(N'2222222222', N'Thịt bò', N'3333333333', N'3333333333', '5000', N'Gram', '12000'),
(N'5555555555', N'Sữa dâu', N'4444444444', N'5555555555', '10000', N'Hộp', '7000');

INSERT INTO NHANVIEN VALUES
(N'0000000000', N'Nguyễn Văn', N'A', '2000-06-15', '2024-01-01', N'Hà Nội', N'6666666666', '10000000', '0'),
(N'1111111111', N'Nguyễn Văn', N'B', '1993-11-14', '2023-06-01', N'Bắc Ninh', N'7777777777', '15000000', '1000000'),
(N'2222222222', N'Đỗ Thị', N'C', '1989-06-15', '2019-11-01', N'Hà Nội', N'8888888888', '20000000', '3000000'),
(N'3333333333', N'Vũ Văn', N'D', '2004-03-04', '2024-01-01', N'Bắc Giang', N'5555555555', '10000000', '1000000'),
(N'4444444444', N'Cao Trung', N'E', '2003-07-09', '2021-12-01', N'Nghệ An', N'9999999999', '15000000', '2000000'),
(N'5555555555', N'Nguyễn Văn', N'F', '1970-06-15', '1980-01-01', N'Hà Nội', N'1010101010', '40000000', '3'),
(N'6666666666', N'Lê Văn', N'G', '1970-07-15', '1980-02-01', N'Hà Nội', N'1212121212', '40000000', '3');

INSERT INTO KHACHHANG VALUES
(N'0000000000', N'A', N'Mua nước', N'Hà Nội', N'0000000000', N'1000', N'congtya@gamil.com'),
(N'1111111111', N'B', N'Mua thịt', N'Hà Nam', N'1111111111', N'2000', N'congtyb@gamil.com'),
(N'2222222222', N'C', N'Mua hoa quả', N'Bắc Ninh', N'2222222222', N'3000', N'congtyc@gamil.com'),
(N'3333333333', N'D', N'Mua rau', N'Hà Nội', N'3333333333', N'1000', N'congtyd@gamil.com'),
(N'4444444444', N'E', N'Mua đồ ăn vặt', N'Bắc Giang', N'4444444444', N'5000', N'congtye@gamil.com');

INSERT INTO DONDATHANG VALUES
('1', N'4444444444', N'2222222222', '2024-01-01', '2024-01-15', '2024-01-16', 'Hà Nội'),
('2', N'3333333333', N'3333333333', '2024-06-05', '2024-06-12', '2024-06-13', 'Hà Nội'),
('3', N'2222222222', N'4444444444', '2024-07-01', '2024-07-15', '2024-07-16', 'Hà Nội'),
('4', N'1111111111', N'1111111111', '2024-03-05', '2024-03-10', '2024-03-11', 'Hà Nội'),
('5', N'0000000000', N'0000000000', '2024-02-03', '2024-02-13', '2024-02-14', 'Hà Nội'),
('6', N'2222222222', N'2222222222', '2024-03-03', '2024-03-13', '2024-03-14', 'Hà Nội'),
('7', N'4444444444', N'2222222222', '2023-02-01', '2023-02-15', '2023-02-16', 'Hà Nội'),
('8', N'3333333333', N'3333333333', '2023-08-05', '2023-08-12', '2023-08-13', 'Hà Nội'),
('9', N'2222222222', N'2222222222', '2019-11-01', '2019-11-15', '2019-11-16', 'Hà Nội'),
('10', N'1111111111', N'2222222222', '2019-11-05', '2019-11-10', '2019-11-11', 'Hà Nội');

INSERT INTO CHITIETDONHANG VALUES
('5', N'0000000000', '10000', '700', '1.3'),
('4', N'1111111111', '17000', '1000', '2'),
('3', N'2222222222', '12000', '1000', '1.7'),
('2', N'3333333333', '5000', '1000', '1.1'),
('1', N'4444444444', '10000', '1000', '2'),
('6', N'5555555555', '7000', '5000', '2'),
('7', N'4444444444', '10000', '2000', '2'),
('8', N'3333333333', '5000', '2000', '1.1'),
('9', N'2222222222', '12000', '1000', '2'),
('10', N'2222222222', '12000', '1000', '1.7');