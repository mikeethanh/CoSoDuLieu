create table NHACUNGCAP 
(
 maCongty nvarchar(10) not null,
 tenCongty nvarchar(40) not null,
 tenGiaoDIch nvarchar(30),
 diaChi nvarchar(50),
 dienThoai nvarchar(15),
 fax nvarchar(15),
 email nvarchar(30),
 constraint pf_nhaCungCap_maCongTy primary key (maCongty)
)

create table KHACHHANG 
(
 maKhachHang nvarchar(10) not null,
 tenCongTy nvarchar(40) not null,
 tenGiaoDich nvarchar(30),
 diaChi nvarchar(50),
 dienThoai nvarchar(15),
 fax nvarchar(15),
 email nvarchar(30),
 constraint pk_khachHang_maKhachHang primary key (maKhachHang)
);

create table LOAIHANG 
(
 maLoaiHang nvarchar(10) not null,
 tenLoaiHang nvarchar(40),
 constraint pk_loaiHang_maLoaiHang primary key (maLoaiHang)
)

create table MATHANG 
(
 maHang nvarchar(10) not null,
 tenHang nvarchar(50) not null,
 maCongTy nvarchar(10),
 maLoaiHang nvarchar(10),
 soLuong int,
 donViTinh nvarchar(10),
 giaHang int,
 constraint pk_matHang_maHang primary key (maHang),
 constraint fk_matHang_maCongTy foreign key (maCongTy) 
 references NHACUNGCAP(maCongTy),
 constraint fk_matHang_maLoaiHang foreign key (maLoaiHang) 
 references LOAIHANG(maLoaiHang)
)

create table NHANVIEN 
(
 maNhanVien nvarchar(10) not null,
 ho nvarchar(20) not null,
 ten nvarchar(10) not null,
 ngaySinh datetime,
 ngayLamViec datetime,
 diaChi nvarchar(50),
 DienThoai nvarchar(15),
 luongCoBan int, 
 phuCap int,
 constraint pk_nhanVien_maNhanVien primary key (maNhanVien)
)

create table DONDATHANG 
(
 soHoaDon int not null,
 maKhachHang nvarchar(10),
 maNhanVien nvarchar(10),
 ngayDatHang datetime,
 ngayGiaoHang datetime,
 ngayChuyenHang datetime,
 noiGiaoHang nvarchar(50),
 constraint pk_donDatHang_soHoaDon primary key (soHoaDon),
 constraint fk_donDatHang_maKhachHang foreign key (maKhachHang)
 references KHACHHANG(maKhachHang),
 constraint fk_donDatHang_maNhanVien foreign key (maNhanVien)
 references NHANVIEN(maNhanVien)
)

create table CHITIETDONHANG 
(
 soHoaDon int not null,
 maHang nvarchar(10) not null,
 giaBan int,
 soLuong smallint,
 mucGiamGia numeric(2,1)
 constraint pk_chiTietDonHang_soHoaDon_maHang primary key (soHoaDon, maHang),
 constraint fk_chiTietDonHang_soHoaDon foreign key (soHoaDon)
 references DONDATHANG(soHoaDon),
 constraint fk_chiTietDonHang_maHang foreign key (maHang)
 references MATHANG(maHang)
)