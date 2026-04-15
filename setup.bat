@echo off
:: --- Vibe-Coder One-Click Setup (Windows) ---
title Vibe-Coder Setup

echo 🚀 Starting Vibe-Coder Setup...

:: 1. Check for Docker
docker --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Error: Docker is not installed or not in PATH.
    pause
    exit /b
)

:: 2. Start Containers
echo 📦 Spinning up Docker containers...
docker-compose up -d

:: 3. Pull the Model
echo 🧠 Pulling Gemma 4 26B (This will take a while)...
docker exec -it ollama-server ollama pull gemma4:26b

:: 4. Success Message
echo.
echo ✅ Setup Complete!
echo 1. Open VS Code in this folder.
echo 2. Configure Cline to use http://localhost:11434
echo 3. Select gemma4:26b and start vibe coding!
pause
