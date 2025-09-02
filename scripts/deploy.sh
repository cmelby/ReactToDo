#!/bin/bash

# ReactToDo Deployment Helper Script
# This script helps you build and deploy your React ToDo application

echo "🚀 ReactToDo Deployment Helper"
echo "==============================="

# Check if we're in the right directory
if [ ! -d "todo" ]; then
    echo "❌ Error: Please run this script from the ReactToDo root directory"
    echo "Current directory: $(pwd)"
    echo "Expected structure: ReactToDo/todo/"
    exit 1
fi

# Change to the todo directory
cd todo

# Check if dependencies are installed
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
    if [ $? -ne 0 ]; then
        echo "❌ Failed to install dependencies"
        exit 1
    fi
fi

# Build the application
echo "🔨 Building the application..."
NODE_OPTIONS="--openssl-legacy-provider" npm run build

if [ $? -ne 0 ]; then
    echo "❌ Build failed"
    exit 1
fi

echo "✅ Build completed successfully!"
echo ""
echo "🎉 Your application is ready for deployment!"
echo ""
echo "📁 Built files are in: $(pwd)/build/"
echo ""
echo "🚀 Deployment options:"
echo "1. Upload build/ folder contents to your web server"
echo "2. Deploy to Netlify: drag build/ folder to netlify.com"
echo "3. Deploy to Vercel: run 'vercel' in the todo/ directory"
echo "4. Deploy to GitHub Pages: follow the README instructions"
echo ""
echo "🌐 To test locally: npm install -g serve && serve -s build"