-- Script tao yeu cau bao hiem ATTK tu file: 2086_-_0100686174-677.xlsx
-- Hop dong nguyen tac: 05542/26AD/CN/001/KVTN - AGRIBANK CN TÂN BIÊN TÂY NINH (79 dong du lieu)
-- Ngay: dd/MM/yyyy -> so yyyymmdd; so tien gui lam tron den dong.
set serveroutput on size unlimited;
declare
    c_ss_id  constant number := 26092678006431;
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
    -- Dong 2: Nguyễn Thị Phượng
    p(2, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Phượng', N'ấp 1- Xã Trà Vong-Tỉnh Tây Ninh', 19650514, '072165003466', '', '0948509211', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707356040126', 2500000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 3: Phùng Thị Huy
    p(3, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Phùng Thị Huy', N'ấp Trại Bí- Xã Thạnh Bình-Tỉnh Tây Ninh', 19740228, '072174001103', '', '0937062637', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707442236481', 2100000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 4: Lê Thị Thuỷ
    p(4, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Thị Thuỷ', N'ấp Tân Tiến- Xã Tân Lập Tỉnh Tây Ninh', 19801219, '000180000005', '', '0973523197', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707324474422', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 5: Ngô Thị Muối
    p(5, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Ngô Thị Muối', N'ấp 4- xã Tân Biên-Tỉnh Tây Ninh', 19700202, '072170010489', '', '0918383176', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707069966956', 24000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 6: Ngô Thị Thoại
    p(6, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Ngô Thị Thoại', N'ấp Thạnh Lộc- Xã Thạnh Bình Tỉnh Tây Ninh', 19641002, '072164011491', '', '0943154242', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707141173855', 10000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 7: Nguyễn Bá Tu
    p(7, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Bá Tu', N'ấp Tân Hòa- Xã Tân Lập Tỉnh Tây Ninh', 19620101, '000062000016', '', '0362708222', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707475862596', 10000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 8: Huỳnh Thị Thu Hiền
    p(8, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Huỳnh Thị Thu Hiền', N'ấp 2- xã Tân Biên- Tỉnh Tây Ninh', 19780815, '000178000003', '', '0913987242', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707133773766', 9000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 9: Ngô Văn út
    p(9, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Ngô Văn út', N'ấp 2- xã Tân Biên- tỉnh Tây Ninh', 19740810, '000074000006', '', '0913987242', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707162797733', 9000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 10: Đặng Thị Phượng
    p(10, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Đặng Thị Phượng', N'Khu Phố 4- xã Tân Biên-Tỉnh Tây Ninh', 19750414, '072175010075', '', '0913987252', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707069964398', 7000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 11: Lê Thị Mỹ Hiền
    p(11, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Thị Mỹ Hiền', N'ấp Thạnh Nam- Xã Tân Biên-  Tỉnh Tây Ninh', 19790909, '072179004777', '', '0908529062', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707122827756', 7000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 12: Nguyễn Văn Để
    p(12, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Văn Để', N'ấp Thạnh Lợi- Xã Thạnh Bình- Tỉnh Tây Ninh', 19640830, '072064003904', '', '0973927133', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707069968629', 7000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 13: Nguyễn Văn Lợi
    p(13, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Văn Lợi', N'ấp 1- Xã Trà Vong- Tỉnh Tây Ninh', 19860202, '072086006135', '', '0344444412', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707218311138', 6391071600, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 14: Phạm Thị Tôn
    p(14, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Phạm Thị Tôn', N'ấp Thạnh An- Xã Thạnh Bình- Tỉnh Tây Ninh', 19620824, '072162004563', '', '0984677767', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707325310829', 6000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 15: Ngô Văn Vững
    p(15, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Ngô Văn Vững', N'ấp Thạnh Lộc - Xã Thạnh Bình Tỉnh Tây Ninh', 19760101, '072076001282', '', '0907598071', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707169221721', 6000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 16: Nguyễn Thanh Giang
    p(16, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thanh Giang', N'Khu phố Ninh An- Phường Ninh Sơn- TP.Tây Ninh', 19860715, '072186000128', '', '0907075432', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707309550407', 5500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 17: Nguyễn Thị Kim Khánh
    p(17, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Kim Khánh', N'ấp Tân Tiến- Xã Tân Lập- Tỉnh Tây Ninh', 19750902, '072175008838', '', '0358340551', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707398741427', 5500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 18: Nguyễn Thị Soan
    p(18, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Soan', N'ấp 7- xã Tân Biên- tỉnh Tây Ninh', 19871222, '033187013038', '', '0399983988', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707205050307', 5107112300, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 19: Diệp Thị ên
    p(19, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Diệp Thị ên', N'ấp Hòa Đông A- Xã Phước VinhTỉnh Tây Ninh', 19620101, '072162009419', '', '0377913377', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707069965500', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 20: Đoàn Thị Ngọc Mai
    p(20, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Đoàn Thị Ngọc Mai', N'ấp Thạnh Tân- Xã  Tân Biên Tỉnh Tây Ninh', 19770116, '034177008609', '', '0918176078', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707039263154', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 21: Huỳnh Thị Ly
    p(21, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Huỳnh Thị Ly', N'ấp Tân Hòa- Xã Tân Lập-  Tỉnh Tây Ninh', 19640101, '072164003066', '', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707422638657', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 22: Lâm Sối Muỗi
    p(22, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lâm Sối Muỗi', N'Khu Phố 4- xã Tân Biên-Tỉnh Tây Ninh', 19680101, '072168013092', '', '0866900152', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707121285547', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 23: Lê Thị Ngọc Hằng
    p(23, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Thị Ngọc Hằng', N'ấp 2- xã Tân Biên- Tỉnh Tây Ninh', 19790113, '072179011786', '', '0918161161', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707382922148', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 24: Ngô Thị Hò
    p(24, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Ngô Thị Hò', N'ấp 2- xã Tân Biên- tỉnh Tây Ninh', 19630101, '072163001540', '', '0918585551', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707039262851', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 25: Nguyễn Thị Hợi
    p(25, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Hợi', N'ấp Tân Hòa- xã Tân Lập- tỉnh Tây Ninh', 19830717, '072183005461', '', '0977662721', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707544711056', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 26: Trần Thị Tươi
    p(26, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Trần Thị Tươi', N'ấp Bàu Đưng- xã Thạnh Bình tỉnh Tây Ninh', 19841016, '072184008192', '', '0819425246', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707188527514', 4900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 27: Nguyễn Thị Loan
    p(27, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Loan', N'ấp Thạnh Tân- Xã Tân Biên-Tỉnh Tây Ninh', 19850403, '072185005476', '', '0974756246', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707095635553', 4809400000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 28: Võ Thị Oanh Oanh
    p(28, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Võ Thị Oanh Oanh', N'ấp Suối Mây- Xã Tân LậpTỉnh Tây Ninh', 19710310, '072171004384', '', '0987724013', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707069967297', 4700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 29: Vũ Trường Giang
    p(29, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Vũ Trường Giang', N'ấp Mới- xã Thạnh Bình- Tỉnh Tây Ninh', 19910101, '072091011276', '', '0963297230', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707528799672', 4700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 30: Chu Thị Quyền
    p(30, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Chu Thị Quyền', N'ấp Thạnh An- Xã Thạnh Bình-Tỉnh Tây Ninh', 19660224, '072166012159', '', '0345279365', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707040176485', 4565000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 31: Lê Ngọc Giàu
    p(31, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Ngọc Giàu', N'ấp Thạnh Phước- Xã Thạnh Bình- Tỉnh Tây Ninh', 19871004, '072187007321', '', '0973244411', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707154195694', 4400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 32: Mang Văn Hương
    p(32, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Mang Văn Hương', N'ấp Gò Đá- Xã Trà Vong-Tỉnh Tây Ninh', 19720323, '072072010115', '', '0907382659', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707309481137', 4100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 33: Lê Thị Kim Riêng
    p(33, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Thị Kim Riêng', N'ấp 4- xã Tân Biên-  tỉnh Tây Ninh', 19720228, '072172002675', '', '0815930095', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707069964726', 4030000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 34: Nguyễn Thị Dịu
    p(34, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Dịu', N'ấp Thạnh Nam- Xã Tân Biên Tỉnh Tây Ninh', 19971030, '072197010575', '', '0337446179', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707260713392', 4000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 35: Trần Thị Muội
    p(35, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Trần Thị Muội', N'ấp 6- xã Tân Biên-tỉnh Tây Ninh', 19730410, '072173011965', '', '0985119381', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707143940331', 4000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 36: Nguyễn Văn Hiếu
    p(36, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Văn Hiếu', N'ấp Tân Hòa- Xã Tân Lập- Huyện Tân BiênTỉnh Tây Ninh', 19830515, '072083009417', '', '0985562552', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707157302640', 4000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 37: Nguyễn Thị Yến
    p(37, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Yến', N'ấp Gò Đá- Xã Trà Vong-Tỉnh Tây Ninh', 19860309, '072186003475', '', '0914386813', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707492904038', 3900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 38: Diệp Thị Dùng
    p(38, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Diệp Thị Dùng', N'ấp Hòa Đông A- Xã Phước Vinh Tỉnh Tây Ninh', 19611119, '072161008010', '', '0772880121', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707141598603', 3800000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 39: Lê Thị Ra
    p(39, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Thị Ra', N'ấp Bàu Đưng- Xã Thạnh BìnhTỉnh Tây Ninh', 19660924, '079166003580', '', '0969054655', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707114642994', 3770000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 40: Lê Thị Kim Thương
    p(40, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Thị Kim Thương', N'số 356- Đ. Nguyễn Văn Linh- ấp 4xã Tân Biên- Tỉnh Tây Ninh', 19970914, '072197002901', '', '0985561525', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707356328310', 3400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 41: Phạm Thị Như
    p(41, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Phạm Thị Như', N'ấp Tân Hòa- Xã Tân Lập- Tỉnh Tây Ninh', 19680719, '072168013169', '', '0988287153', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707118210543', 3400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 42: Phạm Triệu Dũ
    p(42, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Phạm Triệu Dũ', N'NHNo Tân BiênXã Tân BiênHuyện Tân Biên- Tỉnh Tây Ninh', 19851210, '072085000200', '', '0907684884', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707010124191', 3360000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 43: Trần Thị Su Gết
    p(43, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Trần Thị Su Gết', N'ấp Tân Đông 2- Xã Tân Lập-  Tỉnh Tây Ninh 0386053297', 19691230, '072169002652', '', '0386053297', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707205897195', 3015008600, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 44: Lê Thị Thu Phước
    p(44, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Thị Thu Phước', N'ấp 4- xã Tân Biên- Tỉnh Tây Ninh', 19820816, '072182004099', '', '0364373520', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707214359443', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 45: Nguyễn Thị Loan
    p(45, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Loan', N'ấp 3- xã Tân Biên- Tỉnh Tây Ninh', 19690919, '072169000096', '', '0355285366', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707069968150', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 46: Lê Thị Ngọc Thơm
    p(46, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Thị Ngọc Thơm', N'ấp Chòm Dừa- xã Châu Thành-Tỉnh Tây Ninh', 19820301, '072182011996', '', '0333086437', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707474618015', 2900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 47: Nguyễn Thị Thu Trang
    p(47, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Thu Trang', N'ấp Thạnh Tân- Xã Tân Biên Tỉnh Tây Ninh', 19810406, '072181003512', '', '0838955468', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707069965067', 2900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 48: Đinh Thị Thu Sương
    p(48, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Đinh Thị Thu Sương', N'ấp Tân Đông 2- xã Tân Lậptỉnh Tây Ninh', 19950517, '046195009887', '', '0976636650', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707500243358', 2820483800, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 49: Lê Văn Việt
    p(49, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Văn Việt', N'ấp 4- xã Tân Biên- Tỉnh Tây Ninh', 19630519, '072063003544', '', '0919014966', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707069965720', 2400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 50: Nguyễn Chí Sỹ
    p(50, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Chí Sỹ', N'ấp Tân Hòa- Xã Tân Lập- Tỉnh Tây Ninh', 19680430, '072068000483', '', '0919998839', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707316440623', 2021132300, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 51: Trần Thị Mạnh
    p(51, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Trần Thị Mạnh', N'ấp Thạnh Tân- Xã Tân Biên-  Tỉnh Tây Ninh', 19741005, '072174002163', '', '0982238112', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707168663506', 1950000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 52: Lê Thị Hoàng Anh
    p(52, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Thị Hoàng Anh', N'Kp1- Xã Tân BiênTỉnh Tây Ninh', 19600903, '075160000309', '', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707152976123', 1533124100, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 53: Vũ Thị Hương
    p(53, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Vũ Thị Hương', N'ấp Tân Thanh- Xã Tân Biên Tỉnh Tây Ninh', 19760920, '038176001194', '', '0949739892', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707202453510', 1500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 54: Hồ Thị Trang
    p(54, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Hồ Thị Trang', N'Tổ 9- ấp Thạnh Sơn- xã Tân Biên-  tỉnh Tây Ninh', 19950717, '072195002839', '', '0937033445', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707448474279', 1000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 55: Nguyễn Văn Lý
    p(55, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Văn Lý', N'ấp Tân Hòa- Xã Tân Lập-  Tỉnh Tây Ninh', 19880505, '072088001852', '', '0969372472', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707314989522', 4100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 56: Nguyễn Văn Quyên
    p(56, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Văn Quyên', N'KP 4- Xã Tân BiênTỉnh Tây Ninh', 19721010, '072072000002', '', '0918823950', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707069966748', 3150000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 57: Trần Thị Mùi
    p(57, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Trần Thị Mùi', N'ấp Tân Hòa- Xã Tân Lập-Tỉnh Tây Ninh', 19641209, '036164000112', '', '0985577540', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707069927510', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 58: Lê Thị Thu Dân
    p(58, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Thị Thu Dân', N'ấp Thạnh Trung- Xã Tân Biên-Tỉnh Tây Ninh', 19890614, '072189016068', '', '0933264283', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707151526232', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 59: Phùng Văn Dánh
    p(59, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Phùng Văn Dánh', N'ấp 1- xã Trà Vongtỉnh Tây Ninh', 19760101, '072076010649', '', '0775759213', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707256540270', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 60: Trần Quốc Vũ
    p(60, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Trần Quốc Vũ', N'KP7- xã Tân Biên- tỉnh Tây Ninh', 19681025, '072068013121', '', '0377342535', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707069923954', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 61: Trương Văn Tứ
    p(61, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Trương Văn Tứ', N'ấp Thạnh Tây- Xã Tân Biên-   Tỉnh Tây Ninh', 19771126, '072077002960', '', '0979863512', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707355711596', 2461730300, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 62: Trương Thị Bích Liên
    p(62, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Trương Thị Bích Liên', N'ấp Tân Hòa- Xã Tân Lập  Tỉnh Tây Ninh', 19801016, '083180000619', '', '0364664740', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707381441094', 2400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 63: Phạm Thị Lợi
    p(63, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Phạm Thị Lợi', N'ấp Một- Xã Trà Vong-  Tỉnh Tây Ninh', 19690101, '072169004031', '', '0785100549', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707174359428', 2313996300, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 64: Phạm Thị Thanh
    p(64, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Phạm Thị Thanh', N'ấp Tân Nam- Xã Tân Biên-Tỉnh Tây Ninh', 19760529, '072176000257', '', '0386054885', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707292944652', 2300000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 65: Huỳnh Dương Hải
    p(65, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Huỳnh Dương Hải', N'ấp Hòa Đông B- Xã Phước Vinh-   Tỉnh Tây Ninh', 19920504, '072092003845', '', '0968165192', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707298832394', 2250000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 66: Nguyễn Thị Hồng Quân  -- LUU Y: Excel trong ky han, tam lay 12
    p(66, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Hồng Quân', N'ấp Mới- Xã Thạnh BìnhTỉnh Tây Ninh', 19900703, '072190003602', '', '0901200176', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707232938930', 2220000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 67: Đỗ Thị Thanh  -- LUU Y: Excel trong ky han, tam lay 12
    p(67, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Đỗ Thị Thanh', N'ấp Tân Đông 2- Xã Tân Lập- Tỉnh Tây Ninh', 19830802, '024183022770', '', '0977695021', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707199223979', 2170000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 68: Nguyễn Văn Tiến  -- LUU Y: Excel trong ky han, tam lay 12
    p(68, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Văn Tiến', N'ấp Dinh- Xã Trà Vong Tỉnh Tây Ninh', 19630225, '072063000794', '', '0948548223', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707095333129', 2150000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 69: Nguyễn Văn Chiến  -- LUU Y: Excel trong ky han, tam lay 12
    p(69, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Văn Chiến', N'ấp Hoà Đông B- xã Phước Vinh-Tỉnh Tây Ninh', 19600120, '072060000712', '', '0974827809', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707069942687', 2120000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 70: Đỗ Thị Hương  -- LUU Y: Excel trong ky han, tam lay 12
    p(70, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Đỗ Thị Hương', N'ấp Tân Đông 2- Xã Tân Lập- Tỉnh Tây Ninh', 19740502, '072174001306', '', '0336019552', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707265716193', 2100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 71: Nguyễn Thị Anh Đào  -- LUU Y: Excel trong ky han, tam lay 12
    p(71, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Anh Đào', N'ấp 3- xã Tân Biên- Tỉnh Tây Ninh', 19930910, '092193010759', '', '0353660488', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707385358269', 2100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 72: Nguyễn Thị Lan  -- LUU Y: Excel trong ky han, tam lay 12
    p(72, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Lan', N'số 43- Đ.30-4- ấp 6-xã Tân Biên- Tỉnh Tây Ninh', 19831212, '072183002509', '', '0983872446', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707033209601', 2080000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 73: Lê Viết Hùng  -- LUU Y: Excel trong ky han, tam lay 12
    p(73, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Lê Viết Hùng', N'ấp Tân Thạnh- xã Tân Biên-  tỉnh Tây Ninh', 19870315, '072087016313', '', '0983609281', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707159369032', 2020000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 74: Nguyễn Thị Ngọc Phương  -- LUU Y: Excel trong ky han, tam lay 12
    p(74, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Ngọc Phương', N'ấp Tân Hoà- Xã Tân Lập-Tỉnh Tây Ninh', 19811114, '072181010686', '', '0977911255', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707242372251', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 75: Mai Thị Hồng Vân  -- LUU Y: Excel trong ky han, tam lay 12
    p(75, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Mai Thị Hồng Vân', N'Trường Tiểu Học Tân Biên', 19730201, '072173000509', '', '0909113161', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707143490128', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 76: Nguyễn Thị Hà  -- LUU Y: Excel trong ky han, tam lay 12
    p(76, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Hà', N'ấp Thạnh Trung- Xã Tân Biên-Tỉnh Tây Ninh', 19730403, '072173000511', '', '0393601970', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707335428088', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 77: Ngô Văn Biên  -- LUU Y: Excel trong ky han, tam lay 12
    p(77, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Ngô Văn Biên', N'ấp Thạnh Trung- Xã Tân Biên-Tỉnh Tây Ninh', 19720615, '072072001060', '', '0384294947', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707069968289', 1900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 78: Nguyễn Trí Hùng  -- LUU Y: Excel trong ky han, tam lay 12
    p(78, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Nguyễn Trí Hùng', N'ấp 7- Xã Tân Biên-  Tỉnh Tây Ninh', 19651115, '079065000014', '', '0907143437', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707025496420', 1827000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 79: Huỳnh Văn Quý  -- LUU Y: Excel trong ky han, tam lay 12
    p(79, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Huỳnh Văn Quý', N'ấp Thạnh Sơn- xã Tân Biên-Tỉnh Tây Ninh', 19820420, '072082000737', '', '0986253584', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5707277003316', 1800000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    -- Dong 80: Tạ Thị Chi  -- LUU Y: Excel trong ky han, tam lay 12
    p(80, N'AGRIBANK CN TÂN BIÊN TÂY NINH', N'Số 28 Nguyễn Văn Linh, Khu phố 3, Xã Tân Biên, tỉnh Tây Ninh', '0100686174-677', '0917130592', 'khatm-hcm@abic.com.vn',
      N'Tạ Thị Chi', N'ấp Thạnh Lợi- xã Thạnh Bình-Tỉnh Tây Ninh', 19901023, '072190016682', '', '0398464942', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5707249050400', 1716274000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05542/26AD/CN/001/KVTN');
    dbms_output.put_line('Tong: ' || b_ok || ' thanh cong, ' || b_loi || ' loi');
end;
/
