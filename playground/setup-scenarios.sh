#!/bin/bash

# Setup script untuk playground scenarios
# Run this to create all scenario branches

echo "Setting up Git Learning Playground..."

# Scenario 1: First Commit
echo "Creating scenario-1-first-commit..."
git checkout -b scenario-1-first-commit
echo "# Scenario 1: First Commit

Practice: Create file, stage, commit

## Instructions
1. Create file: touch hello.txt
2. Add content: echo 'Hello Git' > hello.txt
3. Stage: git add hello.txt
4. Commit: git commit -m 'Add hello.txt'
5. Verify: git log

Good luck!" > scenario-1-first-commit-README.md
git add .
git commit -m "scenario: Setup scenario 1"

# Scenario 2: Branching
echo "Creating scenario-2-branching..."
git checkout -b scenario-2-branching
echo "# Scenario 2: Branching & Merging

Practice: Create branch, merge

## Instructions
1. Create branch: git checkout -b feature-x
2. Edit file: echo 'New feature' >> file.txt
3. Commit: git commit -am 'Add feature'
4. Switch back: git checkout main
5. Merge: git merge feature-x

Good luck!" > scenario-2-branching-README.md
git add .
git commit -m "scenario: Setup scenario 2"

# Scenario 3: Merge Conflict
echo "Creating scenario-3-merge-conflict..."
git checkout -b scenario-3-merge-conflict
echo "# Scenario 3: Merge Conflict

Practice: Resolve conflict

## Instructions
1. Two branches editing same file
2. Merge will conflict
3. Resolve manually
4. Complete merge

Details in instructions!" > scenario-3-merge-conflict-README.md
git add .
git commit -m "scenario: Setup scenario 3"

echo "Playground setup complete!"
