@echo off
chcp 65001 >nul
setlocal EnableDelayedExpansion
rem Goi API ky so ATTK cho 14 SO_ID_YC (file 26735). Chi can nhay dup file nay.
rem Can curl.exe (co san tren Windows 10/11). Ket qua ghi vao ket_qua_ky_so_26735.txt
set "API=http://sign.abic.com.vn/bancaapi/attk/sign?b_so_id="
set "LOG=%~dp0ket_qua_ky_so_26735.txt"
where curl >nul 2>nul || (echo Khong tim thay curl.exe - hay dung file ky_so_26735.html & pause & exit /b 1)
echo so_id ^| http_code ^| response> "%LOG%"
set /a n=0, ok=0, loi=0
for %%i in (
    26092600058833
    26092600058836
    26092600058839
    26092600058842
    26092600058845
    26092600058848
    26092600058851
    26092600058854
    26092600058857
    26092600058860
    26092600058863
    26092600058824
    26092600058827
    26092600058830
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
