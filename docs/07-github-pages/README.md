# Module 7: GitHub Pages Deployment

**Durasi:** ~45 menit  
**Prerequisite:** Complete Module 1-2

---

## 📖 Konsep

### What is GitHub Pages?

GitHub Pages adalah free static site hosting directly dari GitHub repository.

```
Your Repository (main branch)
        │
        ├─ gh-pages branch
        │   └─ index.html, CSS, JS
        │       (deployed automatically)
        │
        └─► https://username.github.io/repo-name
```

### Static vs Dynamic

- **Static**: HTML, CSS, JS files (what GitHub Pages hosts)
- **Dynamic**: Requires server, database (GitHub Pages doesn't support)

---

## 🎯 Hands-On: Setup GitHub Pages

### 1. Create gh-pages Branch

```bash
# From main branch
git checkout main

# Create new branch
git checkout -b gh-pages

# Or orphan branch (no history)
git checkout --orphan gh-pages
```

### 2. Create Static Content

```bash
# Create index.html
echo '<!DOCTYPE html>
<html>
<head>
    <title>My Learning Hub</title>
</head>
<body>
    <h1>Welcome to Tutorial GitHub</h1>
    <p>Learning Git and GitHub</p>
    <a href="docs/01-pembuatan-repositori/">Module 1</a>
</body>
</html>' > index.html

# Create CSS
echo 'body {
    font-family: Arial, sans-serif;
    max-width: 1000px;
    margin: 0 auto;
    padding: 20px;
}' > style.css
```

### 3. Commit & Push

```bash
# Stage files
git add index.html style.css

# Commit
git commit -m "docs: Add GitHub Pages initial content"

# Push gh-pages branch
git push -u origin gh-pages
```

### 4. Configure GitHub Pages

```
On GitHub:
1. Go to Settings
2. Scroll to "GitHub Pages" section
3. Source: Select "Deploy from a branch"
4. Branch: gh-pages
5. Folder: / (root)
6. Save
```

### 5. Access Your Site

```
Your site will be live at:
https://username.github.io/repository-name

(Takes ~1 minute to deploy)
```

---

## ✅ Success Criteria

Anda berhasil modul ini jika:
- [ ] Create gh-pages branch
- [ ] Create static content (HTML, CSS)
- [ ] Configure GitHub Pages settings
- [ ] Access live site
- [ ] Update content dan redeploy

---

## 🔗 Next Steps

✅ Complete module ini → Go to **[Module 8: GitHub Actions](../08-github-actions/)**

---

*Module 7 Complete? Update your progress!*
