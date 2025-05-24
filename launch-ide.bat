@echo off
set REPO_PATH=%1

REM Search for C++ files (*.cpp, *.c, *.h, *.hpp) recursively
dir /S /B "%REPO_PATH%\*.cpp" >nul 2>&1
if %errorlevel%==0 (
    echo C++ files detected — opening in CodeLite...
    start "" "C:\Program Files\CodeLite\codelite.exe" "%REPO_PATH%"
) else (
    echo No C++ files detected — opening in VS Code...
    start "" code "%REPO_PATH%"
)