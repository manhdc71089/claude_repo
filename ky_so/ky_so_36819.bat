@echo off
chcp 65001 >nul
setlocal EnableDelayedExpansion
rem Goi API ky so ATTK cho 61 SO_ID_YC (file 36819). Chi can nhay dup file nay.
rem Can curl.exe (co san tren Windows 10/11). Ket qua ghi vao ket_qua_ky_so_36819.txt
set "API=http://sign.abic.com.vn/bancaapi/attk/sign?b_so_id="
set "LOG=%~dp0ket_qua_ky_so_36819.txt"
where curl >nul 2>nul || (echo Khong tim thay curl.exe - hay dung file ky_so_36819.html & pause & exit /b 1)
echo so_id ^| http_code ^| response> "%LOG%"
set /a n=0, ok=0, loi=0
for %%i in (
    26092600059011
    26092600059013
    26092600059015
    26092600059017
    26092600059019
    26092600059021
    26092600059023
    26092600059025
    26092600059027
    26092600059031
    26092600059033
    26092600059035
    26092600059037
    26092600059041
    26092600059043
    26092600059045
    26092600059047
    26092600059049
    26092600059051
    26092600059053
    26092600059055
    26092600059057
    26092600059059
    26092600059061
    26092600059063
    26092600059065
    26092600059067
    26092600059069
    26092600059071
    26092600059073
    26092600059075
    26092600059077
    26092600059079
    26092600059081
    26092600059083
    26092600059085
    26092600059087
    26092600059089
    26092600059091
    26092600059093
    26092600059095
    26092600059097
    26092600059099
    26092600059101
    26092600059103
    26092600059105
    26092600059107
    26092600059109
    26092600059111
    26092600059113
    26092600059115
    26092600059117
    26092600059119
    26092600059121
    26092600059123
    26092600059125
    26092600059127
    26092600059129
    26092600059131
    26092600059133
    26092600059135
) do (
    set /a n+=1
    curl -s -m 60 -o "%TEMP%\ky_so_resp.txt" -w "%%{http_code}" "%API%%%i" > "%TEMP%\ky_so_code.txt" 2>nul
    set "code=000"
    set /p code=<"%TEMP%\ky_so_code.txt"
    set "resp="
    set /p resp=<"%TEMP%\ky_so_resp.txt"
    if "!code!"=="200" (set /a ok+=1) else (set /a loi+=1)
    echo [!n!/61] %%i -^> !code! !resp!
    echo %%i ^| !code! ^| !resp!>> "%LOG%"
)
del "%TEMP%\ky_so_resp.txt" "%TEMP%\ky_so_code.txt" 2>nul
echo.
echo Tong: !n! ^| Thanh cong (HTTP 200): !ok! ^| Loi: !loi!
echo Chi tiet: %LOG%
pause
