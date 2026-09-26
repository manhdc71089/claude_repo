-- Script tao yeu cau bao hiem ATTK tu file: 22579_-_0100686174-667.xlsx
-- !!! CHUA CO SS_ID: tim NHAP_SS_ID ben duoi va thay bang ss_id (chua thay thi script se bao loi, khong chay).
-- Hop dong nguyen tac: 05535/26AD/CN/001/KVTN - AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH (104 dong du lieu)
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
    -- Dong 2: Đặng Thị Ngọc Diễm
    p(2, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đặng Thị Ngọc Diễm', N'ấp Bàu Dài- Xã Cầu KhởiTỉnh Tây Ninh0335520170', 19720101, '072172010913', '', '0335520170', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702070374756', 3706858200, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 3: Đinh Ngọc Tuấn
    p(3, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đinh Ngọc Tuấn', N'Số 2- Tổ 11- ấp 4Xã Dương Minh Châu- Tỉnh Tây NinhChâu- Tỉnh Tây Ninh 0969774870', 19680217, '001068031841', '', '0969774870', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702063403158', 3151776400, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 4: Nguyễn Thị Hoa
    p(4, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Hoa', N'Tổ 3- ấp Phước Bình 2 Xã Dương Minh Châu- Tỉnh Tây Ninh 0966919196', 19670420, '072167000092', '', '0966919196', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702224760729', 3000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 5: Trần Thị Thu Hằng
    p(5, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Thu Hằng', N'70-Tổ 2- ấp Thuận An- Xã Truông MítTỉnh Tây Ninh0949095051', 19790819, '072179002548', '', '0949095051', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702173886943', 3000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 6: Lê Minh Trong
    p(6, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Minh Trong', N'ấp Phước Tân- Xã Cầu Khởi- Tỉnh Tây Ninh 0933935093', 19840620, '072084002538', '', '0933935093', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702151570776', 2900000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 7: Lê Thị Phượng
    p(7, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Phượng', N'Tổ 2- ấp Tân Định 1 Xã Dương Minh Châu- Tỉnh Tây Ninh 0368901898', 19670101, '072167001776', '', '0368901898', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063451167', 2200000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 8: Nguyễn Thanh Thúy
    p(8, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thanh Thúy', N'ấp Tân Định 1- Xã Dương Minh ChâuTỉnh Tây Ninh0977458406', 19660101, '072166010894', '', '0977458406', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702207538432', 2100000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 9: Đặng Thị Lan
    p(9, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đặng Thị Lan', N'ấp Thuận Bình- Xã Truông MítTỉnh Tây Ninh 0353278283', 19610101, '072161001100', '', '0353278283', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702117998552', 2070000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 10: Đỗ Thị Bách Phương
    p(10, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đỗ Thị Bách Phương', N'ấp Phước Hiệp- Xã Cầu KhởiTỉnh Tây Ninh0974472774', 19870204, '072187004471', '', '0974472774', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702411940392', 2050000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 11: Lê Thị Kim Loan
    p(11, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Kim Loan', N'ấp Phước Hội- Xã Suối ĐáHuyện Dương Minh Châu-Tỉnh Tây Ninh0848392597', 19780720, '072178002137', '', '0848392597', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702135106785', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 12: Lương Ngọc Huyền
    p(12, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lương Ngọc Huyền', N'Tổ 1- ấp Phước Tân 2 Xã Dương Minh Châu-Tỉnh Tây Ninh 0986267397', 19950331, '072195006497', '', '0986267397', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702282041878', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 13: Nguyễn Văn Hạnh
    p(13, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Văn Hạnh', N'Tổ 05 ấp Khởi Hà- xã Cầu KhởiTỉnh Tây Ninh0909475990', 19700101, '072070009301', '', '0909475990', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702090912619', 2000000000, 12, 'GOI_5',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 14: Lê Minh Tâm
    p(14, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Minh Tâm', N'ấp Phước Tân 3- xã Dương Minh Châu tỉnh Tây Ninh0372953907', 19830729, '072083001806', '', '0372953907', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702147450138', 20330000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 15: Phạm Thị Như Mai
    p(15, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Thị Như Mai', N'ấp Tân Định 2- Xã Dương Minh ChâuTỉnh Tây Ninh0986512614', 19620925, '079162033253', '', '0986512614', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063449889', 13400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 16: Trần Thị Mỹ Hồng
    p(16, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Mỹ Hồng', N'tổ 5- ấp B2- xã Lộc NinhTỉnh Tây Ninh0933431626', 19691001, '079169002430', '', '0933431626', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063451090', 11783045400, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 17: Nguyễn Văn Uôl
    p(17, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Văn Uôl', N'1041/Tổ6- ấp Khởi Trung- XãCầu KhởiTỉnh Tây Ninh0908949916', 19650101, '072065006515', '', '0908949916', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702063374230', 10000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 18: Ngô Phạm Phương Mai
    p(18, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Ngô Phạm Phương Mai', N'ấp 2xã Dương Minh Châu-tỉnh Tây Ninh0937727110', 19871001, '072187002933', '', '0937727110', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702115870366', 8838885340, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 19: Bùi Thị Phương Thùy
    p(19, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Bùi Thị Phương Thùy', N'ấp Khởi Trung- Xã Cầu KhởiTỉnh Tây Ninh0903924869', 19830512, '072183002284', '', '0903924869', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702179075845', 8800000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 20: Nguyễn Thị Quế
    p(20, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Quế', N'ấp 2- Xã Dương Minh ChâuTỉnh Tây Ninh0978808001', 19641113, '035164000137', '', '0384761691', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702113365654', 8800000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 21: Đinh Thị Thảo
    p(21, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đinh Thị Thảo', N'ấp Khởi Trung Xã Cầu KhởiTỉnh Tây Ninh0969075364', 19660101, '072166006802', '', '0969075364', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063446203', 8000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 22: Lê Thị Hằng
    p(22, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Hằng', N'ấp Lộc Hiệp- Xã Lộc Ninh- Tỉnh Tây Ninh 0975829492', 19640903, '038164014638', '', '0975829492', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702028108622', 7200000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 23: Lâm Thúy Vân
    p(23, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lâm Thúy Vân', N'ấp B4- xã Lộc Ninhtỉnh Tây Ninh0982042503', 19860408, '074186009829', '', '0982042503', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702389353671', 7004034200, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 24: Võ Việt Hùng
    p(24, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Võ Việt Hùng', N'52 Tổ 9- ấp Phước HiệpXã Cầu Khởi-Tỉnh Tây Ninh0919392701', 19771222, '072077009423', '', '0919392701', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702176633830', 6650000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 25: Trần Thị Nhiện
    p(25, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Nhiện', N'ấp Khởi Nghĩa- Xã Cầu KhởiTỉnh Tây Ninh 0388979172', 19710101, '072171002870', '', '0388979172', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702455087528', 6005860274, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 26: Phạm Thị Thu Thủy
    p(26, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Thị Thu Thủy', N'G6 ĐS 8 KP Mỹ Thạnh Hưng- P6TP Mỹ Tho- Tỉnh Tiền Giang0383405762', 19690121, '082169017920', '', '0383405762', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702384684271', 6000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 27: Phạm Thị Kim Liên
    p(27, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Thị Kim Liên', N'ấp 1- xã Dương Minh Châutỉnh Tây Ninh- 0392387569', 19630123, '072163006189', '', '0392387569', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702025548986', 5900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 28: Mai Văn Phương
    p(28, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Mai Văn Phương', N'tổ 8- ấp Tân Định1-Xã Dương Minh Châu-Tỉnh Tây Ninh0907825795', 19631016, '072063000543', '', '0907825795', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702063348645', 5500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 29: Nguyễn Minh Điền
    p(29, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Minh Điền', N'ấp Thuận Bình  Xã Truông MítTỉnh Tây Ninh 0977922136', 19770101, '072077010837', '', '0977922136', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702191721468', 5430000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 30: Phan Thị Tường Loan
    p(30, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phan Thị Tường Loan', N'ấp Khởi Trung- Xã Cầu KhởiHuyện Dương Minh Châu Tỉnh Tây Ninh0987729996', 19740101, '072174005536', '', '0987729996', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702038887733', 5400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 31: Hồ Thị Phượng
    p(31, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Hồ Thị Phượng', N'ấp Thuận Hòa- Xã Truông MítTỉnh Tây Ninh 0772996106', 19620101, '072162009972', '', '0772996106', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702288462464', 5200000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 32: Vương Thị Huê
    p(32, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Vương Thị Huê', N'ấp Thuận Tân- Xã Truông MítTỉnh Tây Ninh 0975283778', 19740101, '072174003583', '', '0975283778', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702163188719', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 33: Nguyễn Văn Cang
    p(33, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Văn Cang', N'ấp Phước Hiệp- Xã Cầu KhởiTỉnh Tây Ninh0964504977', 19720903, '072072002333', '', '0964504977', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702169183345', 5000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 34: Hồ Thị Kim Anh
    p(34, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Hồ Thị Kim Anh', N'2005- Tổ 18 ấp B2 Xã Lộc Ninh- Tỉnh Tây Ninh 0917695230', 19710101, '072171003609', '', '0917695230', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702057591838', 4950000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 35: Huỳnh Thị Tiếng
    p(35, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Huỳnh Thị Tiếng', N'ấp Tân Định 2- Xã Suối ĐáHuyện Dương Minh Châu-Tỉnh Tây Ninh0918738479', 19620101, '072162006385', '', '0918738479', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702025489348', 4690000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 36: Hồ Thị Mỹ
    p(36, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Hồ Thị Mỹ', N'Tổ 12- ấp Phước Bình 1 Xã Dương Minh Châu-Tỉnh Tây Ninh 0857792957', 19650101, '082165000237', '', '0857792957', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063450993', 4600000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 37: Nguyễn Thị Tuyết
    p(37, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Tuyết', N'Tổ 2- ấp Tân Định 1- Xã Suối Đá- Huyện Dương Minh Châu-Tỉnh Tây Ninh0918221026', 19620909, '072162009403', '', '0918221026', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063446198', 4420000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 38: Nguyễn Thị Ngọc Bích
    p(38, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Ngọc Bích', N'ấp Phước Long 1- Xã Phanhuyện Dương Minh Châu-tỉnh Tây Ninh0344397888', 19880412, '072188013472', '', '0967966412', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702385152196', 4100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 39: Nguyễn Thanh Dương
    p(39, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thanh Dương', N'ấp B1- xã Lộc NinhTỉnh Tây Ninh0972095242', 19920818, '072092009717', '', '0972095242', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702188611652', 4052225800, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 40: Lê Văn Ri
    p(40, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Văn Ri', N'Tổ 2- ấp 1- Xã Dương Minh Châu Tỉnh Tây Ninh 0908489957', 19610515, '072061005992', '', '0908489957', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702063332957', 4000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 41: Nguyễn Ngọc Dung
    p(41, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Ngọc Dung', N'Tổ 11- ấp Phước Tân 2 Xã Dương Minh Châu-Tỉnh Tây Ninh 0375999660', 19711118, '072171000973', '', '0375999660', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702123232271', 3760000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 42: Nguyễn Thị Thân
    p(42, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Thân', N'Khu phố 1- Xã Dương Minh ChâuTỉnh Tây Ninh0978751331', 19850218, '072185014043', '', '0978751331', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702007391783', 3756500000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 43: Trần Thị Lê
    p(43, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Lê', N'ấp Thuận Bình- Xã Truông MítTỉnh Tây Ninh 0348559756', 19800706, '072180003450', '', '0765631146', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063445821', 3630000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 44: Lê Văn Thuận
    p(44, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Văn Thuận', N'Tổ 7- ấp B4- Xã Lộc NinhTỉnh Tây Ninh0377605911', 19800516, '072080007202', '', '0377605911', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702460725422', 3538380800, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 45: Nguyễn Bình Nguyên
    p(45, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Bình Nguyên', N'ấp Phước Hội- xã Dương Minh Châu tỉnh Tây Ninh0988808483', 19871211, '072087011654', '', '0988808483', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702109073578', 3525804900, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 46: Nguyễn Thị Kim Cương
    p(46, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Kim Cương', N'Tổ 11- ấp Phước Hội- xã Suối ĐáHuyện Dương Minh Châu-Tỉnh Tây Ninh0933227150', 19831122, '072183003350', '', '0933227150', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702208645555', 3230000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 47: Phan Thị Thu Hiền
    p(47, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phan Thị Thu Hiền', N'ấp Lộc Hiệp - Xã Lộc NinhTỉnh Tây Ninh 0916724094', 19800101, '072180008786', '', '0916724094', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702317837732', 3200000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 48: Nguyễn Văn Phên
    p(48, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Văn Phên', N'180/ấp Lộc Trung - Xã Lộc Ninh- Huyện Dương Minh Châu-Tỉnh Tây Ninh 0976164729', 19670101, '072067007637', '', '0976164729', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702166205037', 3200000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 49: Nguyễn Xuân Liệt
    p(49, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Xuân Liệt', N'54/Tổ 16-ấpThuận Bình-Xã Truông MítTỉnh Tây Ninh0919069555', 19690613, '072169009205', '', '0919069555', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702039016513', 3182520000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 50: Phạm Thị Hoàng
    p(50, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Thị Hoàng', N'ấp Thuận An- Xã Truông MítTỉnh Tây Ninh0933721148', 19680101, '072168009480', '', '0933721148', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702465018575', 3100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 51: Đặng Văn Sơn
    p(51, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đặng Văn Sơn', N'Tổ 2- ấp Phước Tân 1- Xã PhanHuyện Dương Minh Châu-Tỉnh Tây Ninh0976277735', 19740101, '072074010322', '', '0976277735', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702129475667', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 52: Trần Minh Nhân
    p(52, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Minh Nhân', N'ấp 4xã Dương Minh Châu-Tỉnh Tây Ninh0398899466', 19850101, '072085002318', '', '0398899466', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702303449656', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 53: Võ Thanh Dũng
    p(53, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Võ Thanh Dũng', N'ấp Phước Lộc- Xã Lộc NinhTỉnh Tây Ninh0919868646', 19640214, '075064000169', '', '0919868646', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702039273381', 3000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 54: Lê Hoài Tâm
    p(54, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Hoài Tâm', N'106/Tổ 9-ấp Thuận Tân-Xã Truông MítTỉnh Tây Ninh0344262295', 19700101, '072070004129', '', '0344262295', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702180212589', 2980679500, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 55: Trà Văn Mảnh
    p(55, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trà Văn Mảnh', N'Tổ 7- ấp Bàu Dài- Xã Cầu Khởitỉnh Tây Ninh0968922632', 19620101, '072062001267', '', '0968922632', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702063433244', 2520000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 56: Nguyễn Thụy Bảo Tùng
    p(56, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thụy Bảo Tùng', N'ấp 3- xã Dương Minh Châutỉnh Tây Ninh0919955100', 19810124, '072181000784', '', '0919955100', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702122165316', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 57: Lê Hữu Sử
    p(57, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Hữu Sử', N'ấp 4- xã Dương Minh Châu Tỉnh Tây Ninh 0913119339', 19611007, '040061040907', '', '0913119339', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702037738375', 2360000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 58: Trần Thị Mỹ Chiên
    p(58, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Mỹ Chiên', N'Tổ 1 KP 7 Phường Tân NinhTỉnh Tây Ninh085456984', 19871110, '072187001841', '', '085456984', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702159931213', 2300000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 59: Phan Thị Thủy
    p(59, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phan Thị Thủy', N'ấp Khởi Trung- Xã Cầu KhởiTỉnh Tây Ninh0937202057', 19750325, '072175003831', '', '0937202057', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702231707322', 2250000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 60: Phạm Thị Ngọc Hiền
    p(60, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Thị Ngọc Hiền', N'Khu Phố 4- Thị Trấn Dương Minh ChâuHuyện Dương Minh Châu-Tỉnh Tây Ninh0984712359', 19820227, '072182013131', '', '0984712359', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702267374391', 2030000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 61: Bùi Quốc Thịnh
    p(61, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Bùi Quốc Thịnh', N'ấp 4- xã Dương Minh Châutỉnh Tây Ninh0388651361', 19920526, '072092001775', '', '0388651361', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702156276545', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 62: Lê Thanh Hiếu
    p(62, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thanh Hiếu', N'Kp Ninh Bình- P Ninh ThạnhTỉnh Tây Ninh 0933213191', 19760402, '072076004458', '', '0933213191', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702507538635', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 63: Phạm Quốc Huy
    p(63, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Quốc Huy', N'Phước Tân 3- Phan- Dương Minh ChâuTây Ninh0383613524', 19940221, '072094012824', '', '0383613524', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702220864125', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 64: Nguyễn Thị Diền
    p(64, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Diền', N'Tổ 3 Phước Hiệp- Xã Cầu KhởiTỉnh Tây Ninh 0382151513', 19750101, '072175012255', '', '0382151513', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702092513871', 1804034200, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 65: Nguyễn Thị Phượng
    p(65, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Phượng', N'ấp Phước Lợi- Xã Suối Đá- Huyện Dương Minh Châu-Tỉnh Tây Ninh0987066225', 19741128, '072174009202', '', '0987066225', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702162359995', 1750000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 66: Nguyễn Cao Thức
    p(66, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Cao Thức', N'Tổ 4 ấp Thuận Hòa- Xã Truông MítTỉnh Tây Ninh0866198070', 19800508, '072080000350', '', '0866198070', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702368785003', 1700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 67: Nguyễn Thị Dung
    p(67, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Dung', N'Tổ 1- ấp Phước Hòaxã Dương Minh Châu- tỉnh Tây Ninh 0961574348', 19760101, '072176001117', '', '0961574348', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063419781', 1630000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 68: Cam Thị Vân
    p(68, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Cam Thị Vân', N'ấp Lộc Trung- Xã Lộc Ninh- Tỉnh Tây Ninh 0906927379', 19860118, '072186005922', '', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702144345265', 1500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 69: Nguyễn Văn Liệp
    p(69, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Văn Liệp', N'ấp Phước Lợi 1xã Dương Minh Châu- tỉnh Tây Ninh0393493893', 19620101, '070062001892', '', '0393493893', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702063442312', 1500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 70: Đặng Thị Gái
    p(70, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đặng Thị Gái', N'Tổ 13- ấp Cây Nính- Xã Phước ThạnhTỉnh Tây Ninh0859161632', 19720101, '072172002981', '', '0859161632', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702038832752', 1330000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 71: Nguyễn Thị  Ngọc Hà
    p(71, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị  Ngọc Hà', N'ấp 2xã Dương Minh Châu-Tỉnh Tây Ninh0938906357', 19870710, '044187002420', '', '0938906357', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702239684473', 1004034200, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 72: Nguyễn Thị Nhiên
    p(72, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Nhiên', N'Tổ 3 ấp Thuận Phước- Truông MítTỉnh Tây Ninh0919401488', 19670101, '072167001445', '', '0919401488', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702108295351', 1000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 73: Lê Minh Quang
    p(73, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Minh Quang', N'Khu Phố 4-Thị Trấn Dương Minh Châu Huyện Dương Minh Châu-Tỉnh Tây Ninh0974472438', 19780101, '072078011855', '', '0974472438', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702142582613', 1000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 74: Phạm Thị Hồng Hoa
    p(74, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Thị Hồng Hoa', N'ấp 4- xã Dương Minh Châutỉnh Tây Ninh0365513753', 19721219, '072172010935', '', '0365513753', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063407403', 5500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 75: Phạm Văn Nhân
    p(75, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Văn Nhân', N'T6- ấp Phước Tân 1xã Dương Minh Châu-Tỉnh Tây Ninh0984629619', 19730809, '072073001330', '', '0984629619', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702191406965', 4300000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 76: Phan Hồng An
    p(76, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phan Hồng An', N'ấp Khởi An Xã Cầu KhởiTỉnh Tây Ninh 0388665730', 19870323, '072187002425', '', '0388665730', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702232934336', 4050000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 77: Trần Thị Bích Hồng
    p(77, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Bích Hồng', N'ấp 1- Xã Dương Minh Châutỉnh Tây Ninh0822516030', 19750826, '040175000516', '', '0822516030', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702114099991', 3320000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 78: Nguyễn Thị Oanh Kiều
    p(78, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Oanh Kiều', N'Tổ 6- Khu Phố 1- TT DMCHuyện Dương Minh Châu-Tỉnh Tây Ninh0988235569', 19841022, '072184003325', '', '0988235569', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702140085843', 3050000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 79: Nguyễn Thị Diệu
    p(79, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Diệu', N'Tổ 6- ấp Khởi Trung- Xã Cầu KhởiTỉnh Tây Ninh0368495102', 19640101, '079164031968', '', '0368495102', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063446667', 2890000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 80: Dương Thị Kiều Tiên
    p(80, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Dương Thị Kiều Tiên', N'Tổ 30- ấp Thuận Bình- Xã Truông MítTỉnh Tây Ninh', 19840505, '072184004817', '', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702115453651', 2890000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 81: Lê Thị Hồng
    p(81, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Hồng', N'5- ấp Bến Rộng- Xã Thạnh ĐứcTỉnh Tây Ninh0977619731', 19731119, '072173000558', '', '0977619731', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702172662936', 2780000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 82: Nguyễn Thị Trợ
    p(82, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Trợ', N'Tổ 7- ấp Thuận Tân- Xã Truông MítTỉnh Tây Ninh0377138566', 19810429, '072181010501', '', '0377138566', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702314846005', 2700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 83: Trần Thị Thúy
    p(83, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Thúy', N'ấp Phước Tân 3- Xã PhanHuyện Dương Minh Châu Tỉnh Tây Ninh0377801245', 19670101, '072167002330', '', '0377801245', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702412939376', 2647578600, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 84: Hồ Văn Triệu
    p(84, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Hồ Văn Triệu', N'994/Tổ 4 ấp Lộc Hiệp- Xã Lộc NinhHuyện Dương Minh Châu-Tỉnh Tây Ninh0973439994', 19750210, '072075008911', '', '0973439994', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702063411545', 2553490300, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 85: Phạm Kim Chi
    p(85, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Kim Chi', N'Tổ 16- ấp Thuận Bình- Xã Truông MítTỉnh Tây Ninh0972824277', 19690101, '072169001668', '', '0972824277', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063428653', 2510470000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 86: Nguyễn Tuấn Kết
    p(86, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Tuấn Kết', N'ấp 3- Xã Bến Củi Huyện Dương Minh Châu-Tỉnh Tây Ninh0918725120', 19621228, '072062000064', '', '0918725120', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063448689', 2500000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 87: Nguyễn Thị Thanh Phương
    p(87, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Thanh Phương', N'Tổ 2- ấp 2- Xã Dương Minh ChâuTỉnh Tây Ninh0904374743', 19641030, '034164020984', '', '0904374743', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702115681258', 2486400000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 88: Nguyễn Thị Bông
    p(88, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Bông', N'Tổ 18- ấp Phước HòaXã Dương Minh Châu- Tỉnh Tây Ninh0986116857', 19630101, '072163000023', '', '0986116857', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702175524836', 2400000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 89: Nguyễn Hoàng Ân
    p(89, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Hoàng Ân', N'tổ 7- ấp Ninh Hưng 1- Phường Ninh Thạnh-Tỉnh Tây Ninh0972744942', 19631007, '072063000217', '', '0972744942', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702227607095', 2350000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 90: Nguyễn Thị Trúc Chi
    p(90, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Trúc Chi', N'ấp Thuận Hòa- Xã Truông MítTỉnh Tây Ninh 0362837224', 19950626, '072195007215', '', '0362837224', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702477755929', 2261600000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 91: Trần Thị Trang
    p(91, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Trần Thị Trang', N'1010 Tổ 8 ấp Khởi Hà- Xã Cầu KhởiTỉnh Tây Ninh0913658759', 19770628, '072177003841', '', '0913658759', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702135721509', 2250000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 92: Phạm Thị Sáng
    p(92, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Thị Sáng', N'ấp Thuận An- Xã Truông MítTỉnh Tây Ninh0374292298', 19620727, '072162006763', '', '0374292298', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702137021678', 2220512900, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 93: Chu Thị Hằng
    p(93, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Chu Thị Hằng', N'ấp Lộc Tân- Xã Lộc NinhTỉnh Tây Ninh0327944845', 19910217, '072191008402', '', '0327944845', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702288129505', 2215890300, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 94: Nguyễn Thị Linh Huệ
    p(94, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Linh Huệ', N'Tổ 17- ấp Phước HòaXã Dương Minh Châu-Tỉnh Tây Ninh0978991657', 19840612, '072184010807', '', '0978991657', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702122997903', 2200000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 95: Lê Thị Hồng Gấm
    p(95, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Hồng Gấm', N'ấp Thuận Bình- Xã Truông MítTỉnh Tây Ninh 0945003716', 19961220, '072196001496', '', '0945003716', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702372900881', 2100000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 96: Đoàn Văn Luận
    p(96, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đoàn Văn Luận', N'KP Ninh An-Phường Ninh ThạnhTỉnh Tây Ninh 0972084034', 19661115, '072066003934', '', '0972084034', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702148881061', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 97: Nguyễn Hồng Lý
    p(97, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Hồng Lý', N'ấp Thuận Bình- Xã Truông MítTỉnh Tây Ninh 0906477210', 19810207, '072081006230', '', '0906477210', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702282680844', 2000000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 98: Nguyễn Thị Gieo
    p(98, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Nguyễn Thị Gieo', N'Tổ 5- ấp Thuận Hòa- Xã Truông MítTỉnh Tây Ninh0967912835', 19630101, '072163003937', '', '0967912835', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702141727864', 1940088300, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 99: Đỗ Thị Mị
    p(99, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Đỗ Thị Mị', N'Tổ 59- ấp Khởi Nghĩa- Xã Cầu KhởiHuyện Dương Minh Châu Tỉnh Tây Ninh0374747660', 19880717, '072188004118', '', '0374747660', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702183562648', 1900000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 100: Lê Thị Nhiều
    p(100, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Lê Thị Nhiều', N'Tổ 7- Khu Phố 4xã Dương Minh Châu-Tỉnh Tây Ninh0394024924', 19690101, '072169000893', '', '0394024924', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702479275399', 1800000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 101: Võ Thanh Cao
    p(101, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Võ Thanh Cao', N'Tổ 19- ấp Lộc Hiệp- Xã Lộc NinhTỉnh Tây Ninh0358862313', 19640101, '072064009821', '', '0358862313', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702063450606', 1765000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 102: Phạm Thị Bảy
    p(102, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Thị Bảy', N'ấp Phước Bình 1Xã Dương Minh Châu-Tỉnh Tây Ninh0907681515', 19700101, '072170006777', '', '0907681515', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702505292445', 1700000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 103: Mai  Văn Đèo
    p(103, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Mai  Văn Đèo', N'Tổ 3- ấp Phước Lễ-  xã Cầu Khởi tỉnh Tây Ninh 0396154565', 19670101, '072067009817', '', '0396154565', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702080648296', 1650000000, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 104: Phạm Thị Hồng Hoa
    p(104, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Thị Hồng Hoa', N'ấp 4- xã Dương Minh Châutỉnh Tây Ninh0365513754', 19731219, '072172010935', '', '0365513753', 'kietvc-hcm@abic.com.vn',
      N'Nữ', N'5702063407403', 1242666608, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    -- Dong 105: Phạm Văn Nhân
    p(105, N'AGRIBANK CN DƯƠNG MINH CHÂU TÂY NINH', N'Số 381 đường Nguyễn Chí Thanh, xã Dương Minh Châu, tỉnh Tây Ninh', '0100686174-667', '0937483135', 'kietvc-hcm@abic.com.vn',
      N'Phạm Văn Nhân', N'T6- ấp Phước Tân 1xã Dương Minh Châu-Tỉnh Tây Ninh0984629620', 19740809, '072073001330', '', '0984629619', 'kietvc-hcm@abic.com.vn',
      N'Nam', N'5702191406965', 1004797365, 12, 'GOI_6',
      '10:00', 20260926, '10:00', 20270926, 'E', '05535/26AD/CN/001/KVTN');
    dbms_output.put_line('Tong: ' || b_ok || ' thanh cong, ' || b_loi || ' loi');
end;
/
