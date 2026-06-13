## ADDED Requirements

### Requirement: Learner memahami merge conflicts dan cara resolvenya
Modul HARUS mengajarkan: kapan konflik terjadi, membaca conflict markers, dan resolving strategies.

#### Scenario: Learner mengidentifikasi merge conflict
- **WHEN** learner mengikuti modul "Solusi Konflik"
- **THEN** mereka mampu: recognize conflict markers (<<<<<<<, =======, >>>>>>>), understand diverging changes, dan resolve manually

#### Scenario: Learner visualisasi conflict state
- **WHEN** learner melihat visualisasi dua branches dengan conflicting edits
- **THEN** mereka memahami: mengapa konflik terjadi dan apa yang perlu resolved

### Requirement: Konfliks manual dan automated resolution
Modul HARUS menjelaskan: merge, rebase conflicts, ours/theirs strategy, dan merge tools.

#### Scenario: Learner gunakan merge strategy
- **WHEN** learner punya conflict dengan multiple changes
- **THEN** mereka tahu gunakan `-X ours`, `-X theirs`, atau merge tool untuk resolve

### Requirement: Playground scenario dengan reproducible conflict
Modul HARUS provide scenario dimana dua branches edit same line, conflict guaranteed.

#### Scenario: Learner practice resolve conflict
- **WHEN** learner clone playground "Merge Conflict" scenario
- **THEN** mereka trigger conflict sengaja dan practice resolve dengan berbagai strategi

### Requirement: Rebase conflict handling
Modul HARUS menjelaskan: rebase conflict berbeda dari merge conflict, interactive rebase, dan abort rebase.

#### Scenario: Learner practice rebase conflict
- **WHEN** learner melakukan rebase dan encounter conflict
- **THEN** mereka tahu resolve per-commit dan continue rebase atau abort jika perlu

### Requirement: 3-way merge dan conflict markers interpretation
Modul HARUS visualisasi 3-way merge (base, ours, theirs) dan menjelaskan conflict marker anatomy.

#### Scenario: Learner understand conflict markers
- **WHEN** learner melihat conflict marker dengan complex changes
- **THEN** mereka tahu: siapa membuat change apa, base version mana, dan decide yang diambil

### Requirement: Prevention best practices
Modul HARUS menjelaskan: small commits, frequent pulls, branch protection, dan communication untuk prevent conflicts.

#### Scenario: Learner apply conflict prevention
- **WHEN** learner working di tim dengan high conflict rate
- **THEN** mereka tahu apply best practices untuk reduce conflicts

### Requirement: Troubleshooting untuk complex conflicts
Modul HARUS cover: binary files, deleted vs modified conflict, recursive merge, dan manual merge steps.

#### Scenario: Learner stuck dengan unsolvable conflict
- **WHEN** learner punya complex conflict yang standard approach tidak jalan
- **THEN** troubleshooting menjelaskan manual steps atau conflict resolution tools
