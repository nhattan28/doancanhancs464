ALTER TABLE QuaTrinhLuong
ADD NgayKetThuc DATETIME 
GO
UPDATE QuaTrinhLuong
SET NgayKetThuc = NgayCapNhat

GO
ALTER TABLE QuaTrinhCongTac
ADD NgayKetThuc DATETIME 
GO
UPDATE QuaTrinhCongTac
SET NgayKetThuc = NgayCapNhat

GO
select * from QuaTrinhCongTac