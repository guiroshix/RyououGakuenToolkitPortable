@echo off
setlocal

echo === RyououGakuenToolkit Windows Setup ===
echo.

where winget >nul 2>nul
if errorlevel 1 (
    echo ERROR: winget not found.
    echo Install App Installer from Microsoft Store.
    pause
    exit /b 1
)

echo Installing MSYS2...
winget install -e --id MSYS2.MSYS2

if errorlevel 1 (
    echo.
    echo ERROR: MSYS2 installation failed.
    pause
    exit /b 1
)

echo.
echo MSYS2 installed successfully.
echo.
echo Open "MSYS2 UCRT64" terminal and run:
echo.
echo pacman -S --needed mingw-w64-ucrt-x86_64-gcc make mingw-w64-ucrt-x86_64-libpng mingw-w64-ucrt-x86_64-zlib
echo.

pause
