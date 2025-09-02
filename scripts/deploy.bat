@echo off
REM ReactToDo Deployment Helper Script for Windows
REM This script helps you build and deploy your React ToDo application

echo 🚀 ReactToDo Deployment Helper
echo ===============================

REM Check if we're in the right directory
if not exist "todo" (
    echo ❌ Error: Please run this script from the ReactToDo root directory
    echo Current directory: %CD%
    echo Expected structure: ReactToDo\todo\
    pause
    exit /b 1
)

REM Change to the todo directory
cd todo

REM Check if dependencies are installed
if not exist "node_modules" (
    echo 📦 Installing dependencies...
    npm install
    if errorlevel 1 (
        echo ❌ Failed to install dependencies
        pause
        exit /b 1
    )
)

REM Build the application
echo 🔨 Building the application...
set NODE_OPTIONS=--openssl-legacy-provider
npm run build

if errorlevel 1 (
    echo ❌ Build failed
    pause
    exit /b 1
)

echo ✅ Build completed successfully!
echo.
echo 🎉 Your application is ready for deployment!
echo.
echo 📁 Built files are in: %CD%\build\
echo.
echo 🚀 Deployment options:
echo 1. Upload build\ folder contents to your web server
echo 2. Deploy to Netlify: drag build\ folder to netlify.com
echo 3. Deploy to Vercel: run 'vercel' in the todo\ directory
echo 4. Deploy to GitHub Pages: follow the README instructions
echo.
echo 🌐 To test locally: npm install -g serve ^&^& serve -s build
echo.
pause