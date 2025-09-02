# ReactToDo

A simple and elegant React-based ToDo application built with Create React App.

## 🚀 Quick Start

### Prerequisites
- Node.js (version 14 or higher)
- npm or yarn package manager
- Git (for version control)

### Local Setup

1. **Clone or download this repository**
   ```bash
   git clone https://github.com/cmelby/ReactToDo.git
   cd ReactToDo/todo
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start the development server**
   ```bash
   # On newer Node.js versions (17+), you may need to use:
   NODE_OPTIONS="--openssl-legacy-provider" npm start
   
   # Or on older versions:
   npm start
   ```
   
   The app will open automatically in your browser at `http://localhost:3000`

4. **Build for production**
   ```bash
   # On newer Node.js versions (17+), you may need to use:
   NODE_OPTIONS="--openssl-legacy-provider" npm run build
   
   # Or on older versions:
   npm run build
   ```

## 📤 How to Upload/Deploy Your Repository

### 🚀 Quick Deploy (Automated)

We've included helper scripts to make deployment easier:

```bash
# For Linux/Mac users:
./scripts/deploy.sh

# For Windows users:
scripts\deploy.bat
```

These scripts will automatically build your project and provide deployment options.

### Option 1: Upload to GitHub (Recommended)

If you have this project on your desktop and want to upload it to GitHub:

1. **Create a new repository on GitHub**
   - Go to [GitHub](https://github.com) and sign in
   - Click the "+" icon and select "New repository"
   - Name your repository (e.g., "my-react-todo")
   - Don't initialize with README (since you already have files)

2. **Upload from your desktop**
   ```bash
   # Navigate to your project folder
   cd path/to/your/ReactToDo
   
   # Initialize git (if not already done)
   git init
   
   # Add all files
   git add .
   
   # Make your first commit
   git commit -m "Initial commit"
   
   # Add your GitHub repository as remote
   git remote add origin https://github.com/yourusername/your-repo-name.git
   
   # Push to GitHub
   git branch -M main
   git push -u origin main
   ```

### Option 2: Deploy to GitHub Pages

1. **Install the gh-pages package**
   ```bash
   cd todo
   npm install --save-dev gh-pages
   ```

2. **Add deployment scripts to package.json**
   ```json
   {
     "homepage": "https://yourusername.github.io/your-repo-name",
     "scripts": {
       "predeploy": "npm run build",
       "deploy": "gh-pages -d build"
     }
   }
   ```

3. **Deploy**
   ```bash
   NODE_OPTIONS="--openssl-legacy-provider" npm run deploy
   ```

### Option 3: Deploy to Netlify

1. **Build your project**
   ```bash
   cd todo
   NODE_OPTIONS="--openssl-legacy-provider" npm run build
   ```

2. **Manual Upload**
   - Go to [Netlify](https://www.netlify.com/)
   - Drag and drop the `build` folder to Netlify's deploy area
   - Your site will be live instantly!

3. **Or connect your GitHub repository**
   - Push your code to GitHub first (see Option 1)
   - On Netlify, click "New site from Git"
   - Connect your GitHub account and select your repository
   - Set build command: `NODE_OPTIONS="--openssl-legacy-provider" npm run build`
   - Set publish directory: `todo/build`

### Option 4: Deploy to Vercel

1. **Build your project**
   ```bash
   cd todo
   NODE_OPTIONS="--openssl-legacy-provider" npm run build
   ```

2. **Deploy with Vercel CLI**
   ```bash
   # Install Vercel CLI globally
   npm install -g vercel
   
   # Deploy
   cd todo
   vercel
   ```

3. **Or connect via GitHub**
   - Push to GitHub first (see Option 1)
   - Go to [Vercel](https://vercel.com/)
   - Import your GitHub repository
   - Set framework preset to "Create React App"
   - Deploy!

### Option 5: Manual FTP Upload

1. **Build your project**
   ```bash
   cd todo
   NODE_OPTIONS="--openssl-legacy-provider" npm run build
   ```

2. **Upload the build folder**
   - Use an FTP client (FileZilla, WinSCP, etc.)
   - Upload all contents of the `build` folder to your web server's public directory
   - Ensure your server can serve static files

## 🛠️ Development

### Available Scripts (in the `todo` directory)

- `npm start` - Runs the app in development mode (use `NODE_OPTIONS="--openssl-legacy-provider" npm start` for Node.js 17+)
- `npm test` - Launches the test runner
- `npm run build` - Builds the app for production (use `NODE_OPTIONS="--openssl-legacy-provider" npm run build` for Node.js 17+)
- `npm run eject` - Ejects from Create React App (irreversible)

### Project Structure

```
ReactToDo/
├── README.md           # This file
├── scripts/           # Deployment helper scripts
│   ├── deploy.sh      # Linux/Mac deployment script
│   └── deploy.bat     # Windows deployment script
└── todo/              # Main React application
    ├── public/        # Static files
    ├── src/           # Source code
    │   ├── components/    # React components
    │   ├── pages/         # Page components
    │   └── App.js         # Main App component
    ├── package.json   # Dependencies and scripts
    └── build/         # Production build (created after npm run build)
```

## 🐛 Troubleshooting

### Build Issues

If you encounter the error `error:0308010C:digital envelope routines::unsupported`:

```bash
# Use this command instead of npm run build
NODE_OPTIONS="--openssl-legacy-provider" npm run build
```

This is due to changes in OpenSSL in newer Node.js versions and the older webpack version in this project.

### Node.js Version Issues

This project was built with an older version of Create React App. For best compatibility:
- Use Node.js version 14-16
- Or use the `NODE_OPTIONS="--openssl-legacy-provider"` flag for newer versions

## 📝 Learn More

- [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started)
- [React documentation](https://reactjs.org/)
- [Deployment options](https://create-react-app.dev/docs/deployment/)
- [Detailed Deployment Checklist](DEPLOYMENT.md) - Step-by-step deployment guide