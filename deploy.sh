#!/bin/bash

echo "=========================================="
echo "🚀 Quick Deployment Setup"
echo "=========================================="
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git initialized"
else
    echo "✅ Git already initialized"
fi

# Create .gitignore if it doesn't exist
if [ ! -f .gitignore ]; then
    echo "📝 Creating .gitignore..."
    echo "✅ .gitignore created"
fi

# Add all files
echo ""
echo "📦 Adding files to git..."
git add .

# Commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit - Stroke Analysis Web App"

echo ""
echo "=========================================="
echo "✅ Repository Setup Complete!"
echo "=========================================="
echo ""
echo "📋 Next Steps:"
echo ""
echo "1️⃣  Create a GitHub repository:"
echo "   → Go to https://github.com/new"
echo "   → Create a new repository (e.g., 'stroke-analysis-app')"
echo "   → DON'T initialize with README"
echo ""
echo "2️⃣  Connect to GitHub:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3️⃣  Deploy on Render.com:"
echo "   → Go to https://render.com"
echo "   → Sign in with GitHub"
echo "   → Click 'New +' → 'Web Service'"
echo "   → Select your repository"
echo "   → Click 'Create Web Service'"
echo ""
echo "⏱️  Deployment will take 5-10 minutes"
echo "🌐 Your app will be live at: https://YOUR-APP-NAME.onrender.com"
echo ""
echo "=========================================="
