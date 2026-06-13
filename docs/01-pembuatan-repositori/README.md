# Module 1: Pembuatan Repositori Git

**Durasi:** ~45 menit  
**Prerequisite:** Menginstall Git, punya GitHub account

---

## 📖 Konsep

### Apa itu Git Repository?

Git repository adalah folder yang di-track oleh Git. Repository menyimpan:
- 📝 Semua file project Anda
- 💾 History dari setiap perubahan
- 🌳 Branch dan tags
- 📊 Metadata tentang changes (siapa, kapan, why)

### Local Repository vs Remote Repository

```
┌──────────────────┐              ┌──────────────────┐
│  LOCAL MACHINE   │              │   GITHUB.COM     │
│  (Your Computer) │              │ (Remote Server)  │
│                  │              │                  │
│  .git/ folder    │ ─── sync ─► │  Repository      │
│  Your files      │              │                  │
│  Commit history  │              │                  │
└──────────────────┘              └──────────────────┘
     (Local Repo)                    (Remote Repo)
```

### Git Workflow Dasar

```
1. MODIFY FILES
   └─► Edit file di text editor
   
2. STAGE CHANGES
   └─► git add file.txt
       (Prepare untuk commit)
   
3. COMMIT
   └─► git commit -m "message"
       (Save snapshot)
   
4. PUSH
   └─► git push origin main
       (Send ke remote)
```

---

## 🔍 Visualisasi

### Setup Flow Diagram

```
START
  │
  ├─► git init
  │   (Initialize repo)
  │
  ├─► Configure git config
  │   (Set name & email)
  │
  ├─► Create files
  │   (Add README.md, etc)
  │
  ├─► git add .
  │   (Stage files)
  │
  ├─► git commit -m "Initial"
  │   (Make first commit)
  │
  ├─► Create GitHub repository
  │   (Via github.com)
  │
  ├─► git remote add origin <url>
  │   (Connect local to GitHub)
  │
  └─► git push -u origin main
      (Upload to GitHub)
      
SUCCESS ✓
```

---

## 🎯 Hands-On Exercise

### Step 1: Create Local Repository

```bash
# Create folder
mkdir my-first-repo
cd my-first-repo

# Initialize Git
git init

# Verify Git ini initialized
ls -la
# You should see .git/ folder
```

### Step 2: Configure Git User

```bash
# Set your name
git config user.name "Nama Anda"

# Set your email
git config user.email "email@example.com"

# Verify configuration
git config --list
```

### Step 3: Create First File

```bash
# Create README.md
echo "# My First Repository

This is my first Git repository for learning Git and GitHub.

## About Me
- Learning Git
- Exploring open source
" > README.md

# Check file created
cat README.md
```

### Step 4: Stage & Commit

```bash
# Check status
git status

# Add file to staging
git add README.md

# Check status again
git status

# Commit dengan message
git commit -m "feat: Initial commit with README"

# Check commit history
git log
```

### Step 5: Create GitHub Repository

1. Go to [github.com/new](https://github.com/new)
2. Repository name: `my-first-repo`
3. Description: (optional)
4. Choose: Public (untuk learning) atau Private
5. Do NOT initialize dengan README (Anda sudah punya lokal)
6. Click "Create repository"

### Step 6: Connect Local ke GitHub

```bash
# Add remote (copy URL dari GitHub)
git remote add origin https://github.com/<your-username>/my-first-repo.git

# Verify remote
git remote -v

# Push lokal ke GitHub
git push -u origin main

# -u flag: upstream tracking untuk future push/pull
```

### Step 7: Verify

```bash
# Check local history
git log

# Check GitHub repository
# Go to https://github.com/<your-username>/my-first-repo
# Anda should see README.md di GitHub!
```

---

## 💡 Real-World Example

### GitHub CLI Repository

Linux di-maintain dengan GitHub (moving dari email patches). Lihat first commit:

```bash
# Clone Linux repo (warning: huge!)
git clone https://github.com/torvalds/linux.git

# See first commit
git log --reverse | head -20

# Lihat initial commit structure
git show <first-commit-hash>
```

**Observations:**
- Massive history (1.2M+ commits)
- Organized branch structure
- Professional commit messages
- Distributed development model

---

## ❓ Troubleshooting

### Error: "fatal: not a git repository"

**Problem:** Running git commands outside repository.

**Solution:**
```bash
# Navigate ke repository folder
cd path/to/repository

# Verify .git exists
ls -la
```

### Error: "Please tell me who you are"

**Problem:** Git user.name dan user.email belum configure.

**Solution:**
```bash
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

### Error: "Repository already exists"

**Problem:** GitHub repository sudah ada dengan nama yang sama.

**Solution:**
- Gunakan nama berbeda
- Atau hapus existing repository terlebih dahulu

### Remote URL Salah

**Problem:** `git push` fail, connection refused.

**Solution:**
```bash
# Check current remote
git remote -v

# Remove wrong remote
git remote remove origin

# Add correct remote
git remote add origin https://github.com/correct-url.git
```

### .git folder tidak muncul

**Problem:** Folder `.git` hidden di beberapa sistem.

**Solution:**
```bash
# Linux/Mac: Show hidden files
ls -la

# Windows (PowerShell):
Get-ChildItem -Force

# Or unhide .git di File Explorer
```

---

## ✅ Success Criteria

Anda berhasil modul ini jika:
- [ ] Bisa create local Git repository
- [ ] Configure Git user identity
- [ ] Make first commit
- [ ] Create GitHub repository
- [ ] Connect local ke remote
- [ ] Push commit ke GitHub
- [ ] See code di GitHub repository

---

## 🎮 Praktik di Playground

Sudah siap? Coba **[Scenario 1: First Commit](../../playground/scenario-1-first-commit-README.md)** untuk latihan interaktif!

---

## 🔗 Next Steps

✅ Complete module ini → Go to **[Module 2: Perintah Dasar](../02-perintah-dasar/)**

---

## 📚 Resources

- [Git Documentation: Getting Started](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)
- [GitHub Quickstart](https://docs.github.com/en/get-started/quickstart)
- [Git First Steps](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)

---

*Module 1 Complete? Update your progress in the main [README](../../README.md) checklist!*
