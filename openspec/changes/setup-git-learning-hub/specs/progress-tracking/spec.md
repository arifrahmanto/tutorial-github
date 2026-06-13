## ADDED Requirements

### Requirement: Progress tracking dengan markdown checklist
Sistem HARUS menyediakan checklist structure per modul dan sample project untuk learner track progress.

#### Scenario: Learner fork repository dan update checklist
- **WHEN** learner mengikuti learning path
- **THEN** mereka fork repo, update checklist di README per module, dapat lihat progress visually

#### Scenario: Learner check off completed items
- **WHEN** learner selesai lesson atau exercise
- **THEN** mereka check off item di checklist (using `- [x]` markdown syntax), commit change, see progress accumulate

### Requirement: Checklist structure per modul
Setiap modul HARUS punya checklist dengan sections: Konsep, Visualisasi, Hands-On, Real-world, Troubleshooting.

#### Scenario: Learner track modul completion
- **WHEN** learner membuka modul README
- **THEN** mereka lihat checklist dengan 5 sections, dapat check off saat selesai setiap section

### Requirement: Learning project progress tracking
Learning projects HARUS punya master checklist dengan sub-checklist untuk setiap project task.

#### Scenario: Learner track project progress
- **WHEN** learner working di learning project
- **THEN** mereka lihat master checklist dengan 4 projects, setiap project punya sub-tasks checklist

### Requirement: Summary dashboard di README
Repository README HARUS menampilkan high-level progress overview dengan link ke detailed checklists.

#### Scenario: Learner see progress at a glance
- **WHEN** learner membuka repository README
- **THEN** mereka lihat: 8 modul dengan completion %, 4 projects dengan status, motivational progress visualization

### Requirement: Optional: Per-user progress tracking via GitHub Discussions or Issues
Repository DAPAT support optional discussion thread dimana learner share progress, ask questions, mentor dapat respond.

#### Scenario: Learner join community discussion
- **WHEN** learner ingin share progress atau ask questions
- **THEN** mereka create discussion post di Discussions tab, community dapat engage

### Requirement: No external database or authentication required
Progress tracking HARUS work tanpa external dependencies, pure markdown-based dengan Git as source of truth.

#### Scenario: Learner tidak perlu login ke external system
- **WHEN** learner tracking progress
- **THEN** mereka simply fork repo dan commit checklist changes, pure Git-based

### Requirement: Gamification elements (optional badges)
Repository DAPAT include optional emoji badges atau achievement markers di checklist untuk motivation.

#### Scenario: Learner see achievement markers
- **WHEN** learner complete modul atau project
- **THEN** README dapat show emoji badge (e.g., 🎉 untuk modul selesai, 🚀 untuk project launch)
