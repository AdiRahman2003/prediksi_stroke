# 🚀 Deployment Guide - Stroke Analysis Web App

## Deployment Options

### Option 1: Render.com (Recommended - FREE)

#### Prerequisites

1. GitHub account
2. Render.com account (sign up with GitHub)

#### Steps:

**1. Push to GitHub**

```bash
# Initialize git (if not already)
git init
git add .
git commit -m "Initial commit for deployment"

# Create a new repository on GitHub, then:
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git branch -M main
git push -u origin main
```

**2. Deploy on Render**

1. Go to https://render.com
2. Sign in with GitHub
3. Click "New +" → "Web Service"
4. Connect your GitHub repository
5. Configure:
   - **Name**: stroke-analysis-app
   - **Environment**: Python 3
   - **Build Command**: `pip install -r requirements.txt`
   - **Start Command**: `gunicorn app:app`
   - **Instance Type**: Free
6. Click "Create Web Service"
7. Wait 5-10 minutes for deployment
8. Your app will be live at: `https://stroke-analysis-app.onrender.com`

---

### Option 2: Railway.app (FREE with limits)

#### Steps:

**1. Push to GitHub** (same as above)

**2. Deploy on Railway**

1. Go to https://railway.app
2. Sign in with GitHub
3. Click "New Project" → "Deploy from GitHub repo"
4. Select your repository
5. Railway will auto-detect Flask app
6. Click "Deploy"
7. Your app will be live at: `https://YOUR_APP.up.railway.app`

---

### Option 3: PythonAnywhere (FREE)

#### Steps:

**1. Upload Files**

1. Go to https://www.pythonanywhere.com
2. Create free account
3. Go to "Files" tab
4. Upload all your project files

**2. Install Dependencies**

```bash
pip install --user -r requirements.txt
```

**3. Configure Web App**

1. Go to "Web" tab
2. Click "Add a new web app"
3. Choose "Flask"
4. Set source code path
5. Configure WSGI file
6. Reload web app
7. Your app will be live at: `https://YOUR_USERNAME.pythonanywhere.com`

---

### Option 4: Vercel (Serverless)

#### Steps:

**1. Install Vercel CLI**

```bash
npm install -g vercel
```

**2. Create vercel.json**
Already created in your project

**3. Deploy**

```bash
vercel
# Follow the prompts
# Choose default settings
```

Your app will be live at: `https://YOUR_APP.vercel.app`

---

## 📝 Important Notes

### File Size Limits

- Some platforms have file size limits
- Consider using `.gitignore` for large model files
- Upload large files separately or use cloud storage

### Environment Variables

- Keep sensitive data in environment variables
- Don't commit API keys or passwords

### Database

- Current app uses CSV files
- For production, consider using:
  - PostgreSQL (Render provides free tier)
  - MongoDB
  - Firebase

### Performance

- Free tiers may have cold starts
- Response time may be slower than local
- Consider upgrading for production use

---

## 🔒 Security Checklist

- [ ] Set `debug=False` in production
- [ ] Use environment variables for secrets
- [ ] Add `.gitignore` for sensitive files
- [ ] Enable HTTPS (automatic on most platforms)
- [ ] Add rate limiting if needed

---

## 📊 Monitoring

After deployment, monitor:

- Response times
- Error rates
- Memory usage
- Request counts

Most platforms provide free monitoring dashboards.

---

## 🆘 Troubleshooting

### App won't start

- Check logs in platform dashboard
- Verify all dependencies in requirements.txt
- Ensure start command is correct

### Slow performance

- Optimize data loading
- Use caching
- Upgrade to paid tier

### File not found errors

- Check file paths (use relative paths)
- Ensure all files are committed to git

---

## 📞 Support

For deployment issues:

- Render: https://render.com/docs
- Railway: https://docs.railway.app
- PythonAnywhere: https://help.pythonanywhere.com

---

**Good luck with your deployment! 🚀**
