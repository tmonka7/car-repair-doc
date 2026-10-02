@echo off
setlocal EnableExtensions EnableDelayedExpansion
chcp 65001 >nul
cd /d "%~dp0"

set "ROOT=%CD%"
set "PS1=%ROOT%\md-to-docx-pdf.ps1"

if not exist "%PS1%" (
  echo Missing %PS1%
  exit /b 1
)

if /i "%~1"=="/?" goto USAGE
if /i "%~1"=="-h" goto USAGE
if /i "%~1"=="--help" goto USAGE

if not "%~1"=="" (
  set "TARGET=%~1"
  set "FMT=%~2"
  if "!FMT!"=="" set "FMT=both"
  goto RUN
)

:MENU
echo.
echo ========================================
echo  Markdown to DOCX / PDF
echo  Folder: %ROOT%
echo ========================================
echo.
echo  1^) One file to DOCX
echo  2^) One file to PDF
echo  3^) One file to both
echo  4^) ALL .md files to DOCX
echo  5^) ALL .md files to PDF
echo  6^) ALL .md files to both
echo  0^) Exit
echo.
set /p "CHOICE=Choose: "
if "!CHOICE!"=="0" exit /b 0
if "!CHOICE!"=="1" set "FMT=docx" & goto PICK_ONE
if "!CHOICE!"=="2" set "FMT=pdf" & goto PICK_ONE
if "!CHOICE!"=="3" set "FMT=both" & goto PICK_ONE
if "!CHOICE!"=="4" set "TARGET=all" & set "FMT=docx" & goto RUN
if "!CHOICE!"=="5" set "TARGET=all" & set "FMT=pdf" & goto RUN
if "!CHOICE!"=="6" set "TARGET=all" & set "FMT=both" & goto RUN
echo Invalid choice.
goto MENU

:PICK_ONE
set /p "TARGET=Path to .md file: "
set "TARGET=!TARGET:"=!"
if not exist "!TARGET!" (
  echo File not found: !TARGET!
  pause
  goto MENU
)
goto RUN

:USAGE
echo.
echo Convert Markdown guides to Word (.docx) or PDF.
echo.
echo Usage:
echo   md-to-docx-pdf.bat
echo   md-to-docx-pdf.bat "path\file.md" [docx^|pdf^|both]
echo   md-to-docx-pdf.bat all [docx^|pdf^|both]
echo.
echo Drag a .md file onto this script to export DOCX and PDF.
echo Output:
echo   export\docx\...
echo   export\pdf\...
echo.
echo Uses Pandoc. If it is missing, the script installs it with winget.
echo PDF is printed with Edge or Chrome; Word is used if the browser fails.
echo.
exit /b 0

:RUN
echo.
powershell -NoProfile -ExecutionPolicy Bypass -File "%PS1%" -Target "!TARGET!" -Format "!FMT!" -Root "%ROOT%"
set "RC=%ERRORLEVEL%"
echo.
if "%~1"=="" pause
exit /b %RC%
