# Module 2: Perintah Dasar Git

**Durasi:** ~1 jam  
**Prerequisite:** Complete Module 1 atau punya existing Git repository

---

## 📖 Konsep

### Git Workflow Recap

```
Working Directory ──[git add]──► Staging Area ──[git commit]──► Repository
     (Files)                      (Staged)                      (History)
```

### 10 Essential Git Commands

| Command | Purpose |
|---------|---------|
| `git init` | Initialize new repository |
| `git config` | Configure user identity |
| `git add` | Stage files untuk commit |
| `git commit` | Save changes dengan message |
| `git push` | Upload ke remote repository |
| `git pull` | Download dari remote |
| `git log` | View commit history |
| `git status` | Check current state |
| `git diff` | Compare changes |
| `git reset` | Undo changes |

---

## 🔍 Visualisasi

### Git Staging Area

```
┌──────────────────────────────────────────────────┐
│            GIT REPOSITORY LIFECYCLE              │
├──────────────────────────────────────────────────┤
│                                                  │
│  Working Dir     Staging Area    Commit History │
│  ────────────    ────────────    ──────────────  │
│  .md files       (staging)       commit 1        │
│  .js files   ──► [git add] ────► commit 2        │
│  .json files                      commit 3        │
│                                                  │
│                   git commit                     │
│                   ─────────────                  │
│              "Save the snapshot"                │
│                                                  │
└──────────────────────────────────────────────────┘
```

### Commit History Visualization

```
main branch:

o ─ o ─ o ─ o (current HEAD)
│   │   │   │
│   │   │   └─ Commit 4: "Add feature X"
│   │   └───── Commit 3: "Fix bug Y"
│   └───────── Commit 2: "Initial project setup"
└───────────── Commit 1: "Initial commit"
```

---

## 🎯 Hands-On Exercise

### 1. git status - Check Current State

```bash
# Go to your repository
cd my-first-repo

# Check status
git status

# Output should show:
# On branch main
# Your branch is up to date with 'origin/main'.
# nothing to commit, working tree clean
```

### 2. git add - Stage Files

```bash
# Create new file
echo "# Learning Git" > notes.md

# Check status
git status
# Output: 
# Untracked files:
#   notes.md

# Stage file
git add notes.md

# Check status again
git status
# Output:
# Changes to be committed:
#   new file: notes.md
```

### 3. git commit - Save Snapshot

```bash
# Commit staged file
git commit -m "docs: Add learning notes"

# Message format: type: description
# Types: feat, fix, docs, style, refactor, test

# Check status
git status
# Now clean again
```

### 4. git log - View History

```bash
# Basic log
git log

# One-line format (cleaner)
git log --oneline

# With graph
git log --oneline --graph

# Last N commits
git log -5

# See specific file history
git log -- notes.md
```

### 5. git diff - Compare Changes

```bash
# Modify file
echo "## More notes" >> notes.md

# See what changed
git diff

# After staging
git add notes.md
git diff --staged

# Compare two commits
git diff commit1 commit2
```

### 6. git push - Upload to Remote

```bash
# After committing
git push origin main

# -u flag (first time): Set upstream tracking
git push -u origin main

# Future pushes: simpler
git push
```

### 7. git pull - Download from Remote

```bash
# If others made changes
git pull origin main

# Equivalent to: git fetch + git merge
```

### 8. git reset - Undo Changes

```bash
# Undo staging (keep file changes)
git reset notes.md

# Undo last commit (keep changes in working dir)
git reset HEAD~1

# Hard reset (⚠️ CAREFUL: loses changes!)
git reset --hard HEAD~1
```

---

## 💡 Real-World Example

### Linux Kernel Commits

```bash
# See professional commit messages
git clone https://github.com/torvalds/linux.git
cd linux

# View recent commits
git log --oneline -10

# Example output:
# abc1234 x86: Use native ELF format for x32
# def5678 docs: Add security.rst to index
# ghi9012 net: Fix TCP socket leak
```

**Notice:**
- Clear, descriptive messages
- Reference issue numbers
- Atomic changes (one logical change per commit)
- Proper formatting

---

## ❓ Troubleshooting

### "Changes not staged for commit"

**Problem:** File modified tapi belum staged.

**Solution:**
```bash
# Review changes
git diff file.txt

# Stage file
git add file.txt

# Then commit
git commit -m "message"
```

### "fatal: not a git repository"

**Problem:** Running git commands outside repository.

**Solution:**
```bash
cd /path/to/repository
```

### "nothing added to commit but untracked files present"

**Problem:** New files belum tracked oleh Git.

**Solution:**
```bash
# Stage untracked files
git add .
# or
git add filename.txt
```

### "Your branch is ahead of 'origin/main' by X commits"

**Problem:** Local commits belum di-push.

**Solution:**
```bash
# Push commits
git push origin main
```

### Large File Accidentally Added

**Problem:** Commit file besar (video, zip).

**Solution:**
```bash
# Remove from staging
git reset large-file.zip

# Add ke .gitignore
echo "large-file.zip" >> .gitignore

# Remove dari history (if already committed)
git rm --cached large-file.zip
```

---

## ✅ Success Criteria

Anda berhasil modul ini jika:
- [ ] Understand 10 basic Git commands
- [ ] Practice staging files
- [ ] Create commits dengan clear messages
- [ ] View commit history
- [ ] Push dan pull dari GitHub
- [ ] Handle undo scenarios

---

## 🔗 Next Steps

✅ Complete module ini → Go to **[Module 3: Manajemen Cabang](../03-manajemen-cabang/)**

---

## 📚 Resources

- [Git Basics - Git Documentation](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)
- [Common Git Commands - GitHub Docs](https://docs.github.com/en/get-started/using-git/about-git)

---

*Module 2 Complete? Update your progress in the main [README](../../README.md) checklist!*
