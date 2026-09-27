@echo off
chcp 65001 >nul
setlocal EnableDelayedExpansion
rem Goi API ky so ATTK cho 14 SO_ID_YC (file 26735_lan2). Chi can nhay dup file nay.
rem Can curl.exe (co san tren Windows 10/11). Ket qua ghi vao ket_qua_ky_so_26735_lan2.txt
set "API=http://sign.abic.com.vn/bancaapi/attk/sign?b_so_id="
set "LOG=%~dp0ket_qua_ky_so_26735_lan2.txt"
where curl >nul 2>nul || (echo Khong tim thay curl.exe - hay dung file ky_so_26735_lan2.html & pause & exit /b 1)
echo so_id ^| http_code ^| response> "%LOG%"
set /a n=0, ok=0, loi=0
for %%i in (
    26092700045453
    26092700045456
    26092700045459
    26092700045462
    26092700045465
    26092700045468
    26092700045471
    26092700045483
    26092700045486
    26092700045489
    26092700045492
    26092700045474
    26092700045477
    26092700045480
) do (
    set /a n+=1
    curl -s -m 60 -o "%TEMP%\ky_so_resp.txt" -w "%%{http_code}" "%API%%%i" > "%TEMP%\ky_so_code.txt" 2>nul
    set "code=000"
    set /p code=<"%TEMP%\ky_so_code.txt"
    set "resp="
    set /p resp=<"%TEMP%\ky_so_resp.txt"
    if "!code!"=="200" (set /a ok+=1) else (set /a loi+=1)
    echo [!n!/14] %%i -^> !code! !resp!
    echo %%i ^| !code! ^| !resp!>> "%LOG%"
)
del "%TEMP%\ky_so_resp.txt" "%TEMP%\ky_so_code.txt" 2>nul
echo.
echo Tong: !n! ^| Thanh cong (HTTP 200): !ok! ^| Loi: !loi!
echo Chi tiet: %LOG%
pause
