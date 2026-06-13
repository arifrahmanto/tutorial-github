## ADDED Requirements

### Requirement: Learner memahami Pull Requests dan collaborative workflow
Modul HARUS mengajarkan cara membuat PR, menulis PR description, dan collaborative review process.

#### Scenario: Learner membuat PR pertama
- **WHEN** learner mengikuti modul "Kolaborasi Tim"
- **THEN** mereka mampu: push branch ke GitHub, membuat PR, menulis description, dan respond terhadap feedback

#### Scenario: Learner memahami PR workflow
- **WHEN** learner melihat visualisasi PR lifecycle
- **THEN** mereka memahami: create → review → request changes → approve → merge → delete branch

### Requirement: Code review best practices dan etiquette
Modul HARUS menjelaskan: memberikan constructive feedback, reviewing checklist, dan respecting reviewer time.

#### Scenario: Learner sebagai reviewer
- **WHEN** learner menerima PR dari team member
- **THEN** mereka tahu cara review kode, memberikan feedback, dan approve atau request changes

### Requirement: Protected branches dan merge requirements
Modul HARUS menjelaskan: branch protection rules, require reviews sebelum merge, CI checks, dan conflict resolution.

#### Scenario: Learner understand merge blockers
- **WHEN** learner membuat PR tetapi ada merge conflict atau failing CI
- **THEN** modul menjelaskan blocks dan cara resolvenya

### Requirement: Hands-on playground untuk team scenarios
Modul HARUS link ke scenario: dua developer membuat PR ke branch yang sama, mereka resolve conflicts, dan merge.

#### Scenario: Learner practice team collaboration
- **WHEN** learner mengikuti playground scenario "Team Collaboration"
- **THEN** mereka simulate dua developer dengan branches yang diverge, review PR, dan merge

### Requirement: GitHub discussions dan notifications
Modul HARUS menjelaskan: PR comments, code suggestions, notifications, dan threading conversations.

#### Scenario: Learner engage dalam PR discussion
- **WHEN** learner melihat PR discussion thread
- **THEN** mereka tahu cara memberikan inline code comments, suggestions, dan participate constructively

### Requirement: Troubleshooting untuk collaboration issues
Modul HARUS cover: stale PR, false merge conflicts, reviewer burnout mitigation, communication best practices.

#### Scenario: Learner resolve stale PR
- **WHEN** learner punya PR yang tertinggal dari main branch
- **THEN** troubleshooting menjelaskan cara update branch dan re-request review
