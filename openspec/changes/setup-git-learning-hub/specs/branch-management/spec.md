## ADDED Requirements

### Requirement: Learner memahami Git branch strategy dan operations
Modul HARUS mengajarkan konsep branch, naming convention, dan workflow dengan multiple branches.

#### Scenario: Learner membuat dan switch branch
- **WHEN** learner mengikuti modul "Manajemen Cabang"
- **THEN** mereka mampu: membuat branch baru, switch antar branch, delete branch, dan understand branch relationships

#### Scenario: Learner visualisasi branch history
- **WHEN** learner melihat visualisasi git tree dengan multiple branches
- **THEN** mereka memahami bagaimana branches diverge dan convergence saat merge

### Requirement: Branch naming conventions dan best practices
Modul HARUS menjelaskan naming patterns seperti feature/*, bugfix/*, release/* dengan rationale.

#### Scenario: Learner tahu memilih branch name
- **WHEN** learner akan membuat branch baru untuk feature baru
- **THEN** mereka tahu naming pattern dan understand mengapa consistency penting

### Requirement: Merge, rebase, dan fast-forward operations
Modul HARUS menjelaskan perbedaan merge vs rebase, kapan gunakan mana, dan visualisasi hasilnya.

#### Scenario: Learner memahami merge vs rebase
- **WHEN** learner melihat dua branches yang diverge
- **THEN** visualisasi menunjukkan hasil merge (commit baru) vs rebase (linear history)

### Requirement: Hands-on playground scenarios untuk branch workflows
Modul HARUS link ke scenarios untuk: membuat branch, merge tanpa conflict, dan understand fast-forward.

#### Scenario: Learner practice feature branch workflow
- **WHEN** learner mengikuti playground scenario "Feature Branch"
- **THEN** mereka clone repo, create feature branch, commit changes, merge back ke main

### Requirement: Real-world branching strategies
Modul HARUS menunjukkan popular strategies: Git Flow, GitHub Flow, trunk-based development dengan kapan gunakan mana.

#### Scenario: Learner lihat Git Flow example
- **WHEN** learner melihat "Real-world Strategies"
- **THEN** mereka lihat diagram dan commit history dari project yang menggunakan Git Flow atau GitHub Flow

### Requirement: Troubleshooting untuk branch issues
Modul HARUS cover: branch di detach, salah merge target, branch name conflicts, orphaned branches.

#### Scenario: Learner stuck dengan branch issues
- **WHEN** learner membuat kesalahan di branch operations
- **THEN** troubleshooting section menjelaskan masalah dan recovery steps
