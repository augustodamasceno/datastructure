@echo off
REM ############################################
REM # This script is part of the datastructure project.
REM # Installer
REM # Copyright (c) 2024, Augusto Damasceno.
REM # All rights reserved.
REM # SPDX-License-Identifier: BSD-2-Clause
REM ############################################

SETLOCAL

where python >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo Python is not installed. Please install Python before running this script.
    pause
    exit /b 1
)

python -m venv venv

IF NOT EXIST "venv\Scripts\activate.bat" (
    echo Failed to create virtual environment.
    pause
    exit /b 1
)

call venv\Scripts\activate.bat

pip install -r requirements.txt

echo Virtual environment setup complete and dependencies installed.
pause
