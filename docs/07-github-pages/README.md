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

## ❓ Penyelesaian Masalah

### Problem: "GitHub Pages site tidak tampil"

**Gejala:** Repository settings sudah benar tapi site masih tidak accessible.

**Solusi:**
```bash
# 1. Verify gh-pages branch exists dan pushed
git branch -r | grep gh-pages

# 2. Check Pages settings di GitHub
# Settings > Pages > Ensure gh-pages branch selected

# 3. Check if index.html exists in root
ls -la index.html

# 4. Wait 1-2 menit untuk deployment
```

### Problem: "Jekyll build error"

**Gejala:** Pages menunjukkan "Build failure" notification.

**Solusi:**
- Remove `_config.yml` jika tidak digunakan
- Check Markdown syntax untuk errors
- Lihat build log di GitHub Actions tab

### Problem: "Custom domain tidak working"

**Gejala:** CNAME record dibuat tapi domain tidak resolve.

**Solusi:**
```bash
# 1. Create CNAME file di root
echo "your-domain.com" > CNAME

# 2. Configure DNS records di registrar
# CNAME → username.github.io

# 3. Wait untuk DNS propagation (24-48 jam)

# 4. Test
nslookup your-domain.com
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

## 🎮 Praktik di Playground

Sudah siap? Coba **[Scenario 5: GitHub Actions](../../playground/scenario-5-github-actions-README.md)** untuk deployment automation!

---

## 🔗 Next Steps

✅ Complete module ini → Go to **[Module 8: GitHub Actions](../08-github-actions/)**

---

*Module 7 Complete? Update your progress!*
