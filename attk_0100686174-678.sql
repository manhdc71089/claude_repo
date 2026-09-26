-- Script tao yeu cau bao hiem ATTK tu file: 22625_-0100686174-678.xlsx
-- !!! CHUA CO SS_ID: tim NHAP_SS_ID ben duoi va thay bang ss_id (chua thay thi script se bao loi, khong chay).
-- Hop dong nguyen tac: 05450/26AD/CN/001/KVTN - AGRIBANK CN HÒA THÀNH TÂY NINH (68 dong du lieu)
-- Ngay: dd/MM/yyyy -> so yyyymmdd; so tien gui lam tron den dong.
set serveroutput on size unlimited;
declare
    c_ss_id  constant number := NHAP_SS_ID;  -- <<< THAY NHAP_SS_ID BANG SS_ID TRUOC KHI CHAY
    b_so_id  number;
    b_ok     number := 0;
    b_loi    number := 0;

    procedure p(b_dong number, b_ten_mua nvarchar2, b_dchi_mua nvarchar2, b_cmt_mua varchar2, b_dthoai_mua varchar2, b_email_mua varchar2,
        b_ten nvarchar2, b_dchi nvarchar2, b_namsinh number, b_cmt varchar2, b_cmt_cu varchar2, b_dthoai varchar2, b_email varchar2,
        b_gioitinh nvarchar2, b_so_hdtg nvarchar2, b_tien_gui number, b_han_gui number, b_goi varchar2,
        b_gio_hl varchar2, b_ngay_hl number, b_gio_kt varchar2, b_ngay_kt number, b_nhan_tbao varchar2, b_so_yc_g varchar2)
    is
    begin
        b_so_id := 0;
        kt_abic.pbh_ba_attk.yc_nh(c_ss_id, b_so_id, '', b_so_yc_g, '',
            b_ten_mua, b_dchi_mua, b_cmt_mua, b_dthoai_mua, b_email_mua,
            b_ten, b_dchi, b_namsinh, b_cmt, b_cmt_cu, b_dthoai, b_email,
            b_gioitinh, b_so_hdtg, b_tien_gui, b_han_gui, b_goi,
            b_gio_hl, b_ngay_hl, b_gio_kt, b_ngay_kt,
            'K', 'K', 'K', '', '', '', b_nhan_tbao, '', 'C');
        b_ok := b_ok + 1;
        dbms_output.put_line('Dong ' || b_dong || ' OK - so_id: ' || b_so_id);
    exception when others then
        rollback;
        b_loi := b_loi + 1;
        dbms_output.put_line('Dong ' || b_dong || ' LOI - ' || b_so_hdtg || ': ' || sqlerrm);
    end;
