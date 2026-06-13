# Project 2: Team Collaboration

**Tujuan:** Learn team collaboration dengan multiple branches dan pull requests  
**Durasi:** ~1.5 hours  
**Prerequisite:** Complete Module 3-4

---

## 📖 Project Overview

Simulate team environment dengan:
1. Multiple feature branches
2. Pull requests dengan reviews
3. Merge conflicts handling
4. Branch protection rules

---

## 📋 Scenario

You and a teammate working on feature. Both create changes, simulate code review, merge.

### Step 1: Create Feature Branch

```bash
# From main
git checkout -b feature/add-api-endpoint

# Create new file
echo "def get_user(user_id):
    return {'id': user_id, 'name': 'User'}" > api.py

# Commit
git add api.py
git commit -m "feat: Add get_user API endpoint"

# Push
git push -u origin feature/add-api-endpoint
```

### Step 2: Create Pull Request

On GitHub:
1. Click "Compare & pull request"
2. **Title:** Add user API endpoint
3. **Description:** Implement basic get_user endpoint
4. Create PR

### Step 3: Simulate Teammate Changes

```bash
# Switch to main
git checkout main

# Create another branch
git checkout -b feature/add-docs

# Edit README
echo "## API Documentation

### get_user(user_id)
Get user by ID" >> README.md

# Commit
git add README.md
git commit -m "docs: Add API documentation"

# Push
git push -u origin feature/add-docs
```

### Step 4: Create Second PR

Create another PR for feature/add-docs branch.

### Step 5: Review & Merge First PR

```
On GitHub:
1. Go to feature/add-api-endpoint PR
2. Click "Review changes"
3. Add comment: "Looks good!"
4. Approve
5. Merge pull request
```

### Step 6: Handle Merge

```bash
# After merge on GitHub
git checkout main
git pull origin main

# See api.py in main now
cat api.py
```

### Step 7: Clean Up

```bash
# Delete local branch
git branch -d feature/add-api-endpoint

# Delete remote branch
git push origin -d feature/add-api-endpoint
```

---

## ✅ Success Checklist

- [ ] Created feature branch
- [ ] Made commits
- [ ] Created pull request
- [ ] Reviewed PR
- [ ] Merged to main
- [ ] Updated local repo
- [ ] Deleted branches

---

## 🎯 Advanced Challenge

Try simulating actual merge conflict:

```bash
# Create branch 1
git checkout -b feature/update-config
echo "version=2.0" > config.txt
git commit -am "feat: Update version"
git push origin feature/update-config

# Create branch 2
git checkout -b feature/add-logging
echo "logging=enabled" > config.txt
git commit -am "feat: Add logging"
git push origin feature/add-logging

# Merge first branch
git checkout main
git pull
git merge feature/update-config

# Try merge second - CONFLICT!
git merge feature/add-logging
# Will have conflict

# Resolve manually
# Then: git add config.txt
# Then: git commit -m "Merge: resolve config conflict"
```

---

## 📚 Next Steps

🎉 **Project 2 Complete!**

→ Continue to **Project 3: Conflict Resolution**

---

*Update your progress!*
