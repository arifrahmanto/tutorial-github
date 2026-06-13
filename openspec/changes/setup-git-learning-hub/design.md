## Context

Repository pembelajaran Git/GitHub akan menjadi hub centralized untuk developer baru. Struktur dan tooling harus mendukung:
- Learning path yang terstruktur dari fundamental hingga advanced
- Hands-on practice dengan scenario yang reproducible
- Progress tracking tanpa kompleksitas berlebihan
- Static site yang mudah diakses dan di-update
- Deployment automation tanpa overhead maintenance tinggi

Stakeholders: Developer baru, contributor yang ingin belajar, maintainer repository.

## Goals / Non-Goals

**Goals:**
- Menyediakan 8 modul pembelajaran dengan konsep, visualisasi, exercise, example, dan troubleshooting
- Membuat 5 playground scenarios yang learner bisa clone dan practice ulang
- Mendukung 4 learning projects dengan escalating complexity
- Deploy static site ke GitHub Pages via `gh-pages` branch
- Implement progress tracking dengan checklist per modul
- Setup GitHub Actions untuk automated build dan Netlify deployment
- Dokumentasi dalam Bahasa Indonesia yang accessible untuk junior developer

**Non-Goals:**
- Interactive web-based exercises (gunakan static diagrams saja)
- Automated grading atau testing framework yang kompleks
- Video tutorials atau media pembelajaran selain teks dan diagram
- Real-time collaboration features
- Commercial hosting atau infrastructure di luar GitHub/Netlify

## Decisions

### 1. Repository Struktur: Multi-root Organization
**Decision:** Gunakan 4 folder utama (`docs/`, `playground/`, `sample-projects/`, `github-pages-demo/`) dengan clear separation of concerns.

**Rationale:** 
- Memudahkan navigation dan maintenance
- Learner tahu kemana mencari materi vs. playground vs. examples
- GitHub Pages build dari folder terpisah mengurangi noise di repo root

**Alternatives considered:**
- Monolithic folder → terlalu kompleks, sulit dicari
- Dynamic content generation → overhead, learner perlu build tools
- Pilihan lain: Single `/content/` folder → less organized, harder to scale

### 2. GitHub Pages Hosting: gh-pages Branch
**Decision:** Deploy static site ke branch `gh-pages` (standard GitHub Pages).

**Rationale:**
- Native GitHub Pages support tanpa konfigurasi eksternal
- Simple workflow: push ke gh-pages → automatic deployment
- Memungkinkan repo tetap bersih, content terpisah

**Alternatives considered:**
- `/docs` folder di main branch → less flexibility
- External hosting (Vercel, GitHub Pages via docs/) → unnecessary overhead

### 3. Deployment: GitHub Actions + Netlify
**Decision:** Gunakan GitHub Actions untuk trigger Netlify deploy saat push ke `gh-pages`.

**Rationale:**
- GitHub Actions native, no additional setup needed
- Netlify build preview untuk QA sebelum merge
- Automatic deployment pipeline yang maintainable
- Learner lihat CI/CD workflow dalam action

**Alternatives considered:**
- Direct GitHub Pages without Netlify → less preview capability
- Manual deployment → error-prone

### 4. Progress Tracking: Markdown Checklists
**Decision:** Gunakan checklist dalam format Markdown (`- [ ] Item`) di setiap module untuk track progress.

**Rationale:**
- Lightweight, tidak perlu database
- Learner bisa fork repo dan update checklist sendiri
- Simple visual feedback (progress bar di markdown viewers yang support)
- Mudah maintain

**Alternatives considered:**
- Database/backend system → overkill, add maintenance burden
- External progress tracker → learner perlu akun tambahan
- Interactive dashboard → complex to maintain

### 5. Content Structure: Per-Module Template
**Decision:** Setiap modul mengikuti template identik: Konsep → Visualisasi → Hands-On → Real-world → Troubleshooting.

**Rationale:**
- Consistent learning experience
- Easy to scale dan add modules
- Learner tahu apa expect di setiap section

### 6. Playground Reproducibility: Branch-based Scenarios
**Decision:** Setiap scenario di playground adalah branch terpisah dengan instructions untuk "reset" atau try ulang.

**Rationale:**
- Learner bisa clone, practice, kemudian git reset untuk coba lagi
- Branches terawat, tidak merusak main content
- Clear workflow untuk setiap scenario

### 7. Visual Elements: Static Diagrams Only
**Decision:** Gunakan ASCII art, Mermaid diagrams, atau static images. Tidak ada interactive visual tools.

**Rationale:**
- Learner fokus pada concepts, bukan tool complexity
- Static diagrams lebih mudah version-controlled dan di-maintain
- Cukup untuk mengilustrasikan Git workflows

## Risks / Trade-offs

| Risk | Mitigation |
|------|-----------|
| Content bisa ketinggalan update GitHub/Git features | Regular review schedule, community PRs untuk update. Tag terbaru tested. |
| Checklist progress tracking tidak sync across devices | Learner manage sendiri via fork; option future: sync via API. |
| Playground scenarios bisa stale jika branch tidak di-maintain | Auto-archive old scenarios, maintain hanya 5 aktif. Clear deprecation path. |
| Static diagrams bisa hard to update saat evolusi Git workflows | Diagrams modular, centralized reference untuk easy bulk-updates. |
| Learner clone entire repo mungkin berat untuk pure learning | Provide sparse-checkout instruction, atau separate playground-only branch. |

## Migration Plan

**Phase 1: Infrastructure Setup**
- Setup `gh-pages` branch
- Configure GitHub Pages settings
- Setup Netlify integration with GitHub Actions

**Phase 2: Content Authoring**
- Create folder structure
- Write 8 modules dengan full template per module
- Create sample projects dengan README per project

**Phase 3: Playground Setup**
- Create 5 scenario branches di playground/
- Write step-by-step instructions per scenario
- Test reproducibility

**Phase 4: GitHub Pages Static Site**
- Build static site (HTML/CSS) dari markdown content
- Deploy ke gh-pages via GitHub Actions
- Test deployment workflow

**Phase 5: Launch & Iterate**
- Add progress tracking checklist
- Gather feedback dari early learners
- Iterate on content berdasarkan feedback

**Rollback:** Jika ada masalah, revert branch atau disable GitHub Pages. Content tetap accessible via raw GitHub links.

## Open Questions

1. **Learner Authentication**: Apakah perlu track individual learner progress ke database, atau pure markdown checklist sufficient?
2. **Search/Navigation**: Apakah static site perlu search functionality, atau GitHub's native search enough?
3. **Feedback Loop**: Bagaimana collect feedback dari learner - Issues, Discussions, atau embedded form di site?
4. **Community Contribution**: Apakah open untuk community submit content, atau curated-only?
5. **Localization**: Just Bahasa Indonesia, atau support multilingual di masa depan?