begin
    -- Dong 2: Phạm Lan Duy
    p(2, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Phạm Lan Duy', N'109- Âu Cơ- Hiệp AnHiệp Tân- Hòa ThànhTây Ninh- 0918848260', 19801031, '072180002997', '', '0918848260', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709025549825', 3300000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 3: Nguyễn Thị Thu Ngân
    p(3, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thị Thu Ngân', N'Cẩm Thắng-xã Thạnh Đức-Tây Ninh0387018534', 19820918, '072182006623', '', '0387018534', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709299657143', 2550000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 4: Nguyễn Trần Sơn An
    p(4, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Trần Sơn An', N'72 Cẩm Thắng- Cẩm GiangGò Dầu- Tây Ninh--0374708704', 19911013, '072091005043', '', '0374708704', 'nguyenttm-hcm@abic.com.vn',
      N'Nam', N'5709382139492', 2500000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 5: Phạm Tấn Nhứt
    p(5, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Phạm Tấn Nhứt', N'Trường Lưu- Trường ĐôngTX Hòa Thành- Tây Ninh', 19890819, '072089015164', '', '0969357316', 'nguyenttm-hcm@abic.com.vn',
      N'Nam', N'5709511749424', 2500000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 6: Nguyễn Văn Trường
    p(6, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Văn Trường', N'KP Long Kim- P Hòa ThànhTây Ninh', 19940302, '087094000014', '', '0907835535', 'nguyenttm-hcm@abic.com.vn',
      N'Nam', N'5709528228922', 2400000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 7: Lê Thị Ngọc Hạnh
    p(7, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Lê Thị Ngọc Hạnh', N'20/5 Long Kim LTT HTTN0375728075', 19630101, '072163000412', '', '0375728075', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709152341823', 2300000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 8: Đỗ Thị Như Thu
    p(8, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Đỗ Thị Như Thu', N'1036 Trường Ân- Trường Đông Thị xã Hòa Thành- Tây Ninh', 19750101, '072175001530', '', '0983985727', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709233461049', 2300000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 9: Huỳnh Kim Phương
    p(9, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Huỳnh Kim Phương', N'7 Tổ 55 Hiệp Hòa- Hiệp Tân Thị xã Hòa Thành- Tây Ninh--0907084866', 19770101, '072177004270', '', '0907084866', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709138701976', 2300000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 10: Võ Thị Diệu Hiền
    p(10, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Võ Thị Diệu Hiền', N'F8/4 Khu phố 2- phường Long Hoa Thị xã Hòa Thành- Tây Ninh', 19630101, '072163000385', '', '0989934939', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709097034818', 2290000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 11: Thượng Thị Ngọc ánh
    p(11, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Thượng Thị Ngọc ánh', N'ấp Khởi Hà- xã Cầu Khởi Tỉnh Tây Ninh 0915175509- Trường THCS Cầu Khởi', 19811225, '072181003228', '', '0915175509', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709107383060', 2200000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 12: Nguyễn Phương Thi
    p(12, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Phương Thi', N'Số 14 tổ 28 Trường Thọ- Trường Hòa Thị xã Hòa Thành- Tây Ninh0982921657', 19760411, '072176006367', '', '0982921657', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709422764676', 2100000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 13: Dương Lê Thị Ngọc ánh
    p(13, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Dương Lê Thị Ngọc ánh', N'20/5 Long Kim phường Hòa Thành- Tây Ninh', 19850810, '072185001408', '', '0963179754', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709349592988', 2100000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 14: Cao Thị Ngọc Sơn
    p(14, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Cao Thị Ngọc Sơn', N'18 Tổ 18 Long Mỹ- Long Thành Bắc Thị xã Hòa Thành- Tây Ninh--0398827665', 19611015, '072161007353', '', '0398827665', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056582098', 2050000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 15: Lê Duy Khương
    p(15, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Lê Duy Khương', N'2/33B Khu phố 3- phường Long Hoa Thị xã Hòa Thành- Tây Ninh--0937263630', 19810207, '072081001282', '', '0937263630', 'nguyenttm-hcm@abic.com.vn',
      N'Nam', N'5709286254992', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 16: Lê Trần Kim Yến
    p(16, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Lê Trần Kim Yến', N'số 9 Hiệp An- Hiệp Tân Thị xã Hòa Thành- Tây Ninh--0382419626', 19800710, '072180003298', '', '0382419626', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709173714085', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 17: Nguyễn Thị Mỹ Hạnh
    p(17, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thị Mỹ Hạnh', N'54/2F KP4- phường Long HoaThị xã Hòa Thành- Tây Ninh0916686527', 19780104, '072178000472', '', '0916686527', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709328598006', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 18: Võ Thị Ngọc Mai
    p(18, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Võ Thị Ngọc Mai', N'Ninh Phú Bàu Năng Dương Minh ChâuTây Ninh-0356897242', 19821015, '072182014479', '', '0356897242', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709484896914', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 19: Vũ Thị Phương
    p(19, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Vũ Thị Phương', N'Long Bình- phường Hòa Thành- Tây Ninh', 19640109, '072164006573', '', '0332727276', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056578918', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 20: Lê Văn Quang
    p(20, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Lê Văn Quang', N'Tổ 6 Suối ông ĐìnhTrà Vong- Tân Biên 0987482551', 19720101, '072072001108', '', '0987482551', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056583030', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 21: Trần Thị Phước
    p(21, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Trần Thị Phước', N'Long Trung- Long Thành Trung- Hòa Thành Tây Ninh- 0784431037', 19730101, '072173005291', '', '0784431037', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709272437794', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 22: Nguyễn Trịnh Ngọc Mai
    p(22, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Trịnh Ngọc Mai', N'5/7 Trường Ân Trường Đông Hòa ThànhTây Ninh-0812489652', 20060703, '072306009748', '', '0812489652', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709491132597', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 23: Hồ Văn Lành
    p(23, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Hồ Văn Lành', N'Long Bình- Long Thành Nam- Hòa ThànTây Ninh -0977747275', 19750512, '072075010998', '', '0977747275', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709242682448', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 24: Nguyễn Thị Thanh
    p(24, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thị Thanh', N'KP2- Long Hoa- TX Hòa ThànhTây Ninh', 19630422, '075163004667', '', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709009199517', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 25: Lê Hồng Thiên Trang
    p(25, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Lê Hồng Thiên Trang', N'KP1 P.Long Hoa- Hòa Thành- Tây Ninh', 19660101, '072166011240', '', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709009005596', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 26: Biện Kim Khiết
    p(26, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Biện Kim Khiết', N'Trường Giang Trường Tây Thị xã Hòa Thành- Tây Ninh--0945286820', 19770712, '072177007567', '', '0945286820', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709225703168', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 27: Nguyễn Hữu Hiền
    p(27, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Hữu Hiền', N'51 tổ 11 Long Mỹ Long Thành BắcHòa Thành- Tây Ninh0909476699', 19711212, '072071003481', '', '0909476699', 'nguyenttm-hcm@abic.com.vn',
      N'Nam', N'5709542584083', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 28: Dương Thị Liên
    p(28, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Dương Thị Liên', N'Long Thới- Long Thành TrungTX Hòa Thành- Tây Ninh', 19780629, '080178008027', '', '0908830897', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709257293874', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 29: Huỳnh Trung Hồng
    p(29, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Huỳnh Trung Hồng', N'G418 Long Đại Long P Long HoaTây Ninh', 19630101, '072063000098', '', '0908742701', 'nguyenttm-hcm@abic.com.vn',
      N'Nam', N'5709294953425', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 30: Đỗ Long Phi
    p(30, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Đỗ Long Phi', N'4/40A Trường Phú T.Đông', 19680227, '072168002228', '', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709223817408', 27100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 31: Nguyễn Ngọc Phượng
    p(31, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Ngọc Phượng', N'27- Hiệp An- Phường Thanh Điềntỉnh Tây Ninh', 19601220, '072160001123', '', '0913884214', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709025471432', 23000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 32: Nguyễn Thị Thanh Mai
    p(32, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thị Thanh Mai', N'Khu Phố Bình Linh Phường Ninh Thạnh- Tỉnh Tây Ninh', 19620101, '072172008979', '', '0337372390', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056579261', 17950000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 33: Nguyễn Thị Mỹ Hạnh
    p(33, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thị Mỹ Hạnh', N'E 55/9 Khu phố 1- phường Long Hoa Thị xã Hòa Thành- Tây Ninh--0972966629', 19731120, '072173005639', '', '0972966629', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709108207653', 17100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 34: Trần Thị Kim Nga
    p(34, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Trần Thị Kim Nga', N'84 Long Tân- Long Thành Bắc Thị xã Hòa Thành- Tây Ninh', 19651210, '072165007725', '', '0974095381', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056582256', 12650000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 35: Nguyễn Thị Thu Liễu
    p(35, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thị Thu Liễu', N'F 4/12B Tổ 21 Long thời LTB HTTN', 19720101, '072172008819', '', '0937831463', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709173109072', 11100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 36: Huỳnh Thị Diễm Thùy
    p(36, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Huỳnh Thị Diễm Thùy', N'67 Nguyễn V Linh- Long Thời- LTB--0977467519', 19740425, '068174005668', '', '0977467519', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709188575250', 9250000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 37: Lê Thị Lệ ánh
    p(37, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Lê Thị Lệ ánh', N'20/1C Khu phố 4- phường Long Hoa Thị xã Hòa Thành- Tây Ninh0979445857', 19600116, '072160000822', '', '0979445857', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056581783', 8700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 38: Lê Thị Mười
    p(38, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Lê Thị Mười', N'H 7/5 Trường Cửu P Long HoaTây Ninh --0976512409', 19800101, '072180001003', '', '0976512409', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056580428', 8000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 39: Lâm Kim Ngọc
    p(39, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Lâm Kim Ngọc', N'Khu phố Long Bình- Phường Hòa ThànhTỉnh Tây Ninh', 19800720, '072180002231', '', '0913955249', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709381258693', 7000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 40: Nguyễn Thị Thu Thảo
    p(40, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thị Thu Thảo', N'50/6 A Long Chí LTT HTTN01674395895', 19660101, '072166000633', '', '0374395895', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056578841', 6780000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 41: Nguyễn Thị Hồng Cẩm
    p(41, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thị Hồng Cẩm', N'Ninh Thuận Bàu Năng Dương Minh ChâuTây Ninh-0868648673', 19850515, '072185012498', '', '0868648673', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709483281394', 6500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 42: Phan Lệ Thanh
    p(42, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Phan Lệ Thanh', N'78/12C KP1 P Long Hoa Tây Ninh', 19650910, '072165006655', '', '0977713035', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709150341958', 6000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 43: Trần Kim Tiền
    p(43, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Trần Kim Tiền', N'Khu phố 4- Long HoaTX Hòa Thành Tây Ninh', 19730101, '072173007370', '', '0907907075', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709133878724', 6000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 44: Trần Thị Hoa Tiền
    p(44, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Trần Thị Hoa Tiền', N'106 Nguyễn Bỉnh KhiêmKhu Phố 3- TT Hòa Thành0945266617', 19720611, '072172007979', '', '0945266617', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709178344756', 5300000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 45: Nguyễn Thị Ngọc Cúc
    p(45, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thị Ngọc Cúc', N'37/13B Tổ 6 KP Long Thới- Hòa ThànhTây Ninh', 19651105, '072165003580', '', '0353427349', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056580674', 5040000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 46: Châu Thị Ngọc
    p(46, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Châu Thị Ngọc', N'56 tổ 10 KP3Long Hoa Tây Ninh', 19660101, '072166000400', '', '0909570227', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709142310890', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 47: Phan Thị Thùy Trang Chị
    p(47, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Phan Thị Thùy Trang Chị', N'42 An Dương Vươngphường Long Hoa- Tây Ninh', 19820101, '087182008057', '', '0827217315', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709541647371', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 48: Phạm Thị Mỹ
    p(48, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Phạm Thị Mỹ', N'E 4/6B  Hiệp Long P.Thanh ĐiềnTây Ninh 0972121757', 19730920, '072173009942', '', '0972121757', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056581135', 4700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 49: Tô Anh Tuấn
    p(49, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Tô Anh Tuấn', N'5 Long Thành- Phường Long Thành Trung- Hòa Thành Tây Ninh', 19820929, '072082003251', '', '0988757952', 'nguyenttm-hcm@abic.com.vn',
      N'Nam', N'5709471223247', 4600000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 50: Võ Thị Thúy Quyên
    p(50, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Võ Thị Thúy Quyên', N'32 Khu phố 5- Phường 1 Tp Tây Ninh', 19771002, '072177001351', '', '0902688630', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709025570824', 4590000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 51: Phạm Thị Ngọc Sáng
    p(51, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Phạm Thị Ngọc Sáng', N'G 4/8 Long Đại P Long Hoa Tây Ninh', 19641024, '072164000099', '', '0909439440', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709219807225', 3105036700, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 52: Nguyễn Thị Kiều
    p(52, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thị Kiều', N'31 Trường An- Trường Tây- Hòa ThànhTây Ninh 0378089324', 19790919, '072179001745', '', '0378089324', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709192155159', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 53: Phạm Thị Kiều Trang
    p(53, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Phạm Thị Kiều Trang', N'1139 CMT8- Phường Tân NinhTây Ninh', 19671229, '072167006304', '', '0937431559', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709000540385', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 54: Phan Thị Thu Duyên
    p(54, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Phan Thị Thu Duyên', N'Hiệp Long- Hiệp TânTX Hòa Thành- Tây Ninh', 19790119, '072179006613', '', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709482458990', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 55: Mai Chí Thành
    p(55, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Mai Chí Thành', N'111/11 Long Thành- Long Thành TrungHòa Thành- Tây Ninh', 19690222, '072069009894', '', '0986543468', 'nguyenttm-hcm@abic.com.vn',
      N'Nam', N'5709319102844', 1500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 56: Nguyễn Thanh Bay
    p(56, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thanh Bay', N'Ô 3/129B Trường Lưu- Trường Đông Thị xã Hòa Thành- Tây Ninh', 19761023, '072176003604', '', '0982319347', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709279085459', 1200000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 57: Nguyễn Thanh Nguyên
    p(57, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thanh Nguyên', N'69 Võ Thị Sáu- Khu phố 13 phường Tân Ninh- Tây Ninh', 19620503, '072162001600', '', '0907907071', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709167391572', 1200000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 58: Bùi Thị Ngọc Oanh
    p(58, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Bùi Thị Ngọc Oanh', N'74 Cẩm Thắng- xã Thạnh ĐứcTây Ninh 0398481419', 19820416, '072182002819', '', '0398481419', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709193136253', 5500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 59: Tô Thị Hổng
    p(59, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Tô Thị Hổng', N'2/93 Long Hải phường Long Hoa- Tây Ninh', 19690101, '072169003381', '', '0352839485', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709270789698', 4580000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 60: Huỳnh Thị Thuý Nga
    p(60, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Huỳnh Thị Thuý Nga', N'Ô2/64 Tổ 12 Trường Lưu- Trường Đông Thị xã Hòa Thành- Tây Ninh', 19690713, '072169010375', '', '0982322670', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056582933', 4500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 61: Phan Thị Tuyết
    p(61, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Phan Thị Tuyết', N'4/5B Long Kim P Hòa Thành Tây Ninh', 19770101, '072177007692', '', '0378950805', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056579314', 4467950700, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 62: Lê Thị Thu Dung
    p(62, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Lê Thị Thu Dung', N'456 Long Chí- Long Thành Trung- Hòa Thành- Tây Ninh', 19850616, '072185000060', '', '0938052752', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056579534', 4330000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 63: Nguyễn Thị Thảo
    p(63, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Thị Thảo', N'Cẩm Long- Cẩm Giang Gò Dầu- Tây Ninh-0396969972', 19760419, '072176005523', '', '0396969972', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709463355955', 4100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 64: Trịnh Thị Tuyết
    p(64, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Trịnh Thị Tuyết', N'An Đước An Tịnh-Tây Ninh 0365653411', 19720229, '072172005674', '', '0365653411', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709084771053', 3886900500, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 65: Huỳnh Thị Thu Hương
    p(65, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Huỳnh Thị Thu Hương', N'Trường An- Trường Tây-Hòa ThànhTây Ninh 0342245295', 19720424, '072172008261', '', '0342245295', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709352186570', 3800000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 66: Nguyễn Văn Duyên
    p(66, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Nguyễn Văn Duyên', N'11/46 Long yên- Long Thành NamHTTN--0908462047', 19660510, '072066007667', '', '0908462047', 'nguyenttm-hcm@abic.com.vn',
      N'Nam', N'5709147469737', 2925640000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 67: Bùi Thị Ngọc Oanh
    p(67, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Bùi Thị Ngọc Oanh', N'75 Cẩm Thắng- xã Thạnh ĐứcTây Ninh 0398481419', 19830416, '072182002819', '', '0398481419', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709193136253', 1235458449, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 68: Huỳnh Thị Thuý Nga
    p(68, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Huỳnh Thị Thuý Nga', N'Ô2/64 Tổ 12 Trường Lưu- Trường Đông Thị xã Hòa Thành- Tây Ninh', 19700713, '072169010375', '', '0982322670', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056582933', 1076878954, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    -- Dong 69: Lê Thị Thu Dung
    p(69, N'AGRIBANK CN HÒA THÀNH TÂY NINH', N'Số 116, đường Huỳnh Thanh Mừng, Phường Long Hoa, Tây Ninh', '0100686174-678', '0764399994', 'nguyenttm-hcm@abic.com.vn',
      N'Lê Thị Thu Dung', N'457 Long Chí- Long Thành Trung- Hòa Thành- Tây Ninh', 19860616, '072185000060', '', '0938052752', 'nguyenttm-hcm@abic.com.vn',
      N'Nữ', N'5709056579534', 1040838159, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05450/26AD/CN/001/KVTN');
    dbms_output.put_line('Tong: ' || b_ok || ' thanh cong, ' || b_loi || ' loi');
end;
/
