# Project 3: Conflict Resolution

**Tujuan:** Master merge conflict handling  
**Durasi:** ~1 hour  
**Prerequisite:** Complete Module 5

---

## 📖 Project Overview

Learn to identify, understand, and resolve merge conflicts.

---

## 📋 Exercise

### Step 1: Setup Conflict Scenario

```bash
# Create test file
echo "name=John
age=25" > config.txt

git add config.txt
git commit -m "Initial config"

# Create branch 1
git checkout -b feature/add-email
echo "name=John
age=25
email=john@example.com" > config.txt

git commit -am "Add email"
```

### Step 2: Create Conflicting Changes

```bash
# Switch back to main
git checkout main

# Make different change
echo "name=John Doe
age=26
city=NYC" > config.txt

git commit -am "Update profile info"
```

### Step 3: Attempt Merge

```bash
# Try to merge
git merge feature/add-email

# ERROR: CONFLICT!
# CONFLICT (content merge): Merge conflict in config.txt
```

### Step 4: View Conflict

```bash
cat config.txt

# Output shows markers:
# <<<<<<< HEAD
# name=John Doe
# age=26
# city=NYC
# =======
# name=John
# age=25
# email=john@example.com
# >>>>>>> feature/add-email
```

### Step 5: Resolve Manually

```bash
# Open in editor and fix:
echo "name=John Doe
age=26
email=john@example.com
city=NYC" > config.txt

# Or keep both:
cat > config.txt << 'EOF'
# Profile Configuration
name=John Doe
age=26
email=john@example.com
city=NYC
EOF
```

### Step 6: Complete Merge

```bash
# Stage resolved file
git add config.txt

# Commit merge
git commit -m "Merge feature/add-email - resolved config conflicts"

# Check log
git log --oneline -3
```

---

## ✅ Success Checklist

- [ ] Understand conflict markers
- [ ] Identify conflicting sections
- [ ] Resolve conflicts manually
- [ ] Complete merge

---

## 📚 Next Steps

🎉 **Project 3 Complete!**

→ Continue to **Project 4: Open Source Contribution**

---

*Update your progress!*
