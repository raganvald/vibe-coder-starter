# 🚀 The Vibe-Coder’s Starter Kit### A 100% Free, Local, & Portable AI Dev Environment
This repository provides a "Self-Driving" base for building web applications using **Gemma 4**, **Ollama**, and **Cline**. Designed for students, hobbyists, and developers who want the power of AI-assisted coding without the subscription fees.

**The Goal:** Turn your gaming laptop into a local coding powerhouse. Clone the repo, spin up the container, and let the AI build your ideas while you "vibe" and oversee the architecture.

---## 🛠 The Stack- 
**AI Engine:** 
  - [Ollama](https://ollama.com) (Running Gemma 4 26B)
**AI Agent:** 
  - [Cline](https://cline.bot) (VS Code Extension) 
**Frontend/Backend:** 
  - Next.js (App Router)
**Database:** 
   - SQLite + Prisma (Zero-config, file-based)
**UI:** 
   - Tailwind CSS + Shadcn/UI

# Requirements
**Hardware:**
 GPU with at least 8GB VRAM (RTX 30/40-series recommended).- 
 **Software:** 
  - [Docker Desktop](https://docker.com)


---## 🏗 Setup Instructions### 

## Instructions for LLM running in Windows
Use this Option for a simpler setup where ollama will run directly in windows
### Clone the repo
```
   Download and install git https://git-scm.com/
   git clone https://github.com
   cd vibe-coder-base
```


### Instructios for Ollama & Gemma Setup (option 1)
Download and Install Ollama https://ollama.com/
In Windows Add user enviornment variables, OLLAMA_KEEPALIVE=-1 OLLAMA_MODELS=D:\OllamaModels, OLLAMA_ORIGINS=*
* Download the latest version of gemma4
```
ollama pull gemma4:26b
ollama run gemma4:26b
>>> /set parameter num_ctx 32768
>>> /save gemma-cline
ollama serve
ollama ps
```

### Visual Stuidio Code Setup
Install cline plugin
Enable terminal bell in settings for notifications

#### Configure CLine & VS Code
Go to settings of cline
Choose ollama and use the address

Chose the moddel gemma-cline:latest

   1. Install Cline plugin
   2. Open Cline settings (Gear icon).
   3. Set API Provider to Ollama.
   4. Set Base URL to http://host.docker.internal:11434
   5. Select gemma-cline from the model list.
   6. Important: Enable "Use Compact Prompt" in Cline settings to prevent timeouts.


## Instructions for LLM running in docker container (option 2)
Use this option if your very concerned about security or portability and you want ollama to within a docker container

1. Additional Prerequisites 
 **Software:** 

  - [NVIDIA Container Toolkit](https://nvidia.com) (Required for GPU speed)
  - [WSL]
  - VS Code + [Cline Extension](https://visualstudio.com)
### 2. One-Click Launch1. **Clone the repo:**
   ```bash
   git clone https://github.com
   cd vibe-coder-base
   ```
   1. Run the Setup Script:
   Right-click setup.ps1 and select Run with PowerShell.
   (This will start the containers and download the 16GB Gemma 4 model automatically).

## 3. Configure Cline in Visual Studio Code

   1. Install the Cline Plugin
   2. Open Cline settings (Gear icon).
   3. Set API Provider to Ollama.
   4. Set Base URL to http://localhost:11434.
   5. Select gemma-cline from the model list.
   6. Important: Enable "Use Compact Prompt" in Cline settings to prevent timeouts.
   7. Set Request Timeout 0

------------------------------
## 💡 How to "Vibe Code"
This repo includes a .clinerules file that makes the AI independent. To start, give Cline a high-level task:

"Build a personal task tracker with a dashboard. Start by creating a plan.md."

## Why this works:

* Plan-First: The AI writes a blueprint before coding to prevent logic loops.
* Audio Alerts: Your PC will beep (terminal bell) when the AI finishes a task or needs your input.
* No-Cost: 100% local. No token limits, no monthly fees.

------------------------------
## 🏎 Performance Tuning (Gamer Laptop Tips)

* 8GB VRAM: Expect ~1-3 tokens per second. It's slower, but the reasoning is superior for coding.
* Plug it in: Ensure your laptop is on the charger. Local LLMs will throttle heavily on battery.
* Check Status: Run ollama ps in your terminal to ensure the model is loaded.

------------------------------
## 🤝 Contributing
This is a community resource to help people learn AI dev for free. If you have a better .clinerules setup or Docker tweaks, please open a PR!
