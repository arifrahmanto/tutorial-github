## ADDED Requirements

### Requirement: Learner memahami popular Git strategies dan kapan menggunakannya
Modul HARUS mengajarkan 3 strategi utama: Git Flow, GitHub Flow, dan trunk-based development dengan trade-off masing-masing.

#### Scenario: Learner pilih strategi yang tepat
- **WHEN** learner mengikuti modul "Strategi Implementasi Git"
- **THEN** mereka mampu: explain Git Flow for releases, GitHub Flow for agility, trunk-based untuk continuous deployment

#### Scenario: Learner visualisasi strategy workflow
- **WHEN** learner melihat diagram untuk setiap strategy
- **THEN** mereka memahami: branch structure, release process, dan hotfix handling per strategy

### Requirement: Git Flow untuk release management
Modul HARUS menjelaskan: develop/main branching, release branches, hotfixes, dengan timing kapan applicable.

#### Scenario: Learner follow Git Flow release cycle
- **WHEN** learner working di project dengan release cycle tetap (versi semantic)
- **THEN** mereka tahu: maintain develop branch, create release branches, merge hotfixes

### Requirement: GitHub Flow untuk agile/continuous deployment
Modul HARUS menjelaskan: simple main branch + feature branches, PR-driven, immediate merge capability.

#### Scenario: Learner implement GitHub Flow
- **WHEN** learner working di project dengan continuous deployment
- **THEN** mereka tahu: create feature branch dari main, PR review, merge langsung ke production

### Requirement: Trunk-based development untuk high-velocity teams
Modul HARUS menjelaskan: short-lived branches, rapid integration, feature flags, dan minimum branching complexity.

#### Scenario: Learner adopt trunk-based approach
- **WHEN** learner di team yang ingin maximize deployment frequency
- **THEN** mereka tahu: short branch lifetime, frequent integrations, feature toggle strategy

### Requirement: Hands-on scenarios untuk setiap strategy
Modul HARUS link ke 3 scenarios demonstrating setiap strategy dengan realistic workflow.

#### Scenario: Learner practice Git Flow full cycle
- **WHEN** learner mengikuti scenario "Git Flow Full Cycle"
- **THEN** mereka execute: develop fitur, create release branch, merge ke main, handle hotfix

#### Scenario: Learner practice GitHub Flow rapid iteration
- **WHEN** learner mengikuti scenario "GitHub Flow Iteration"
- **THEN** mereka execute: rapid feature branches, PR, immediate merges simulating continuous deployment

### Requirement: Real-world examples dari projects terkenal
Modul HARUS menunjukkan: GitHub CLI uses GitHub Flow, Linux kernel uses modified Git Flow, Netflix uses trunk-based dengan feature flags.

#### Scenario: Learner lihat strategy di production projects
- **WHEN** learner melihat "Real-world Examples"
- **THEN** mereka lihat actual branch structure dan release cycle dari well-known projects

### Requirement: Selecting strategy based on team and project characteristics
Modul HARUS guide: team size, release frequency, risk tolerance, expertise level untuk select optimal strategy.

#### Scenario: Learner evaluate strategy fit
- **WHEN** learner assess team characteristics (size, release frequency, etc)
- **THEN** mereka recommend strategy dengan justification
