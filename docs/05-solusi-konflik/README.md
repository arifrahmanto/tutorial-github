# Module 5: Solusi Konflik

**Durasi:** ~1 jam  
**Prerequisite:** Complete Module 3-4

---

## 📖 Konsep

### Apa itu Merge Conflict?

Merge conflict terjadi saat Git tidak bisa automatically merge two branches karena keduanya edit same part dari file.

```
BEFORE:              AFTER (Branch A):     AFTER (Branch B):
line 1               line 1                line 1
line 2               line 2 [CHANGED A]    line 2 [CHANGED B]  ← CONFLICT!
line 3               line 3                line 3
```

### Conflict Markers

```
<<<<<<< HEAD              (Current branch - what you have)
   Your content here
=======                   (Divider)
   Their content here
>>>>>>> feature-branch    (Incoming branch - what they have)
```

---

## 🔍 Visualisasi

### 3-Way Merge

```
BASE (Common ancestor):
code v1

OURS (Current branch):
code v2 [We changed it]

THEIRS (Merge branch):
code v3 [They changed it]

RESULT:
Git confused! Manual resolution needed.
```

### Resolution Options

```
1. KEEP OURS
   ─► Use your version only

2. KEEP THEIRS
   ─► Use their version only

3. COMBINE BOTH
   ─► Keep both versions
   
4. CUSTOM MERGE
   ─► Manually edit to desired state
```

---

## 🎯 Hands-On Exercise

### 1. Create Scenario

```bash
# Create test repo
mkdir merge-test && cd merge-test
git init

# Create initial file
echo "version = 1.0" > config.txt
git add .
git commit -m "Initial config"

# Create branch
git checkout -b feature-x
```

### 2. Make Changes on Feature Branch

```bash
# Edit file on feature-x
echo "version = 1.5
debug = true" > config.txt

git add config.txt
git commit -m "feature-x: Add debug flag"
```

### 3. Make Conflicting Changes on Main

```bash
# Switch to main
git checkout main

# Edit same file differently
echo "version = 2.0
log_level = INFO" > config.txt

git add config.txt
git commit -m "main: Upgrade version"
```

### 4. Attempt Merge

```bash
# Try merge
git merge feature-x

# Output:
# CONFLICT (content merge): Merge conflict in config.txt
# Automatic merge failed; fix conflicts and then commit
```

### 5. View Conflict

```bash
# Open file to see markers
cat config.txt

# Output:
# <<<<<<< HEAD
# version = 2.0
# log_level = INFO
# =======
# version = 1.5
# debug = true
# >>>>>>> feature-x
```

### 6. Resolve Conflict

```bash
# Option 1: Keep both (combine)
echo "version = 2.0
log_level = INFO
debug = true" > config.txt

# Option 2: Use merge tool
git mergetool

# Option 3: Manual - use text editor, remove markers
```

### 7. Complete Merge

```bash
# Stage resolved file
git add config.txt

# Commit merge
git commit -m "Merge feature-x: Combined config changes"

# Verify merge
git log --oneline -3
```

---

## 💡 Prevention Strategies

### 1. Frequent Pulling

```bash
# Pull before starting work
git pull origin main

# Work on small, focused changes
```

### 2. Short-Lived Branches

```bash
# Feature branches: 1-3 days max
git checkout -b feature/quick-fix
# ... make minimal changes ...
git push && create PR
```

### 3. Clear Code Ownership

```bash
# Different team members edit different files
# Reduces conflicts
```

### 4. Good Communication

```
"I'm working on auth.js"
vs
"I'm working on something"
```

---

## ❓ Troubleshooting

### "Abort Merge"

**Problem:** Merge too complex, want to start over.

**Solution:**
```bash
# Cancel merge
git merge --abort

# Start over
git pull origin main
```

### "Conflict but File Looks Fine"

**Problem:** Binary file conflict (image, PDF).

**Solution:**
```bash
# Keep your version
git checkout --ours image.png

# Or keep theirs
git checkout --theirs image.png

# Complete merge
git add image.png
git commit
```

### "Resolve Same Conflict Multiple Times"

**Problem:** Same conflict keeps appearing.

**Solution:**
```bash
# Use git rerere (remember resolution)
git config rerere.enabled true

# Git remembers how you resolved it
```

---

## ✅ Success Criteria

Anda berhasil modul ini jika:
- [ ] Understand conflict markers
- [ ] Manually resolve conflicts
- [ ] Understand 3-way merge
- [ ] Complete merge after resolution
- [ ] Know prevention strategies

---

## 🔗 Next Steps

✅ Complete module ini → Go to **[Module 6: Strategi Implementasi](../06-strategi-implementasi/)**

---

*Module 5 Complete? Update your progress!*
