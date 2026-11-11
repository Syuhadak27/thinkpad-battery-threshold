@echo off
setlocal EnableExtensions EnableDelayedExpansion
title Pengatur Ambang Pengisian Baterai

:: Pastikan ChargeThreshold.exe berada di folder yang sama dengan berkas BAT ini.
set "PROGRAM=%~dp0ChargeThreshold.exe"

:MENU
cls
echo ==================================================
echo       PENGATUR AMBANG PENGISIAN BATERAI
echo ==================================================
echo.
echo  Pilih tindakan:
echo.
echo  [1] Mode seimbang   - Berhenti 75%%, mulai 65%%
echo  [2] Mode standar    - Berhenti 85%%, mulai 75%%
echo  [3] Mode maksimal   - Berhenti 95%%, mulai 85%%
echo  [4] Pengaturan manual
echo  [5] Periksa status
echo  [6] Nonaktifkan ambang pengisian
echo  [0] Keluar
echo.
set "PILIHAN="
set /p "PILIHAN=Masukkan pilihan: "

if "%PILIHAN%"=="1" (
    call :TERAPKAN 75 65
    goto SELESAI
)
if "%PILIHAN%"=="2" (
    call :TERAPKAN 85 75
    goto SELESAI
)
if "%PILIHAN%"=="3" (
    call :TERAPKAN 95 85
    goto SELESAI
)
if "%PILIHAN%"=="4" goto MANUAL
if "%PILIHAN%"=="5" goto STATUS
if "%PILIHAN%"=="6" goto NONAKTIF
if "%PILIHAN%"=="0" goto AKHIR

echo.
echo [PERINGATAN] Pilihan tidak tersedia.
pause
goto MENU

:MANUAL
cls
echo ==================================================
echo                 PENGATURAN MANUAL
echo ==================================================
echo.
echo Masukkan nilai dalam rentang 1 sampai 100.
echo Ambang mulai harus lebih rendah daripada ambang berhenti.
echo.
set "STOP="
set "MULAI="
set /p "STOP=Ambang berhenti mengisi (contoh: 80): "
if not defined STOP goto MANUAL_SALAH
call :VALIDASI "%STOP%"
if errorlevel 1 goto MANUAL_SALAH

set /p "MULAI=Ambang mulai mengisi (kosongkan jika tidak diatur): "
if not defined MULAI (
    call "%PROGRAM%" on %STOP%
    goto SELESAI
)
call :VALIDASI "%MULAI%"
if errorlevel 1 goto MANUAL_SALAH

if %MULAI% GEQ %STOP% goto MANUAL_SALAH
call :TERAPKAN %STOP% %MULAI%
goto SELESAI

:MANUAL_SALAH
echo.
echo [PERINGATAN] Nilai tidak valid. Pastikan angka 1-100
echo dan ambang mulai lebih rendah daripada ambang berhenti.
pause
goto MANUAL

:VALIDASI
set "ANGKA=%~1"
for /f "delims=0123456789" %%A in ("%ANGKA%") do exit /b 1
if "%ANGKA%"=="" exit /b 1
if %ANGKA% LSS 1 exit /b 1
if %ANGKA% GTR 100 exit /b 1
exit /b 0

:TERAPKAN
if not exist "%PROGRAM%" (
    echo.
    echo [GALAT] ChargeThreshold.exe tidak ditemukan.
    echo Letakkan berkas EXE di folder yang sama dengan BAT ini.
    exit /b 1
)
echo.
echo Menerapkan ambang berhenti %1%% dan ambang mulai %2%%...
"%PROGRAM%" on %1 %2
exit /b

:STATUS
cls
echo ==================================================
echo                   STATUS BATERAI
echo ==================================================
echo.
if not exist "%PROGRAM%" (
    echo [GALAT] ChargeThreshold.exe tidak ditemukan.
    echo Letakkan berkas EXE di folder yang sama dengan BAT ini.
) else (
    "%PROGRAM%" status
)
goto SELESAI

:NONAKTIF
cls
echo ==================================================
echo          MENONAKTIFKAN AMBANG PENGISIAN
echo ==================================================
echo.
if not exist "%PROGRAM%" (
    echo [GALAT] ChargeThreshold.exe tidak ditemukan.
) else (
    "%PROGRAM%" off
)
goto SELESAI

:SELESAI
echo.
echo --------------------------------------------------
echo Proses selesai. Periksa pesan dari program di atas.
echo --------------------------------------------------
echo.
pause
goto MENU

:AKHIR
endlocal
exit /b
