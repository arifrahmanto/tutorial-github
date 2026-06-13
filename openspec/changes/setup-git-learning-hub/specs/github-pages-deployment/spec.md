## ADDED Requirements

### Requirement: Learner memahami GitHub Pages dan deployment mechanics
Modul HARUS mengajarkan: GitHub Pages setup, branch configuration, dan automatic deployment.

#### Scenario: Learner setup GitHub Pages untuk repository
- **WHEN** learner mengikuti modul "GitHub Pages"
- **THEN** mereka mampu: enable GitHub Pages, select source branch (gh-pages), dan access live site

#### Scenario: Learner understand Pages deployment process
- **WHEN** learner melihat visualisasi GitHub Pages workflow
- **THEN** mereka memahami: push ke gh-pages branch → GitHub automatic build → site live di github.io

### Requirement: Setting up gh-pages branch untuk tutorial repository
Modul HARUS menjelaskan: create gh-pages branch, populate dengan static content, push dan enable Pages.

#### Scenario: Learner create gh-pages branch
- **WHEN** learner setup learning repository dengan Pages
- **THEN** mereka execute: create gh-pages branch, add content, push, verify live at <username>.github.io/tutorial-github

### Requirement: Static site structure dan content management
Modul HARUS menjelaskan: folder structure untuk static site, navigation, linking modules, dan organization.

#### Scenario: Learner organize Pages content
- **WHEN** learner structure static site untuk learning materials
- **THEN** mereka organize: index.md per module, README untuk navigation, linking between pages

### Requirement: Markdown-based static site generation
Modul HARUS menjelaskan: write content di markdown, optionally use Jekyll theme, auto-render Pages.

#### Scenario: Learner write markdown dan GitHub render otomatis
- **WHEN** learner push markdown files ke gh-pages
- **THEN** GitHub automatically render readable HTML without build step (GitHub Pages Jekyll support)

### Requirement: Custom domain setup (optional advanced)
Modul HARUS mention: CNAME file untuk custom domain, DNS configuration, SSL/HTTPS automatic.

#### Scenario: Learner optional setup custom domain
- **WHEN** learner ingin serve tutorial di custom domain
- **THEN** modul explain: CNAME record, DNS setup, GitHub configuration

### Requirement: Hands-on exercise untuk deploy Pages
Modul HARUS link ke playground scenario dimana learner create minimal Pages setup dan see live result.

#### Scenario: Learner practice Pages deployment
- **WHEN** learner mengikuti playground "GitHub Pages Setup"
- **THEN** mereka create gh-pages branch dengan index.md, push, dan verify site live dalam 5 menit

### Requirement: Troubleshooting untuk Pages issues
Modul HARUS cover: Pages not building, branch not found, CNAME issues, 404 pages, caching problems.

#### Scenario: Learner debug Pages not live
- **WHEN** learner push ke gh-pages tetapi site tidak update
- **THEN** troubleshooting menjelaskan: check branch selection, build errors di Actions tab, cache invalidation

### Requirement: GitHub Actions integration untuk Pages deployment
Modul HARUS menjelaskan: GitHub Actions dapat automate Pages build/deploy dari non-gh-pages branch.

#### Scenario: Learner understand Pages deployment automation
- **WHEN** learner melihat Actions workflow untuk Pages
- **THEN** mereka memahami: dapat deploy dari main/docs branch dengan Actions workflow, tidak harus gh-pages
