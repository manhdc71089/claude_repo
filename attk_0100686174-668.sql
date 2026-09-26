-- Script tao yeu cau bao hiem ATTK tu file: 36819_-_0100686174-668.xlsx
-- Hop dong nguyen tac: 05537/26AD/CN/001/KVTN - AGRIBANK CN TÂN CHÂU TÂY NINH (63 dong du lieu)
-- Ngay: dd/MM/yyyy -> so yyyymmdd; so tien gui lam tron den dong.
set serveroutput on size unlimited;
declare
    c_ss_id  constant number := 26092678006366;
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
    -- Dong 2: Nguyễn Thị Liên
    p(2, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Liên', N'Khu phố 3 Thị Trấn Tân Châu', 19700101, '072170003639', '', '0986225956', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705455449128', 4722000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 3: Cao Thị Phượng
    p(3, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Cao Thị Phượng', N'ấp Thạnh An xã Tân Hội  tỉnh Tây Ninh', 19640101, '072164000187', '', '0988307056', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705108000483', 40100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 4: Phan Thị Thu Lan
    p(4, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phan Thị Thu Lan', N'ấp 6- Suối Ngô Tân Châu Tây Ninh', 19950410, '072195004671', '', '0339936777', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705193560193', 14450000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 5: Phan Thị Hoàng
    p(5, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phan Thị Hoàng', N'Tổ 5 ấp 3 xã Tân Hòa tỉnh Tây Ninh', 19650910, '072165001709', '', '0975006113', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705149477099', 12700017260, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 6: Bùi Thị Hường
    p(6, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Bùi Thị Hường', N'Hội Tân Tân Hội Tân ChâuTây Ninh0974004379', 19630101, '072163006950', '', '0974004379', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705048289771', 12500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 7: Võ Thị Dễ
    p(7, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Võ Thị Dễ', N'Cây Khế Tân Hòa Tân ChâuTây Ninh', 19700101, '072170012671', '', '0909789071', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705048286705', 11000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 8: Ngô Thị Thoại
    p(8, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Ngô Thị Thoại', N'ấp Thạnh Lộc- Xã Thạnh Bình Tỉnh Tây Ninh', 19641002, '072164011491', '', '0943154242', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705141173855', 10000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 9: Nguyễn Thị Kim Chi
    p(9, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Kim Chi', N'ấp An Bình- xã An Tịnh- huyện Trảng Bàng- tỉnh Tây Ninh', 19630101, '072163000481', '', '0378344452', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705084776534', 10000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 10: Đoàn Văn Hữu
    p(10, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đoàn Văn Hữu', N'Tổ 6 ấp Thạnh Quới Xã Thạnh Đông 0913797814', 19610424, '072061006924', '', '0913797814', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705048289197', 10000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 11: Lê Thị Loan
    p(11, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Loan', N'Thạnh Lợi- Thạnh Bình- Tân Biên Tây Ninh', 19680308, '072168010275', '', '0385546043', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705025505659', 9810000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 12: Nguyễn Thị Thanh
    p(12, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Thanh', N'Đông Hiệp Tân Đông Tân Châu Tây Ninh', 19630416, '040163000050', '', '0392692937', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705095722289', 7890000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 13: Trần Văn Thân
    p(13, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Văn Thân', N'ấp 5 Suối Dây Tân ChâuTây Ninh0988228918', 19730815, '079073036612', '', '0988228918', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705048286080', 7200000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 14: Lê Thị Hậu
    p(14, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Hậu', N'Khu phố 3 Thị Trấn Tân ChâuHuyện Tân Châu', 19690206, '079169004936', '', '0385276255', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705223015440', 6800000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 15: Trần Thị Thăng
    p(15, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Thăng', N'KP 1 Thị trấn Tân Châu Tây Ninh', 19700123, '072170002113', '', '0985487397', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705176375531', 5700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 16: Nguyễn Ngọc Phượng
    p(16, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Ngọc Phượng', N'27- Hiệp An- Phường Thanh Điềntỉnh Tây Ninh', 19601220, '072160001123', '', '0913884214', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705025471432', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 17: Nguyễn Thị Cúc
    p(17, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Cúc', N'KP3- Phường 1- Thị xã Tây NinhTây Ninh', 19781118, '072178006023', '', '0853737190', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705438417728', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 18: Lê Hưởng Phước
    p(18, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Hưởng Phước', N'ấp Thạnh Hoà Thạnh Đông Tân ChâuTây Ninh0909448200', 19601014, '080060000074', '', '0909448200', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705110726211', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 19: Lê Việt Bình
    p(19, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Việt Bình', N'KP3 Phường 1 TP Tây NinhTây Ninh0853737190', 19750515, '093075000005', '', '0853737190', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705368633585', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 20: Trần Thị Kim Tươi
    p(20, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Kim Tươi', N'KP2 Thị Trấn Tân ChâuTây Ninh', 19610101, '072161001569', '', '0794869979', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705232769913', 4400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 21: Nguyễn Hoàng Chung
    p(21, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Hoàng Chung', N'Thạnh An- Thạnh bình-Tây Ninh', 19871101, '072087002998', '', '0914677777', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705225437915', 4300000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 22: Trần Thị Đón
    p(22, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Đón', N'Hội Thạnh Tân Hội Tân Châu Tây Ninh', 19730101, '072173000689', '', '0374906632', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705336038323', 4000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 23: Nguyễn Thị Phúc
    p(23, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Phúc', N'Thạnh Tân Thạnh Tây Tân Biên0933595277', 19871010, '072187014601', '', '0933595277', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705324566586', 3400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 24: Trần Thị Phúc Thảo
    p(24, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Phúc Thảo', N'KP2- Thị Trấn Tân Châu Tây Ninh 0979388107', 19910201, '072191008335', '', '0979388107', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705048285880', 3400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 25: Cao Xuân Đức
    p(25, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Cao Xuân Đức', N'Thạnh Đông Tân Châu Tây Ninh0988515151', 19770608, '072077004893', '', '0988515151', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705211599470', 3338000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 26: Nguyễn Thị Lệ
    p(26, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Lệ', N'Tổ 1- ấp Thạnh Hòa- Thạnh Bình- Tỉnh Tây Ninh', 19681009, '072168012918', '', '0328870957', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705169704175', 3300000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 27: Nguyễn Thị Thúy Nhi
    p(27, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Thúy Nhi', N'NHNo Tân Châu', 19861017, '072186003622', '', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705103440250', 3226000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 28: Nguyễn Thị Thu Trang
    p(28, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Thu Trang', N'Tân Hoà Tân Phú Tân Châu TN0374111696', 19860716, '072186007855', '', '0374111696', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705174548005', 3150000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 29: Vũ Thị Hương
    p(29, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Vũ Thị Hương', N'Tổ 3 Thạnh Hòa Thạnh Đông0908064013', 19720220, '033172006588', '', '0908064013', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705168169562', 3050000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 30: Lâm Thị Thơm
    p(30, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lâm Thị Thơm', N'Cây Khế-Xã Tân Hòa-Tỉnh Tây Ninh', 19740101, '072174012211', '', '0326668182', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705527790021', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 31: Ngô Thị Thúy
    p(31, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Ngô Thị Thúy', N'Đông Hà Tân Đông Tân ChâuTây Ninh0365476250', 19750815, '024175000379', '', '0365476250', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705226494348', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 32: Nguyễn Thị Hảnh
    p(32, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Hảnh', N'ấp 2 Suối Ngô', 19770101, '082177000203', '', '0339695917', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705349391396', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 33: Trần Thị Lệ
    p(33, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Lệ', N'KP1 Thị Trấn Tân Châu Tây Ninh0905555118', 19741107, '072174001467', '', '0905555118', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705048288466', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 34: Phạm Trần Toàn Trí
    p(34, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Trần Toàn Trí', N'KP1 Thị Trấn Tân ChâuTây Ninh', 19940220, '072094002170', '', '0978747872', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705309314267', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 35: Nguyễn Văn Triệu
    p(35, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Văn Triệu', N'Suối Dây Tân Châu Tây Ninh0969595952', 19750101, '072075004751', '', '0986504494', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705146897860', 2900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 36: Lê Hoàng Giang Thanh
    p(36, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Hoàng Giang Thanh', N'KP1- Thị trấn Tân ChâuTân Châu- Tây Ninh', 19740602, '072174001086', '', '0982421642', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705009363338', 2501000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 37: Lê Kim Duyên
    p(37, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Kim Duyên', N'ấp 3 Suối Dây Tân Châu Tây Ninh0983323727', 19660326, '082166000412', '', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705136374353', 2050000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 38: Lê Văn Sê
    p(38, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Văn Sê', N'Tổ 06 ấp Đồng Kèn 2- xã Tân Thành', 19640101, '072064004951', '', '0976439308', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705261435727', 1650000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 39: Vũ Văn Hải
    p(39, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Vũ Văn Hải', N'ấp 1 Suối Ngô Tân Châu Tây Ninh0979126705', 19880830, '072088016350', '', '0979126705', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705175732392', 1500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 40: Nguyễn Trần Kim Trâm
    p(40, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Trần Kim Trâm', N'Tân Bình Tân Hiệp Tân Châu Tây Ninh', 19940401, '074194000048', '', '0937337682', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705393672322', 1000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 41: Lê Thành Long
    p(41, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thành Long', N'ấp B2- Phước Minh- Dương Minh Châu01663555236', 19670112, '079067026672', '', '0363555236', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705304804425', 3800000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 42: Võ Thị Ngọc Nga
    p(42, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Võ Thị Ngọc Nga', N'ấp 4 Suối Dây Tân ChâuTây Ninh', 19610521, '072161000392', '', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705048289032', 3600000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 43: Điền Thị Nguyệt
    p(43, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Điền Thị Nguyệt', N'ấp 3 Suối Dây Tân Châu Tây Ninh0975516288', 19611216, '072161008675', '', '0975516288', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705178627689', 3170000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 44: Đoàn Thị Như Ngọc
    p(44, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đoàn Thị Như Ngọc', N'ấp 3-Xã Tân Châu-Tây Ninh0961805916', 19941207, '080194000227', '', '0961805916', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705403023566', 3025000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 45: Nguyễn Thị Hương
    p(45, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Hương', N'322 Tổ 2- ấp Thạnh Hưng Thạnh Đông', 19680101, '072168011395', '', '0967075916', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705156894684', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 46: Đặng Thị Hoài
    p(46, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đặng Thị Hoài', N'Hội Phú Tân Hội Tân Châu0386098079', 19770215, '024177000186', '', '0386098079', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705342151618', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 47: Võ Hoàng Thi
    p(47, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Võ Hoàng Thi', N'Tân Xuân Tân Phú Tân Châu Tây Ninh0815902923', 19830401, '091083021267', '', '0815902923', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705283278301', 2700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 48: Đào Ngọc Thắng
    p(48, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đào Ngọc Thắng', N'Bệnh viện Đa Khoa Tân Châu0975101401', 19681008, '017068002720', '', '0975101401', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705062239225', 2649307885, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 49: Trần Thị Hường
    p(49, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Hường', N'Tổ 4 ấp Tân Trường Xã Tân Hiệp 0352607453', 19750910, '072175002216', '', '0352607453', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705048287175', 2603000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 50: Lê Thị Phượng
    p(50, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Phượng', N'Hội Phú Tân Hội Tân ChâuTây Ninh0906751377', 19660101, '072167002598', '', '0906751377', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705048289707', 2535000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 51: Ngô Thị Gái
    p(51, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Ngô Thị Gái', N'ấp Tân Xuân- Tân Phú- Tân ChâuTây Ninh', 19641018, '072164002889', '', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705100248261', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 52: Lê Thị Lan
    p(52, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Lan', N'Hội Phú Tân Hội Tân Châu Tây Ninh', 19650101, '072165002544', '', '0332670656', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705157217390', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 53: Nguyễn Thị Ngọc Lam
    p(53, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Ngọc Lam', N'Thạnh Hiệp Thạnh Đông Tân ChâuTây Ninh', 19641109, '072164005564', '', '0989770842', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705141241509', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 54: Nguyễn Văn Hiển
    p(54, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Văn Hiển', N'ấp Tân Hòa xã Tân Phú  tỉnh Tây Ninh', 19680606, '017068002531', '', '0908033306', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705251461132', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 55: Trần Văn Minh
    p(55, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Văn Minh', N'Tổ 2 ấp 4 suối dâyTân Châu Tây Ninh0988808931', 19661031, '079066042976', '', '0663752120', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705097226526', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 56: Nguyễn Thị Kiều Nga
    p(56, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Kiều Nga', N'ấp 2 Suối Dây Tân Châu Tây Ninh0378370939', 19760626, '072176002118', '', '0378370939', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705149266048', 2300000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 57: Nguyễn Anh Dũng
    p(57, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Anh Dũng', N'Thạnh Hòa Thạnh Bình Tân Biên Tây Ninh', 19740929, '072074000315', '', '0968446100', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705198892838', 2300000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 58: Ngô Văn Đông
    p(58, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Ngô Văn Đông', N'Thạnh Hiệp Thạnh Đông Tân ChâuTây Ninh0909815868', 19771206, '072077005005', '', '0909815868', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705290949878', 2300000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 59: Nguyễn Thị Ngoãn
    p(59, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Ngoãn', N'Tân Trường Tân Hiệp Tân Châu TN0978670335', 19730101, '030173000937', '', '0978670335', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705218538281', 2200000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 60: Phạm Lê Phương Trang
    p(60, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Lê Phương Trang', N'Tổ 38- ấpTân Thanh', 19970908, '072197007992', '', '0818130541', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705265547425', 2150000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 61: Lê Thị Điểm
    p(61, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Điểm', N'Khu Phố 3 Thị Trấn Tân Châu TN 01659841275', 19740101, '034174011361', '', '0359841275', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705048225268', 2119021504, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 62: Lê Thị Mỹ
    p(62, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Mỹ', N'Thạnh Quới Thạnh Đông Tân ChâuTây Ninh0911206147', 19630101, '072163000331', '', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705312089134', 2100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 63: Phạm Văn Hà  -- LUU Y: Excel trong ky han, tam lay 12
    p(63, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Văn Hà', N'CA Huyện Tân Châu Tây NInh0982730979', 19660203, '040066000040', '', '0982730979', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5705016111574', 2096000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    -- Dong 64: Huỳnh Thị Chính  -- LUU Y: Excel trong ky han, tam lay 12
    p(64, N'AGRIBANK CN TÂN CHÂU TÂY NINH', N'Số 388 đường Lê Duẩn, ấp 2, xã Tân Châu, tỉnh Tây Ninh', '0100686174-668', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Huỳnh Thị Chính', N'Tổ 5- ấp 1- xã Suối Dâyxã Đất Mũi- Huyện Ngọc Hiển- Cà Mau', 19660505, '084166004343', '', '0357439850', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5705190522786', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05537/26AD/CN/001/KVTN');
    dbms_output.put_line('Tong: ' || b_ok || ' thanh cong, ' || b_loi || ' loi');
end;
/
