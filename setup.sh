#!/bin/bash

# --- Vibe-Coder One-Click Setup (Linux/WSL2) ---
echo "🚀 Starting Vibe-Coder Setup..."

# 1. Check for Docker
if ! [ -x "$(command -v docker)" ]; then
  echo '❌ Error: docker is not installed.' >&2
  exit 1
fi

# 2. Check for NVIDIA Container Toolkit
if ! docker info | grep -q "Runtimes:.* nvidia"; then
  echo "⚠️ Warning: NVIDIA Container Toolkit not detected in Docker."
  echo "Models will run on CPU only, which is VERY slow."
  read -p "Continue anyway? (y/n) " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
  fi
fi

# 3. Start Containers
echo "📦 Spinning up Docker containers..."
docker-compose up -d

# 4. Pull the Model
echo "🧠 Pulling Gemma 4 26B (This will take a while)..."
docker exec -it ollama-server ollama pull gemma4:26b

# 5. Success Message
echo ""
echo "✅ Setup Complete!"
echo "1. Open VS Code in this folder."
echo "2. Configure Cline to use http://localhost:11434"
echo "3. Select gemma4:26b and start vibe coding!"
