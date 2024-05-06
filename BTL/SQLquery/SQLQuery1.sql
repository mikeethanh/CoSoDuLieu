-- 4.1 Cho biết mã, tên và giá các sản phẩm có giá trên 30000vnd.
select p.ProductID, p.ProductName, p.Price
from PRODUCT as p 
where p.Price > 30000
-- 4.2	Đưa ra mã, tên và loại nguyên liệu được nhập vào từ năm 2024 và thuộc loại 
select i.ItemID, i.ItemName, i.TypeItem
from ITEM as i
where i.TypeItem =N'Thực phẩm' 
-- 4.3 Cho biết tổng số đơn hàng và số tiền bán được trong tháng 6/2023.
-- 4.4 Hãy thống kế những nhân viên có lương cao nhất công ty theo từng vị trí làm việc
-- 4.5 Cho biết mã, tên sản phẩm và tên các nguyên liệu được sử dụng trong sản phẩm đó.
-- 4.6 Cho biết sản phẩm được sử dụng bằng nguyên liệu hạt cà phê.
-- 4.7 Cho biết sản phẩm bán chạy nhất trong năm 2023.
--4.8 Cho biết tên nhân viên, mức lương( tính cả trợ cấp ) và tổng số đơn hàng của từng 
--nhân viên với điều kiện nhân viên bắt đầu làm việc từ năm 2024 , sắp xếp nhân viên với thứ tự giảm dần theo họ và tên.
--4.9 Hãy cho biết mỗi khách hàng trong năm 2023 đã đặt bao nhiêu đơn hàng( ngoại trừ các đơn hàng tại quán ) và tổng giá 
--trị của tất cả đơn hàng là bao nhiêu, sắp xếp thứ tự tăng dần theo tổng giá trị đơn hàng.
--4.10 Hãy cho biết những khách hàng đã mua sản phầm cà phê đen, cà phê nâu và bạc xỉu với số lượng từ 3 trở lên và cho
--biết hoá đơn mua từ ngày bao nhiêu, sắp xếp thứ tự từ điển theo họ và tên.
--4.11 Hãy cho biết tên nguyên liệu và tên nhà cung cấp nguyên liệu mà cửa hàng đã nhập về trong năm 2024, sắp xếp 
--thứ tự giảm dần theo số nguyên liệu được sử dụng trong sản phẩm
--4.12 Lấy ra thông tin về  các nguyên liệu có cùng thể loại với nguyên liệu 'Hạt cà phê'.
--4.13 Lọc ra tên sản phẩm và tống số đơn hàng có chứa sản phẩm đó.
--4.14 Lấy thông tin về đơn hàng, cùng với tổng giá trị đơn hàng và tỷ lệ giữa tổng giá trị đơn hàng so với phí giao hàng.
--4.15 Hãy thống kê những khách hàng có tổng giá trị tất cả đơn đặt hàng trong tháng 6 lớn hơn 200000 và đơn đặt hàng không 
--chứa sản phẩm có giá rẻ nhất trong tất cả sản phẩm, sắp xếp thứ tự từ điển theo họ và tên.