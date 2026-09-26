-- Script tao yeu cau bao hiem ATTK tu file: 26735_-_0100686174_-_675.xlsx
-- Hop dong nguyen tac: 05541/26AD/CN/001/KVTN - AGRIBANK CN TÂN PHÚ TÂY NINH (14 dong du lieu)
-- Ngay: dd/MM/yyyy -> so yyyymmdd; so tien gui lam tron den dong.
set serveroutput on size unlimited;
declare
    c_ss_id  constant number := 26092678006260;
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
    -- Dong 2: Lê Thanh Tòng
    p(2, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Lê Thanh Tòng', N'Huỳnh Tấn Phát- kp Hiệp Bình-phường Tân Ninh- Tây Ninh', 19780825, '072078009893', '', '0989694615', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5710133386551', 2500000000, 12, 'GOI_5',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 3: Nguyễn Thị Nga
    p(3, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Nga', N'7/64- Tổ 8- Tân Tây- Tân PhúTây Ninh', 19830902, '072183001216', '', '0987258370', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5710319387731', 2500000000, 12, 'GOI_5',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 4: Nguyễn Ngọc Phượng
    p(4, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Nguyễn Ngọc Phượng', N'27- Hiệp An- Phường Thanh Điềntỉnh Tây Ninh', 19601220, '072160001123', '', '0913884214', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5710025471432', 22000000000, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 5: Nguyễn Thị Nguyệt
    p(5, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Nguyệt', N'151- Liên Xã- Tổ 18- ấp Thạnh HiệpPhường Bình Minh- Tỉnh Tây Ninh', 19600412, '052160004139', '', '0969992757', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5710025484271', 15300000000, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 6: Nguyễn Thị Minh Phượng
    p(6, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Minh Phượng', N'15-Ninh Trung- phường Bình MinhTây Ninh', 19821023, '072182014102', '', '0975911477', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5710406425868', 15000000000, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 7: Châu Thị ánh Tuyết
    p(7, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Châu Thị ánh Tuyết', N'Tân Đông- Tân Phú- Tây Ninh', 19610101, '072161002390', '', '0971720395', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5710044630881', 9500000000, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 8: Huỳnh Thị Thanh Hiền
    p(8, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Huỳnh Thị Thanh Hiền', N'ấp Tân Thạnh- Xã Tân Phú-- Tỉnh Tây Ninh', 19740101, '072174000154', '', '0984992075', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5710305591843', 5600000000, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 9: Nguyễn Văn Chủ
    p(9, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Nguyễn Văn Chủ', N'Tân Trung A Tân PhúTây Ninh', 19750504, '072075001428', '', '0982757146', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5710195269846', 4300000000, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 10: Đinh Thị Mỹ Hạnh
    p(10, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Đinh Thị Mỹ Hạnh', N'Tân Đông-Tân Phú-Tây Ninh', 19690414, '072169011894', '', '0984244337', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5710250454003', 3800000000, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 11: Nguyễn Đình Trí
    p(11, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Nguyễn Đình Trí', N'ấp Tân Hòa-Tân Phú- Tây Ninh', 19700626, '079070031955', '', '0903984333', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5710025515874', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 12: Nguyễn Thị Cẩm Chướng
    p(12, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Nguyễn Thị Cẩm Chướng', N'ấp Thanh Phước- Thanh Điền Tây Ninh', 19760417, '072176003035', '', '0395623136', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5710484127351', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 13: Phạm Thị Hồng Tuyết
    p(13, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Phạm Thị Hồng Tuyết', N'Thôn Đông Nam- Xã Đại LãnhKhánh Hòa', 19991214, '056199003657', '', '0376734954', 'khatm-hcm@abic.com.vn',
      N'Nữ', N'5710426561981', 1212877228, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 14: Lê Hồng Châu
    p(14, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Lê Hồng Châu', N'Tổ 12- ấp 6- Xã Tân Hòa- Tây Ninh', 19640624, '072064002778', '', '0986528995', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5710188116858', 1000000000, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    -- Dong 15: Bùi Viết Thiện
    p(15, N'AGRIBANK CN TÂN PHÚ TÂY NINH', N'Ấp Tân Tây, xã Tân Phú, Tây ninh', '0100686174-675', '0917130592', 'Khatm-hcm@abic.com.vn',
      N'Bùi Viết Thiện', N'Số 262-Tổ 19 -ấp Hội Tân-xã Tân HộiHuyện Tân Châu- Tây Ninh0369677138', 19670808, '072067007250', '', '0369677138', 'khatm-hcm@abic.com.vn',
      N'Nam', N'5710265951717', 4000000000, 12, 'GOI_6',
      '10:00', 20260926, '16:00', 20270926, 'E', '05541/26AD/CN/001/KVTN');
    dbms_output.put_line('Tong: ' || b_ok || ' thanh cong, ' || b_loi || ' loi');
end;
/
