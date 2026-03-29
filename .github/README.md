# GitHub Pages Deployment

This folder contains the GitHub Actions workflow for deploying the Screenshot Gallery to GitHub Pages.

## Workflow: `static.yml`

### Purpose
Automatically deploys the gallery website (including all screenshots) to GitHub Pages when changes are pushed to the `main` branch.

### Features
- **Automatic deployment** on every push to `main`
- **Manual trigger** support via workflow_dispatch
- **Index.html validation** - verifies the file exists before deployment
- **Full repository upload** - includes all screenshots in `artifacts/screenshots/`

### Setup Requirements
1. Repository must have GitHub Pages enabled in Settings
2. Source should be set to "GitHub Actions"
3. Workflow requires `GITHUB_TOKEN` permissions:
   - `contents: read`
   - `pages: write`
   - `id-token: write`

### Deployment Process
1. Checkout repository
2. Verify `index.html` exists
3. Configure GitHub Pages
4. Upload entire repository as artifact
5. Deploy to GitHub Pages

### URL
After deployment, the gallery will be available at:
`https://[username].github.io/[repository-name]/`
