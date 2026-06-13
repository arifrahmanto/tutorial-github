# Module 4: Kolaborasi Tim di Git

**Durasi:** ~1.5 jam  
**Prerequisite:** Complete Module 3

---

## 📖 Konsep

### Pull Request (PR) Workflow

PR adalah cara untuk propose changes, review, dan merge ke main branch dalam team environment.

```
Feature Branch ──► Create PR ──► Code Review ──► Approved ──► Merge to Main
  (Your work)      (Request)    (Team reviews)   (Feedback)   (Integrate)
```

### Why Pull Requests Matter

- **Code Review**: Team ensure code quality
- **Discussion**: Discuss changes sebelum merge
- **CI/CD Integration**: Automated tests run sebelum merge
- **Audit Trail**: Track why changes were made

---

## 🔍 Visualisasi

### PR Lifecycle

```
1. CREATE BRANCH
   └─► feature/new-feature

2. MAKE COMMITS
   └─► git commit -m "..."

3. PUSH TO GITHUB
   └─► git push origin feature/...

4. OPEN PR
   └─► "Compare & pull request" button on GitHub
       ├─ Title: Clear description
       ├─ Description: Why, what, how
       └─ Link to related issues

5. CODE REVIEW
   └─► Team members review
       ├─ Approve: ✓
       ├─ Request changes: ✏️
       └─ Comment: 💬

6. ADDRESS FEEDBACK
   └─► Make requested changes
       └─► New commit pushed
           └─► PR updates automatically

7. MERGE
   └─► "Merge pull request" button
       └─► Delete branch

8. CLOSE ISSUE
   └─► Issue automatically closes
```

---

## 🎯 Hands-On Exercise

### 1. Create Feature Branch & Make Changes

```bash
# Create feature branch
git checkout -b feature/add-documentation

# Create file
echo "# Getting Started

## Installation

## Usage" > GUIDE.md

# Stage dan commit
git add GUIDE.md
git commit -m "docs: Add getting started guide"
```

### 2. Push Branch

```bash
# Push ke GitHub
git push -u origin feature/add-documentation

# Open GitHub browser
# Go to your repository
```

### 3. Create PR on GitHub

```
On GitHub:
1. Click "Compare & pull request" button
   (or go to "Pull requests" tab → "New pull request")

2. Fill PR form:
   Title: "Add getting started guide"
   
   Description:
   """
   ## What
   - Add comprehensive getting started guide
   - Include installation steps
   
   ## Why
   - Help new contributors onboard faster
   - Reduce support questions
   
   ## Testing
   - Manual verification only
   - No breaking changes
   
   Closes #123
   """

3. Click "Create pull request"
```

### 4. Handle PR Review Feedback

```bash
# Reviewer suggest change via PR comment

# Make requested changes locally
echo "## Advanced Setup" >> GUIDE.md

# Stage dan commit
git add GUIDE.md
git commit -m "docs: Add advanced setup section"

# Push - PR updates automatically!
git push origin feature/add-documentation
```

### 5. Merge PR

```
On GitHub:
1. After approval, click "Merge pull request"
2. Select merge strategy:
   - Create a merge commit (default)
   - Squash and merge
   - Rebase and merge

3. Click "Merge"

Optional: Click "Delete branch" untuk auto-cleanup
```

### 6. Update Local Repo

```bash
# Switch to main
git checkout main

# Pull merged changes
git pull origin main

# Delete local branch
git branch -d feature/add-documentation

# Verify file exists
cat GUIDE.md
```

---

## 💡 Real-World Example

### GitHub PR Best Practices

**Good PR description includes:**

```
## Problem
Users report unclear installation instructions.

## Solution
Add comprehensive getting started guide with:
- Prerequisites checklist
- Step-by-step installation
- Troubleshooting section

## Changes
- Add GUIDE.md with 5 sections
- Update README with link
- Add badges untuk dependencies

## Testing
- Tested with Node 16 dan 18
- Manual verification on macOS dan Linux
- No breaking API changes

## Screenshots
[If applicable]

Closes #456
Related to #123
```

---

## ❓ Troubleshooting

### "Merge conflict in PR"

**Problem:** PR dapat't merge karena conflicts.

**Solution:**
```bash
# Locally resolve conflicts
git checkout feature-branch
git merge main

# Resolve conflict files manually
# git add resolved-files
# git commit

# Push again
git push origin feature-branch
```

### "PR got outdated"

**Problem:** Main branch moved forward.

**Solution:**
```bash
# Update PR branch
git fetch origin
git merge origin/main

# Or rebase
git rebase origin/main

# Push updates
git push origin feature-branch
```

### "Accidentally committed to main"

**Problem:** Made commit di main instead of feature branch.

**Solution:**
```bash
# Undo last commit (keep changes)
git reset HEAD~1

# Create feature branch
git checkout -b feature-fix

# Commit properly
git add .
git commit -m "feat: Fix"
```

---

## ✅ Success Criteria

Anda berhasil modul ini jika:
- [ ] Create PR dengan good description
- [ ] Review PR dari teammate
- [ ] Handle feedback dan request changes
- [ ] Merge PR successfully
- [ ] Cleanup branches

---

## 🔗 Next Steps

✅ Complete module ini → Go to **[Module 5: Solusi Konflik](../05-solusi-konflik/)**

---

*Module 4 Complete? Update your progress!*
