@echo off
cd /d "%~dp0"

python --version >nul 2>&1
if errorlevel 1 (
  echo Python not found. Please install Python from https://python.org
  echo Or open index.html with VSCode Live Server.
  pause
  exit /b 1
)

echo Starting server at http://localhost:8765 ...
start /b python -m http.server 8765 2>nul
timeout /t 2 /nobreak >nul
start "" "http://localhost:8765"
echo Server is running. Close this window to stop.
pause >nul
