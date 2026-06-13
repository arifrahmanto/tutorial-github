## ADDED Requirements

### Requirement: Learner memahami fork workflow dan open source contribution
Modul HARUS mengajarkan: forking, upstream tracking, creating PR ke external repositories, dan best practices.

#### Scenario: Learner fork dan contribute ke project
- **WHEN** learner mengikuti modul "Kontribusi Open Source"
- **THEN** mereka mampu: fork repository, setup upstream, create feature branch, push dan create PR ke upstream

#### Scenario: Learner understand fork vs clone difference
- **WHEN** learner melihat visualisasi fork vs clone workflow
- **THEN** mereka memahami: fork creates personal copy di GitHub, clone brings code lokal, upstream connection

### Requirement: Upstream repository setup dan maintenance
Modul HARUS menjelaskan: add upstream remote, keep fork synced dengan upstream, handle upstream changes.

#### Scenario: Learner sync fork dengan upstream
- **WHEN** learner working di fork yang ketinggalan dari upstream
- **THEN** mereka execute: fetch upstream → merge/rebase → push ke fork untuk keep in sync

### Requirement: Contributing guidelines and etiquette
Modul HARUS menjelaskan: read CONTRIBUTING.md, respect maintainer time, follow code style, write descriptive PR.

#### Scenario: Learner prepare quality contribution
- **WHEN** learner ingin contribute ke project
- **THEN** mereka: read CONTRIBUTING.md, follow style guide, write clear PR description, test locally sebelum push

### Requirement: Hands-on playground untuk fork contribution
Modul HARUS link ke educational repository yang learner dapat fork, modify, dan create PR untuk practice.

#### Scenario: Learner practice fork and contribute
- **WHEN** learner mengikuti playground "Open Source Contribution"
- **THEN** mereka: fork example repo, create feature branch, commit changes, create PR, see mentor feedback

### Requirement: Handling PR feedback dari maintainers
Modul HARUS menjelaskan: respond to review comments, make requested changes, force push ke branch, re-request review.

#### Scenario: Learner iterate on PR feedback
- **WHEN** learner receive review feedback
- **THEN** mereka know: make changes, commit, push (force jika rebase), mark conversation resolved, re-request review

### Requirement: Understanding open source licensing dan contribution rights
Modul HARUS mention: LICENSE file, contributor agreement jika ada, understanding your rights sebelum contribute.

#### Scenario: Learner check project license
- **WHEN** learner evaluate project contribution
- **THEN** mereka: read LICENSE file, understand terms, check CONTRIBUTING untuk CLA requirement jika ada

### Requirement: Real-world open source project examples
Modul HARUS showcase: well-maintained projects dengan clear CONTRIBUTING, good first issues, community engagement.

#### Scenario: Learner explore real projects
- **WHEN** learner melihat "Real-world Examples"
- **THEN** mereka lihat: example projects dengan good contribution documentation dan examples

### Requirement: Troubleshooting untuk contribution issues
Modul HARUS cover: PR reject reasons, review fatigue, stale branches, upstream conflicts, CLA issues.

#### Scenario: Learner understand PR rejection
- **WHEN** learner PR di-reject atau close tanpa merge
- **THEN** troubleshooting menjelaskan: common rejection reasons dan how to improve next attempt
