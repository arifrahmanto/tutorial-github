# Project 1: First Repository

**Tujuan:** Buat repository pertama Anda dan push ke GitHub  
**Durasi:** ~30 menit  
**Prerequisite:** Complete Module 1-2

---

## 📖 Project Overview

Dalam project ini, Anda akan:
1. ✅ Create local Git repository
2. ✅ Configure Git dengan identity
3. ✅ Make first commit
4. ✅ Create GitHub repository
5. ✅ Connect local ke remote
6. ✅ Push code ke GitHub
7. ✅ Verify di GitHub interface

---

## 📋 Step-by-Step Guide

### Step 1: Create Local Repository

```bash
# Create project folder
mkdir my-learning-project
cd my-learning-project

# Initialize Git
git init

# Verify .git folder
ls -la
```

### Step 2: Configure Git Identity

```bash
# Set name
git config user.name "Your Name"

# Set email
git config user.email "your.email@example.com"

# Verify
git config --list
```

### Step 3: Create Initial Files

```bash
# Create README
echo "# My Learning Project

This is my first Git repository.

## About
- Learning Git basics
- Understanding workflow
" > README.md

# Create Python file (or any language)
echo "print('Hello from Git!')" > main.py

# Create .gitignore
echo "__pycache__/" > .gitignore
echo "*.pyc" >> .gitignore
```

### Step 4: Stage & Commit

```bash
# Check status
git status

# Stage all files
git add .

# Check status again
git status

# Make first commit
git commit -m "feat: Initial project setup with README and main script"

# View commit
git log --oneline
```

### Step 5: Create GitHub Repository

1. Go to [github.com/new](https://github.com/new)
2. **Repository name:** `my-learning-project`
3. **Description:** My first learning repository
4. **Visibility:** Public (untuk pembelajaran)
5. Do NOT check "Initialize this repository"
6. Click **Create repository**

### Step 6: Connect Local ke GitHub

```bash
# Copy the repository URL dari GitHub
# (It looks like: https://github.com/your-username/my-learning-project.git)

# Add remote
git remote add origin https://github.com/YOUR-USERNAME/my-learning-project.git

# Verify
git remote -v

# Push to GitHub (first time)
git push -u origin main

# (If main branch doesn't exist locally, Git will handle it)
```

### Step 7: Verify on GitHub

1. Go to your repository on github.com
2. Verify you see:
   - ✓ README.md file
   - ✓ main.py file
   - ✓ .gitignore file
   - ✓ Commit history showing initial commit

---

## ✅ Success Checklist

Mark off as you complete:

- [ ] Local repository created
- [ ] Git identity configured
- [ ] Project files created
- [ ] Files staged with git add
- [ ] First commit created
- [ ] GitHub repository created
- [ ] Repository connected to local (remote added)
- [ ] Code pushed to GitHub
- [ ] Repository verified on GitHub

---

## 📊 Progress Tracking

### Your Journey:

1. **Local Setup** ← You are here
   - [ ] Repository initialized
   - [ ] Git configured
   - [ ] Files committed

2. **Remote Connection** ← Next step
   - [ ] Remote added
   - [ ] Code pushed
   - [ ] Verified on GitHub

**Completion Status:** ___/12 items

---

## 🎯 Expected Outcomes

Setelah complete project ini, Anda seharusnya:

✅ **Visible di GitHub:**
- Public repository with your name
- All files visible in repository
- Commit history shows initial commit
- README.md rendered as landing page

✅ **Team dapat:**
- Clone repository dari GitHub
- See commit history lengkap
- Access all project files
- Understand project dari README

✅ **Technical Requirements Met:**
- Local repository properly initialized
- Git configuration correct (name, email)
- Remote connection established
- Push successful

---

## 🎓 Learning Reflection

**Reflect on your learning:**

Setelah project ini:
- Apa yang Anda pelajari tentang repositories?
- Apa yang paling challenging?
- Berapa lama total waktu dibutuhkan?

*Optional: Write di README notes pribadi atau di PROGRESS.md*
- [ ] Remote connected
- [ ] Code pushed to GitHub
- [ ] Files visible on GitHub.com

---

## 💡 Tips

- **Commit messages:** Be descriptive. "feat: " prefix is convention
- **Repository name:** Use kebab-case (my-project, not MyProject)
- **.gitignore:** Add before first commit untuk avoid committing junk files
- **README.md:** Always include! Help others understand your project

---

## 🎯 Challenge (Optional)

Try these after completing project:

1. **Make second commit**
   - Edit main.py dengan new functionality
   - Commit dengan meaningful message
   - Push ke GitHub

2. **Create branch**
   - Create `feature/add-docs` branch
   - Add documentation
   - Push branch
   - See di GitHub

3. **Explore GitHub Interface**
   - Click branches tab
   - Click commits tab
   - Click files tab
   - See entire history

---

## ❓ Troubleshooting

### "fatal: not a git repository"
Navigate ke your project folder first.

### "Repository already exists on GitHub"
Use different repository name.

### "Permission denied (publickey)"
Update SSH key or use HTTPS authentication.

---

## 📚 Next Steps

🎉 **Project 1 Complete!**

→ Continue to **Project 2: Team Collaboration**

---

*Update your progress in the main [README](../../README.md)!*
