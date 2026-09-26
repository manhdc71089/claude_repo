-- Script tao yeu cau bao hiem ATTK tu file: 13901_-_0100686174-676.xlsx
-- !!! CHUA CO SS_ID: tim NHAP_SS_ID ben duoi va thay bang ss_id (chua thay thi script se bao loi, khong chay).
-- Hop dong nguyen tac: 05540/26AD/CN/001/KVTN - AGRIBANK CN CHÂU THÀNH  TÂY NINH (55 dong du lieu)
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
    -- Dong 2: Hoàng Đình Minh Cảnh
    p(2, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Hoàng Đình Minh Cảnh', N'ấp 1- xã Châu Thành- Tây Ninh', 19761226, '072076006191', '', '0902440403', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706390736311', 2350000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 3: Phạm Thị Ngọc Hướng
    p(3, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Phạm Thị Ngọc Hướng', N'Suối Muồn- Châu Thành- Tây Ninh0981235297', 19900101, '072190000359', '', '0981235297', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706313288696', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 4: Nguyễn Trung Hiếu
    p(4, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Trung Hiếu', N'UBND xã Đồng KhởiHuyện Châu Thành – Tỉnh Tây Ninh', 19670729, '072067002903', '', '0907972990', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706113473243', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 5: Phạm Thị Diệu
    p(5, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Phạm Thị Diệu', N'M75/2 Hiệp Hòa- Hiệp Tân- Hòa Thành- Tây Ninh', 19701129, '072170002688', '', '0912888380', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706010104775', 27900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 6: Phan Thị Tuyết Mai
    p(6, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Phan Thị Tuyết Mai', N'An Lộc An Cơ Châu Thành Tây Ninh', 19840701, '072184007209', '', '0909415724', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706155111578', 11200000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 7: Ngô Thị Mai Hoa
    p(7, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Ngô Thị Mai Hoa', N'Phước Lợi Phước Vinh Châu Thành Tây Ninh', 19840622, '072184004981', '', '0979853124', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706227215385', 11163012900, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 8: Vũ Thị Hồng Nga
    p(8, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Vũ Thị Hồng Nga', N'ấp 1- xã Châu Thành- Tây Ninh', 19880112, '072188013726', '', '0933124427', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706470153445', 8500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 9: Dương Văn Hỏi
    p(9, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Dương Văn Hỏi', N'Bến Cầu  Hòa Hội Tây Ninh', 19600615, '072060000380', '', '0967912357', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706142415365', 6600000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 10: Trương Thị Bích Liên
    p(10, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Trương Thị Bích Liên', N'Phước Lợi Phước Vinh Châu Thành Tây Ninh', 19810101, '072181001262', '', '0375159966', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706309549032', 6000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 11: Lê Thị Oanh
    p(11, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Lê Thị Oanh', N'Bến Cầu Hòa HộiTây Ninh', 19660820, '072166001941', '', '01693299665', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706235969980', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 12: Nguyễn Thị Kiều Liên
    p(12, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Kiều Liên', N'Bình Lợi Hảo Đước Châu Thành Tây Ninh', 19720525, '072172004550', '', '0916402033', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706196880348', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 13: Lê Thị Hiền Thảo
    p(13, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Lê Thị Hiền Thảo', N'Bến Cầu Hòa HộiTây Ninh', 19810925, '072181006202', '', '0989114198', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706216846933', 4856797300, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 14: Trần Võ Tuấn
    p(14, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Trần Võ Tuấn', N'ấp Trường - Xã Hảo ĐướcHuyện Châu Thành - Tỉnh Tây Ninh', 19740508, '072074004476', '', '0989767075', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706073803928', 4711368800, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 15: Nguyễn Thị Kim Thoa
    p(15, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Kim Thoa', N'NHNo Châu Thành TNHuyện  Châu Thành – Tỉnh Tây Ninh', 19821007, '072182009745', '', '0907588995', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706009796963', 4056500000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 16: Đặng Thị Thu Hiền
    p(16, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Đặng Thị Thu Hiền', N'Phước Lập Phước Vinh Châu ThànhTây Ninh', 19870105, '072187005173', '', '0978092572', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706224787741', 4000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 17: Mai Thanh Nhàn
    p(17, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Mai Thanh Nhàn', N'Thành Tây Ninh ĐiềnTây Ninh', 19680101, '072068004222', '', '0977744553', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706073787588', 3900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 18: Nguyễn Thị Hiểu
    p(18, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Hiểu', N'ấp Thanh Hùng Xã Thanh ĐiềnHuyện Châu Thành Tỉnh Tây Ninh', 19641120, '072164002340', '', '0984548125', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706073836509', 3700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 19: Nguyễn Thanh Chi
    p(19, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thanh Chi', N'Bắc Bến Sỏi Ninh Điền Tây Ninh', 19721230, '072072001001', '', '0387990243', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706166957692', 3600000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 20: Ngô Thị Nhã
    p(20, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Ngô Thị Nhã', N'KP2 - Thị Trấn  Châu Thành Châu Thành- Tây Ninh', 19600420, '072160006805', '', '0975676387', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706190044318', 3500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 21: Nguyễn Thành Văn
    p(21, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thành Văn', N'An Điền- Châu Thành- Tây Ninh', 19610101, '072061006396', '', '0392480354', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706108146603', 3500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 22: Phạm Thị Hà
    p(22, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Phạm Thị Hà', N'Tam Hạp- Châu Thành- Tây Ninh', 19680101, '072168009556', '', '0982499358', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706093632519', 3200000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 23: Nguyễn Thị Chuyện
    p(23, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Chuyện', N'Vịnh An Cơ Châu Thành Tây Ninh', 19720101, '072175005029', '', '0908523054', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706038904775', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 24: Nguyễn Thị Liên
    p(24, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Liên', N'Bình Lợi Hảo Đước Châu Thành TâyNinh', 19770401, '072177005319', '', '0397042577', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706484762450', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 25: Võ Thị Ngọc Phượng
    p(25, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Võ Thị Ngọc Phượng', N'3/117B Trường Phú- Trường Đông Thị xã Hòa Thành- Tây Ninh--0938474736', 19621020, '072162010007', '', '0938474736', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706056510069', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 26: Phạm Văn Tặng
    p(26, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Phạm Văn Tặng', N'Thanh Sơn- Thanh Điền- Tây Ninh', 19680101, '072068000734', '', '0937525780', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706149314780', 2550000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 27: Đỗ Thị Diễm Linh
    p(27, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Đỗ Thị Diễm Linh', N'Phước An Phước Vinh Tây Ninh', 19910713, '072191004035', '', '0362422846', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706259475567', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 28: Lê Thị Duyên
    p(28, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Lê Thị Duyên', N'Gò Nổi - Ninh Điền Tây Ninh', 19770101, '072177005755', '', '0976523175', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706170995511', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 29: Nguyễn Thị Thảo
    p(29, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Thảo', N'An Lộc Hảo Đước Tây Ninh', 19750101, '072175004887', '', '0385104239', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706257518602', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 30: Bưng Văn Mây
    p(30, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Bưng Văn Mây', N'Vịnh An Cơ Châu Thành Tây Ninh', 19710815, '072071011204', '', '0962899952', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706039992690', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 31: Trần Văn Xá
    p(31, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Trần Văn Xá', N'Tam Hạp- Châu Thành- Tây Ninh', 19620101, '072065007555', '', '0377736693', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706073836585', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 32: Trần Thị Gái
    p(32, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Trần Thị Gái', N'Thành Trung Ninh Điền Tây Ninh', 19740101, '072174004981', '', '0969412939', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706111888975', 1100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 33: Trần Thị Hồng
    p(33, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Trần Thị Hồng', N'Tam Hạp- Châu ThànhTây Ninh', 19900101, '072188012746', '', '0984733110', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706114368110', 1100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 34: Nguyễn Thị Hường
    p(34, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Hường', N'Xóm Mới 2 Trí BìnhChâu Thành Tây Ninh', 19730101, '072173004323', '', '0786579762', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706506540980', 1000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 35: Nguyễn Duy Tính
    p(35, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Duy Tính', N'ấp Hiệp Phước- xã Hòa Hội Tây Ninh', 19881228, '072088001787', '', '0965638648', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706421853169', 9700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 36: Nguyễn Thị Muội
    p(36, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Muội', N'Xóm Mới 2- Hảo Đước- Tây Ninh', 19960720, '072196010906', '', '0977987133', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706481160120', 5100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 37: Trần Hữu Phước
    p(37, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Trần Hữu Phước', N'ấp 1- xã Châu Thành- Tây Ninh 0972604328', 19731124, '072073006521', '', '0972604328', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706073836705', 3700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 38: Vũ Thị Vân
    p(38, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Vũ Thị Vân', N'Hiệp Phước  Hòa Hội Tây Ninh', 19670628, '037167000108', '', '0918987968', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706163034487', 3657000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 39: Lê Văn Tuấn
    p(39, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Lê Văn Tuấn', N'Thanh Hùng Thanh Điền Tây Ninh', 19601016, '072060000601', '', '0909386569', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706161763101', 3512000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 40: Nguyễn Thị Thúy Vân
    p(40, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Thúy Vân', N'Phước Lợi Phước Vinh Châu Thành TâyNinh', 19710804, '034171007935', '', '0386590696', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706106537078', 2400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 41: Nguyễn Thị Minh Thư
    p(41, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Minh Thư', N'Khu Phố 3 - Thị Trấn Châu ThànhHuyện Châu Thành - Tỉnh Tây Ninh', 19941031, '072194000670', '', '0986426193', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706169915944', 2340000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 42: Châu Thị Phượng
    p(42, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Châu Thị Phượng', N'Hiệp Bình Hòa Hội Tây Ninh', 19750101, '072175000502', '', '0368904569', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706325370855', 2300000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 43: Ngô Thị Ngọc Trang
    p(43, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Ngô Thị Ngọc Trang', N'Xóm Mới 1- Trí BìnhChâu Thành Tây Ninh', 19820704, '072182009296', '', '0373616326', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706462396263', 2198986900, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 44: Trần Thị Thanh Hiếu
    p(44, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Trần Thị Thanh Hiếu', N'ấp 3 Xã Châu Thành Tây Ninh', 19600729, '072160008282', '', '0909386554', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706154666590', 2040465800, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 45: Trần Thị Kim Loan
    p(45, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Trần Thị Kim Loan', N'Bình Long- Châu Thành- Tây Ninh', 19810101, '072181003269', '', '0386533133', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706259347590', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 46: Lê Thị Bo
    p(46, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Lê Thị Bo', N'Thành Nam Ninh Điền Tây Ninh', 19650101, '080165011665', '', '0944310052', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706539120228', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 47: Đỗ Văn Tuấn
    p(47, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Đỗ Văn Tuấn', N'Bến Cầu  Hòa Hội Tây Ninh', 19831007, '072083004680', '', '0385133736', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706073830684', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 48: Trần Văn Thiêm
    p(48, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Trần Văn Thiêm', N'ấp Tân Thành- xã Châu ThànhTây Ninh0935929204', 19621201, '072062002957', '', '0935929204', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706073840251', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 49: Đỗ Thị Thanh Huyền
    p(49, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Đỗ Thị Thanh Huyền', N'Trường Tiểu Học TT Châu Thành AHuyện  Châu Thành – Tỉnh Tây Ninh', 19780724, '038178011735', '', '0973846919', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706073834965', 1964954400, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 50: Nguyễn Thị Lạc  -- LUU Y: Excel trong ky han, tam lay 12
    p(50, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Lạc', N'ấp Xóm Mới 2 Xã Trí BìnhHuyện Châu Thành Tỉnh Tây Ninh', 19710909, '072171003621', '', '0396878419', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706073840718', 1950000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 51: Trần Thị Diệu  -- LUU Y: Excel trong ky han, tam lay 12
    p(51, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Trần Thị Diệu', N'An Điền - Xã An Bình Châu Thành - Tỉnh Tây Ninh', 19780615, '072178009676', '', '0985578475', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706073839197', 1950000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 52: Nguyễn Thị Thúy  -- LUU Y: Excel trong ky han, tam lay 12
    p(52, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Thúy', N'Phước Lập Phước VinhTây Ninh', 19801016, '072180003369', '', '0703678460', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706372758018', 1900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 53: Nguyễn Thị Khuân  -- LUU Y: Excel trong ky han, tam lay 12
    p(53, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Khuân', N'Thanh Hòa- Thanh Điền- Tây Ninh', 19630101, '072163003121', '', '0384157571', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706099324889', 1900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 54: Lê Thị Thúy Ngoanh  -- LUU Y: Excel trong ky han, tam lay 12
    p(54, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Lê Thị Thúy Ngoanh', N'Khu Phố 1 Phường 4 TP Tây Ninh TâyNinh', 19790207, '072179012315', '', '0389336872', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706017908429', 1646000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 55: Nguyễn Duy Tính  -- LUU Y: Excel trong ky han, tam lay 12
    p(55, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Duy Tính', N'ấp Hiệp Phước- xã Hòa Hội Tây Ninh', 19891228, '072088001787', '', '0965638648', 'giaonvk-hcm@abic.com.vn',
      N'Nam', N'5706421853169', 1278707402, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    -- Dong 56: Nguyễn Thị Muội  -- LUU Y: Excel trong ky han, tam lay 12
    p(56, N'AGRIBANK CN CHÂU THÀNH  TÂY NINH', N'Số 25, đường 781, ấp Tam Hạp, xã Châu Thành, tỉnh  Tây Ninh', '0100686174-676', '0933557775', 'giaonvk-hcm@abic.com.vn',
      N'Nguyễn Thị Muội', N'Xóm Mới 2- Hảo Đước- Tây Ninh', 19970720, '072196010906', '', '0977987133', 'giaonvk-hcm@abic.com.vn',
      N'Nữ', N'5706481160120', 1199417655, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05540/26AD/CN/001/KVTN');
    dbms_output.put_line('Tong: ' || b_ok || ' thanh cong, ' || b_loi || ' loi');
end;
/
