# Vibe-Coder Starter Kit: One-Click Setup
Write-Host "🚀 Starting Vibe-Coder Local Environment Setup..." -ForegroundColor Cyan

# 1. Check for Docker
if (!(Get-Command docker -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Error: Docker is not installed. Please install Docker Desktop and try again." -ForegroundColor Red
    exit
}

# 2. Check for NVIDIA GPU / Toolkit
Write-Host "🔍 Checking for NVIDIA GPU support..." -ForegroundColor Yellow
$gpuCheck = docker info | Select-String "Runtimes:.*nvidia"
if (!$gpuCheck) {
    Write-Host "⚠️  Warning: NVIDIA Container Toolkit not detected in Docker." -ForegroundColor Magenta
    Write-Host "The LLM will run on your CPU, which will be SIGNIFICANTLY slower."
    Write-Host "Please install: https://nvidia.com"
}

# 3. Spin up Containers
Write-Host "📦 Starting Ollama container..." -ForegroundColor Cyan
docker-compose up -d

# 4. Pull the Model
$MODEL_NAME = "gemma4:26b" # Or gemma3:27b based on your preference
Write-Host "🧠 Downloading $MODEL_NAME (this may take a few minutes)..." -ForegroundColor Cyan
docker exec -it ollama-server ollama pull $MODEL_NAME

# 5. Final Instructions
Write-Host "`n✅ SETUP COMPLETE!" -ForegroundColor Green
Write-Host "-------------------------------------------------------"
Write-Host "1. Open VS Code and the Cline Extension."
Write-Host "2. Set Provider to 'Ollama' and Base URL to 'http://localhost:11434'."
Write-Host "3. Ensure 'Use Compact Prompt' is ENABLED in Cline settings."
Write-Host "4. Start vibe-coding! 🎸"
Write-Host "-------------------------------------------------------"
Read-Host "Press Enter to exit"
