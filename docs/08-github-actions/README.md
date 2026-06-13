# Module 8: Deployment dengan GitHub Actions

**Durasi:** ~1.5 jam  
**Prerequisite:** Complete Module 1-2

---

## 📖 Konsep

### What is GitHub Actions?

GitHub Actions adalah automation platform integrated ke GitHub. Run tasks (build, test, deploy) setiap kali push atau event lain.

```
Event (push, PR, schedule)
        │
        ├─► GitHub Action triggered
        │
        ├─► Run steps (build, test, deploy)
        │
        └─► Success or fail notification
```

### Workflow Components

- **Trigger**: Event yang mulai workflow (push, PR, schedule)
- **Job**: Set of steps yang run in parallel atau sequential
- **Step**: Individual command atau action
- **Action**: Reusable unit dari automation

---

## 🎯 Hands-On: Create Workflow

### 1. Create Workflow File

```bash
# Navigate to repo
cd tutorial-github

# Create workflow directory (if not exists)
mkdir -p .github/workflows

# Create workflow file
cat > .github/workflows/test-and-deploy.yml << 'EOF'
name: Test and Deploy

on:
  push:
    branches: [main, gh-pages]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest
    
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      
      - name: Run validation
        run: |
          echo "Validating content..."
          test -d docs && echo "✓ docs folder exists"
          test -d playground && echo "✓ playground folder exists"
          echo "✓ Validation passed!"

  deploy:
    needs: test
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/gh-pages'
    
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      
      - name: Deploy notification
        run: echo "Deploying to GitHub Pages..."
EOF
```

### 2. Commit dan Push

```bash
# Add workflow file
git add .github/workflows/test-and-deploy.yml

# Commit
git commit -m "ci: Add GitHub Actions workflow"

# Push
git push origin main
```

### 3. Monitor Workflow

```
On GitHub:
1. Go to "Actions" tab
2. See workflow runs
3. Click run untuk see details
4. View logs per step
```

---

## ✅ Success Criteria

Anda berhasil modul ini jika:
- [ ] Create workflow YAML file
- [ ] Understand workflow triggers
- [ ] Monitor workflow execution
- [ ] Understand success/failure
- [ ] Know basic GitHub Actions components

---

## 📚 Resources

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Workflow Syntax](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions)

---

*Module 8 Complete? Congratulations - All Modules Done!*

**Next Steps:**
- 🎮 Practice dengan Playground Scenarios
- 📦 Complete Learning Projects
- 🚀 Contribute ke open source projects!
