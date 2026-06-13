## ADDED Requirements

### Requirement: Playground repository dengan 5 reproducible Git scenarios
Playground HARUS berisi 5 branch-based scenarios yang learner dapat clone dan practice ulang.

#### Scenario: Learner discover playground scenarios
- **WHEN** learner mengakses `/playground` folder
- **THEN** mereka temukan 5 scenarios dengan clear README per scenario: instructions, initial state, expected outcome

#### Scenario: Learner clone playground dan practice
- **WHEN** learner clone playground repository
- **THEN** mereka dapat checkout setiap scenario branch, practice, git reset, dan coba lagi tanpa corruption

### Requirement: Scenario 1 - First Commit and Push
Scenario HARUS setup initial state dan guide learner untuk: create file, stage, commit, push ke remote.

#### Scenario: Learner complete first commit scenario
- **WHEN** learner checkout scenario-1-first-commit branch
- **THEN** mereka: create README.md dengan content, git add, commit dengan message, push

#### Scenario: Learner verify successful push
- **WHEN** learner complete scenario 1 steps
- **THEN** mereka dapat confirm: commit visible di git log, pushed to GitHub visible di branch history

### Requirement: Scenario 2 - Branching and Merging
Scenario HARUS guide learner untuk: create feature branch, make changes, merge ke main, understand fast-forward.

#### Scenario: Learner practice feature branch workflow
- **WHEN** learner checkout scenario-2-branching branch
- **THEN** mereka: create feature branch, edit file, commit, switch back to main, merge feature branch

### Requirement: Scenario 3 - Merge Conflict Resolution
Scenario HARUS trigger guaranteed conflict dan guide learner untuk resolve manually.

#### Scenario: Learner encounter dan resolve conflict
- **WHEN** learner checkout scenario-3-merge-conflict branch dan follow instructions
- **THEN** mereka: create two branches editing same lines, merge branches, see conflict markers, resolve, complete merge

### Requirement: Scenario 4 - Team Collaboration Simulation
Scenario HARUS simulate dua developers dengan PRs, reviews, conflicts untuk collaborative learning.

#### Scenario: Learner simulate team collaboration
- **WHEN** learner checkout scenario-4-collaboration branch
- **THEN** mereka: two branches dengan overlapping changes, PR workflow, merge conflict, resolve bersama

### Requirement: Scenario 5 - GitHub Actions/Deployment Trigger
Scenario HARUS demonstrate Actions workflow execution dan result di deployment.

#### Scenario: Learner trigger dan observe workflow
- **WHEN** learner checkout scenario-5-github-actions branch dan push change
- **THEN** mereka observe: Actions workflow trigger, see step execution, final deployment to Pages/Netlify

### Requirement: Playground reproducibility dan reset capability
Setiap scenario HARUS memiliki clear reset mechanism: checkout clean branch state, jangan corrupt main.

#### Scenario: Learner reset scenario dan try again
- **WHEN** learner stuck di scenario dan ingin retry
- **THEN** mereka: git reset --hard origin/<scenario-branch> untuk reset ke initial state, try again

### Requirement: Step-by-step instructions per scenario
Setiap scenario HARUS punya README.md dengan: objective, initial setup, step-by-step guide, expected result, troubleshooting.

#### Scenario: Learner follow scenario instructions
- **WHEN** learner open scenario README
- **THEN** mereka: clear objectives, numbered steps, commands to run, expected output di setiap step
