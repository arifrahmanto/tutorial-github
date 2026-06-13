# Project 4: Open Source Contribution

**Tujuan:** Learn fork-based contribution workflow untuk open source  
**Durasi:** ~1.5 hours  
**Prerequisite:** Complete Module 1-4

---

## 📖 Project Overview

Learn complete OSS contribution workflow:
1. Fork repository
2. Setup upstream remote
3. Create feature branch
4. Make contribution
5. Create PR
6. Handle feedback

---

## 📋 Exercise: Contribute to Example Repo

For learning, use our educational repository:
`https://github.com/example-org/oss-learning`

### Step 1: Fork Repository

1. Go to repository on GitHub
2. Click **Fork** button
3. Creates copy di your account

### Step 2: Clone Your Fork

```bash
# Clone YOUR fork (not original!)
git clone https://github.com/YOUR-USERNAME/oss-learning.git
cd oss-learning
```

### Step 3: Setup Upstream

```bash
# Add upstream remote
git remote add upstream https://github.com/example-org/oss-learning.git

# Verify remotes
git remote -v
# Output:
# origin    YOUR fork URL
# upstream  original repo URL
```

### Step 4: Create Feature Branch

```bash
# Sync dengan upstream first
git fetch upstream

# Create feature branch
git checkout -b feature/add-docs

# Make changes
echo "## Getting Started" >> README.md

git commit -am "docs: Add getting started section"
```

### Step 5: Keep Fork Updated

```bash
# Before pushing, sync dengan upstream
git fetch upstream

# Rebase on upstream
git rebase upstream/main

# Or merge
git merge upstream/main
```

### Step 6: Push to Your Fork

```bash
git push origin feature/add-docs
```

### Step 7: Create PR to Upstream

On GitHub:
1. Go to original repository
2. Click "Pull requests"
3. Click "New pull request"
4. Select `upstream/main` ← `your-fork/feature/add-docs`
5. Fill PR description:
   ```
   ## What
   - Add getting started guide
   
   ## Why
   - Help new contributors
   
   Closes #123
   ```

### Step 8: Handle Feedback

```bash
# Make requested changes
git commit -am "docs: Address reviewer feedback"

# Push - PR updates automatically
git push origin feature/add-docs
```

### Step 9: After Merge

```bash
# Celebrate! 🎉

# Update local main
git checkout main
git fetch upstream
git merge upstream/main

# Delete branch
git branch -d feature/add-docs
```

---

## ✅ Success Checklist

- [ ] Fork repository
- [ ] Clone fork locally
- [ ] Setup upstream remote
- [ ] Create feature branch
- [ ] Make meaningful changes
- [ ] Keep fork updated
- [ ] Create PR to upstream
- [ ] Handle reviewer feedback
- [ ] PR merged to upstream

---

## 💡 OSS Best Practices

✅ **Do:**
- Read CONTRIBUTING.md first
- Check for existing issues
- Reference issue number in PR
- Keep commits focused
- Write clear commit messages
- Respond to feedback promptly

❌ **Don't:**
- Fork without reading guidelines
- Make massive changes
- Ignore code style
- Neglect tests
- Get frustrated with feedback

---

## 📚 Next Steps

🎉 **Project 4 Complete!**

**You've completed all learning projects! 🚀**

Next:
- 🎮 Explore Playground Scenarios
- 📝 Review all Modules
- 🌐 Contribute to real open source projects!

---

*You're officially ready untuk contribute to open source! 🎊*
