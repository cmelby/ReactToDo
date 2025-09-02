# Deployment Checklist

Use this checklist to ensure you've completed all steps for deploying your ReactToDo application.

## Pre-Deployment

- [ ] Ensure Node.js is installed (version 14 or higher)
- [ ] Navigate to the ReactToDo project directory
- [ ] Run `npm install` in the `todo/` directory
- [ ] Test the application locally with `npm start` (use `NODE_OPTIONS="--openssl-legacy-provider" npm start` for Node.js 17+)

## Building the Application

- [ ] Run the build command:
  - For newer Node.js (17+): `NODE_OPTIONS="--openssl-legacy-provider" npm run build`
  - Or use the helper script: `./scripts/deploy.sh` (Linux/Mac) or `scripts\deploy.bat` (Windows)
- [ ] Verify the `build/` folder was created in the `todo/` directory
- [ ] Check that `build/index.html` exists and contains your app

## Upload Options

### Option 1: GitHub Repository Upload
- [ ] Create a new repository on GitHub
- [ ] Initialize git in your project: `git init`
- [ ] Add files: `git add .`
- [ ] Commit: `git commit -m "Initial commit"`
- [ ] Add remote: `git remote add origin https://github.com/username/repo.git`
- [ ] Push: `git push -u origin main`

### Option 2: GitHub Pages Deployment
- [ ] Upload to GitHub first (see Option 1)
- [ ] Install gh-pages: `npm install --save-dev gh-pages`
- [ ] Add homepage field to package.json
- [ ] Add deploy scripts to package.json
- [ ] Run: `npm run deploy`

### Option 3: Netlify Deployment
- [ ] Build the application (see Building section above)
- [ ] Go to [netlify.com](https://netlify.com)
- [ ] Drag and drop the `build/` folder to the deploy area
- [ ] Or connect your GitHub repository for continuous deployment

### Option 4: Vercel Deployment
- [ ] Build the application (see Building section above)
- [ ] Install Vercel CLI: `npm install -g vercel`
- [ ] Run `vercel` in the `todo/` directory
- [ ] Or connect your GitHub repository on [vercel.com](https://vercel.com)

### Option 5: Manual FTP/Server Upload
- [ ] Build the application (see Building section above)
- [ ] Use an FTP client (FileZilla, WinSCP, etc.)
- [ ] Upload ALL contents of the `build/` folder to your web server's public directory
- [ ] Ensure your server can serve static files
- [ ] Test the deployed application

## Post-Deployment Testing

- [ ] Visit your deployed application URL
- [ ] Test that the ToDo app loads correctly
- [ ] Test adding, editing, and deleting todos
- [ ] Check browser console for any errors
- [ ] Test on different devices/browsers if needed

## Troubleshooting

If you encounter issues:

- [ ] Check that all files from the `build/` folder were uploaded
- [ ] Verify your server supports HTML5 history API (for client-side routing)
- [ ] Check browser developer tools for error messages
- [ ] Ensure your hosting service supports single-page applications

## Notes

- Remember to update the `homepage` field in `package.json` if deploying to a subdirectory
- For production deployments, consider setting up a custom domain
- Enable HTTPS on your hosting platform for security