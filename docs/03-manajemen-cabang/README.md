# Module 3: Manajemen Cabang

**Durasi:** ~1 jam  
**Prerequisite:** Complete Module 2

---

## 📖 Konsep

### Apa itu Branch?

Branch adalah independent line of development. Memungkinkan Anda bekerja di feature terpisah tanpa affect main code.

```
main branch:    o ─ o ─ o ─ o (production)
                      │
feature-x branch:    └─ o ─ o ─ o ─ o (your work)
                            │
bug-fix branch:             └─ o ─ o (parallel work)
```

### Branch Naming Conventions

```
feature/user-authentication
feature/dark-mode
bugfix/login-error
hotfix/security-patch
docs/update-readme
refactor/database-layer
```

**Format:** `type/description-with-hyphens`

---

## 🔍 Visualisasi

### Branch Lifecycle

```
START (on main)
  │
  ├─► git branch feature-x
  │   (Create branch)
  │
  ├─► git checkout feature-x
  │   (Switch to branch)
  │
  ├─► Make commits
  │   (Work on feature)
  │
  ├─► git push origin feature-x
  │   (Push branch)
  │
  ├─► Create PR
  │   (Ask for review)
  │
  ├─► Code review & merge
  │   (Integrate changes)
  │
  └─► Delete branch
      (Cleanup)
```

### Merge Process

```
Before Merge:
feature-x: ─ o ─ o ─ o
                    │
main:     ─ o ─ o ─ o

After Merge:
─ o ─ o ─ o ─ o ─ o ─ o (main + feature-x)
```

---

## 🎯 Hands-On Exercise

### 1. Create New Branch

```bash
# Create branch
git branch feature-profile-page

# List branches
git branch
# Output:
# * main
#   feature-profile-page

# Create dan switch sekaligus
git checkout -b feature-dark-mode
# Modern: git switch -c feature-dark-mode
```

### 2. Switch Between Branches

```bash
# Switch branch
git checkout feature-profile-page

# Verify current branch
git branch
# Output:
# * feature-profile-page
#   main
```

### 3. Make Changes pada Branch

```bash
# Create file
echo "# Profile Page

User profile interface." > profile.md

# Stage dan commit
git add profile.md
git commit -m "feat: Add profile page structure"

# Check history
git log --oneline -5
```

### 4. Push Branch ke GitHub

```bash
# Push branch
git push origin feature-profile-page

# Setup upstream (first time)
git push -u origin feature-profile-page
```

### 5. Switch Back to Main

```bash
# Switch ke main
git checkout main

# Verify file doesn't exist
ls profile.md
# File tidak ada - it's di feature-profile-page branch saja
```

### 6. Merge Branch

```bash
# Ensure di main branch
git checkout main

# Merge feature branch
git merge feature-profile-page

# Verify file now exists
ls profile.md
# Now file ada karena merge

# Check log
git log --oneline -3
```

### 7. Delete Branch

```bash
# Delete local branch
git branch -d feature-profile-page

# Delete remote branch
git push origin -d feature-profile-page

# List branches
git branch
# feature-profile-page no longer listed
```

---

## 💡 Real-World Example

### GitHub Flow (Recommended untuk team projects)

```bash
# 1. Create feature branch dari main
git checkout -b feature/add-search

# 2. Make commits
git commit -m "feat: Add search input component"
git commit -m "feat: Implement search logic"

# 3. Push branch
git push origin feature/add-search

# 4. Create PR on GitHub
# (Open browser to repository)

# 5. After PR approved & merged
# Delete branch
git branch -d feature/add-search
```

---

## ❓ Troubleshooting

### "fatal: A branch named 'X' already exists"

**Problem:** Branch sudah ada.

**Solution:**
```bash
# Use different name
git checkout -b feature-new-name

# Or checkout existing branch
git checkout existing-branch
```

### "Your branch has diverged"

**Problem:** Branch dan main have different history.

**Solution:**
```bash
# Rebase untuk sync
git rebase origin/main

# Or merge
git merge origin/main
```

### "Merge conflict!"

**Problem:** Dua branch edit same file.

**Solution:**
```bash
# Resolve conflicts manually
# Edit conflicted files

# Mark resolved
git add resolved-file.txt

# Complete merge
git commit -m "Merge feature-x with conflict resolution"
```

### "Can't delete branch - not fully merged"

**Problem:** Branch punya unpushed commits.

**Solution:**
```bash
# Force delete (careful!)
git branch -D branch-name

# Or push dan merge first
git push origin branch-name
```

---

## ✅ Success Criteria

Anda berhasil modul ini jika:
- [ ] Create branches dengan proper naming
- [ ] Switch antara branches
- [ ] Push branches ke GitHub
- [ ] Merge branches ke main
- [ ] Delete branches
- [ ] Handle branch conflicts

---

## 🎮 Praktik di Playground

Sudah siap? Coba **[Scenario 2: Branching](../../playground/scenario-2-branching-README.md)** untuk latihan interaktif!

---

## 🔗 Next Steps

✅ Complete module ini → Go to **[Module 4: Kolaborasi Tim](../04-kolaborasi-tim/)**

---

## 📚 Resources

- [Git Branching - Git Documentation](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell)
- [GitHub Flow Guide](https://guides.github.com/introduction/flow/)

---

*Module 3 Complete? Update your progress in the main [README](../../README.md) checklist!*
