--Bổ sung ràng buộc thiết lập giá trị mặc định bằng 1 cho cột SOLUONG và bằng 0 
--cho cột MUCGIAMGIA trong bảng CHITIETDATHANG 

ALTER TABLE CHITIETDONHANG
ADD CONSTRAINT default_soluong DEFAULT 1 FOR soLuong;

ALTER TABLE CHITIETDONHANG
ADD CONSTRAINT default_mucgiamgia DEFAULT 0 FOR mucGiamGia;

--Bổ sung cho bảng DONDATHANG ràng buộc kiểm tra ngày giao hàng và ngày 
--chuyển hàng phải sau hoặc bằng với ngày đặt hàng. 

ALTER TABLE DONDATHANG
ADD CONSTRAINT ngay_giao_chuyen_sau_hoac_bang_ngay_dat CHECK (ngayGiaoHang >= ngayDatHang AND ngayChuyenHang >= ngayDatHang);

--Bổ sung ràng buộc cho bảng NHANVIEN để đảm bảo rằng một nhân viên chỉ có thể 
--làm việc trong công ty khi đủ 18 tuổi và không quá 61 tuổi.

--c1
alter table NHANVIEN 
add constraint check_NHANVIEN_tuoi check (year(NHANVIEN.ngaySinh) < 2006 and year(NHANVIEN.ngaySinh) > 1963 );
--c2
ALTER TABLE NHANVIEN
ADD CONSTRAINT tuoi_nhan_vien CHECK (DATEDIFF(YEAR, ngaySinh, GETDATE()) >= 18 AND DATEDIFF(YEAR, ngaySinh, GETDATE()) <= 61);
