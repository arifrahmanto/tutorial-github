## ADDED Requirements

### Requirement: Learner memahami GitHub Actions dan CI/CD basics
Modul HARUS mengajarkan: workflow structure, triggers, jobs, steps, dan outputs dari Actions.

#### Scenario: Learner memahami Actions workflow anatomy
- **WHEN** learner mengikuti modul "Deployment dengan GitHub Action"
- **THEN** mereka mampu: read workflow YAML, identify triggers, understand job execution flow, know key contexts

#### Scenario: Learner visualisasi workflow execution
- **WHEN** learner melihat workflow diagram dengan steps dan parallel execution
- **THEN** mereka memahami: sequential vs parallel jobs, step dependencies, and failure handling

### Requirement: Setting up GitHub Actions untuk learning repository
Modul HARUS menjelaskan: create workflows directory, write workflow YAML, trigger di push/PR events.

#### Scenario: Learner create workflow untuk repository
- **WHEN** learner setup Actions untuk tutorial repository
- **THEN** mereka create `.github/workflows/deploy.yml` yang trigger deploy ke Pages/Netlify

### Requirement: Netlify integration dengan GitHub Actions
Modul HARUS menjelaskan: Netlify connect to GitHub, GitHub Actions dapat trigger Netlify deploy, build preview workflows.

#### Scenario: Learner integrate Netlify via Actions
- **WHEN** learner mengikuti Netlify setup dalam Actions context
- **THEN** mereka: authorize Netlify, get deploy key, add Action step untuk trigger Netlify deploy

#### Scenario: Learner understand build preview workflow
- **WHEN** learner create PR dan Netlify preview auto-build
- **THEN** mereka tahu: every PR dapat preview URL sebelum merge, useful untuk QA

### Requirement: Common workflow patterns: build, test, deploy
Modul HARUS menjelaskan: basic workflow patterns seperti run tests on PR, build artifacts, deploy on main push.

#### Scenario: Learner implement test workflow
- **WHEN** learner write Actions workflow yang run tests
- **THEN** mereka know: checkout code → install deps → run tests → report results

#### Scenario: Learner implement deploy workflow
- **WHEN** learner write Actions workflow untuk production deploy
- **THEN** mereka know: trigger on main push → build → deploy dengan artifact preservation

### Requirement: Secrets dan credentials management di Actions
Modul HARUS menjelaskan: store secrets, use di workflow, avoid hardcoding credentials, best practices.

#### Scenario: Learner secure Netlify token
- **WHEN** learner need trigger Netlify dari Actions
- **THEN** mereka know: store token di repository Secrets, reference di workflow via secrets context

### Requirement: Hands-on playground untuk Actions workflow
Modul HARUS link ke scenario dimana learner fork repository dengan Actions workflow dan trigger deploy.

#### Scenario: Learner practice trigger Actions workflow
- **WHEN** learner mengikuti playground "GitHub Actions Workflow"
- **THEN** mereka: clone repo dengan workflow, make change, push, see Actions run, verify Netlify deploy

### Requirement: Troubleshooting untuk workflow failures
Modul HARUS cover: workflow not triggering, step failures, timeout issues, secret access problems, understanding logs.

#### Scenario: Learner debug workflow failure
- **WHEN** learner workflow fail dan deployment tidak terjadi
- **THEN** troubleshooting menjelaskan: check Actions tab for logs, identify failing step, debug common issues
