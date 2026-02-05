@echo off
set NODE_ENV=development
echo [1/2] Installing dependencies (fixing conflicts)...
call npm install --legacy-peer-deps
echo [2/2] Starting server...
echo Server should start shortly on port 3000.
call npx tsx watch server/_core/index.ts
pause
