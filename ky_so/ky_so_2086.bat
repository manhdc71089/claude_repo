@echo off
chcp 65001 >nul
setlocal EnableDelayedExpansion
rem Goi API ky so ATTK cho 77 SO_ID_YC (file 2086). Chi can nhay dup file nay.
rem Can curl.exe (co san tren Windows 10/11). Ket qua ghi vao ket_qua_ky_so_2086.txt
set "API=http://sign.abic.com.vn/bancaapi/attk/sign?b_so_id="
set "LOG=%~dp0ket_qua_ky_so_2086.txt"
where curl >nul 2>nul || (echo Khong tim thay curl.exe - hay dung file ky_so_2086.html & pause & exit /b 1)
echo so_id ^| http_code ^| response> "%LOG%"
set /a n=0, ok=0, loi=0
for %%i in (
    26092600059334
    26092600059336
    26092600059338
    26092600059340
    26092600059342
    26092600059344
    26092600059346
    26092600059348
    26092600059350
    26092600059352
    26092600059354
    26092600059356
    26092600059360
    26092600059362
    26092600059364
    26092600059368
    26092600059370
    26092600059372
    26092600059374
    26092600059376
    26092600059378
    26092600059380
    26092600059358
    26092600059382
    26092600059384
    26092600059386
    26092600059388
    26092600059390
    26092600059392
    26092600059394
    26092600059396
    26092600059398
    26092600059400
    26092600059402
    26092600059404
    26092600059406
    26092600059408
    26092600059410
    26092600059412
    26092600059414
    26092600059416
    26092600059418
    26092600059420
    26092600059422
    26092600059424
    26092600059426
    26092600059428
    26092600059430
    26092600059432
    26092600059434
    26092600059436
    26092600059438
    26092600059440
    26092600059442
    26092600059444
    26092600059446
    26092600059448
    26092600059450
    26092600059296
    26092600059298
    26092600059300
    26092600059304
    26092600059294
    26092600059306
    26092600059308
    26092600059310
    26092600059312
    26092600059314
    26092600059316
    26092600059318
    26092600059320
    26092600059322
    26092600059324
    26092600059326
    26092600059328
    26092600059330
    26092600059332
) do (
    set /a n+=1
    curl -s -m 60 -o "%TEMP%\ky_so_resp.txt" -w "%%{http_code}" "%API%%%i" > "%TEMP%\ky_so_code.txt" 2>nul
    set "code=000"
    set /p code=<"%TEMP%\ky_so_code.txt"
    set "resp="
    set /p resp=<"%TEMP%\ky_so_resp.txt"
    if "!code!"=="200" (set /a ok+=1) else (set /a loi+=1)
    echo [!n!/77] %%i -^> !code! !resp!
    echo %%i ^| !code! ^| !resp!>> "%LOG%"
)
del "%TEMP%\ky_so_resp.txt" "%TEMP%\ky_so_code.txt" 2>nul
echo.
echo Tong: !n! ^| Thanh cong (HTTP 200): !ok! ^| Loi: !loi!
echo Chi tiet: %LOG%
pause
