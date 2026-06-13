# Module 6: Strategi Implementasi Git dalam SDLC

**Durasi:** ~1.5 jam  
**Prerequisite:** Complete Module 3-5

---

## 📖 Konsep

### 3 Popular Git Strategies

Different teams use different strategies based on their needs.

#### 1. Git Flow

Untuk: Projects dengan scheduled releases

```
main (production) ──────────────────
     │
release ──► v1.0 Release ──┐
     │                     │
develop (integration) ◄────┘
     │
feature/x ──► complete ──► merge
feature/y ──► complete ──► merge
```

#### 2. GitHub Flow

Untuk: Continuous deployment, agile teams

```
main (production, always deployable)
  │
  ├─ feature/quick-fix ──► PR ──► Merge ──► Deploy
  ├─ feature/ui-update ──► PR ──► Merge ──► Deploy
  └─ bugfix/error ───────► PR ──► Merge ──► Deploy

(Simple: main + feature branches only)
```

#### 3. Trunk-Based Development

Untuk: High-velocity teams, micro-services

```
main (trunk)
 │├─ feature/a ──► quick merge (daily)
 │├─ feature/b ──► quick merge (daily)
 │└─ feature/c ──► quick merge (daily)
 
(Very short-lived branches, rapid integration)
```

---

## 🔍 Strategi Comparison

| Aspect | Git Flow | GitHub Flow | Trunk-Based |
|--------|----------|-------------|-------------|
| Release Cycle | Scheduled | Continuous | Continuous |
| Branch Lifetime | Long | Short | Very Short |
| Complexity | High | Low | Medium |
| Team Size | Large | Any | Large |
| Deployment | To release | To prod | To prod |

---

## 🎯 Hands-On: GitHub Flow (Recommended)

### Workflow

```bash
# 1. Create feature branch dari main
git checkout -b feature/user-profile

# 2. Make commits (focused, small)
git commit -m "feat: Add profile component"
git commit -m "feat: Add profile API endpoint"

# 3. Push branch
git push origin feature/user-profile

# 4. Create PR on GitHub
# (Review, discuss)

# 5. Merge PR
# (Automatic via GitHub)

# 6. Delete branch
git push origin -d feature/user-profile

# 7. Pull latest
git checkout main
git pull origin main
```

---

## 💡 Real-World Examples

### GitHub CLI - GitHub Flow

```bash
# See how GitHub maintains their own CLI
git clone https://github.com/cli/cli.git
cd cli

# Observe short feature branches in history
git log --oneline -20

# Notice frequent merges to main
```

### Linux Kernel - Modified Git Flow

```bash
# Linux uses modified Git Flow
git clone https://github.com/torvalds/linux.git
cd linux

# See development branch
git branch -a | grep next

# Notice: main (production), next (development)
```

---

## ✅ Success Criteria

Anda berhasil modul ini jika:
- [ ] Understand 3 major Git strategies
- [ ] Know when to use each strategy
- [ ] Implement GitHub Flow workflow
- [ ] Evaluate strategy fit untuk team

---

## 🎮 Praktik di Playground

Sudah siap? Coba **[Scenario 2: Branching](../../playground/scenario-2-branching-README.md)** dan **[Scenario 4: Collaboration](../../playground/scenario-4-collaboration-README.md)** untuk memperdalam strategi!

---

## 🔗 Next Steps

✅ Complete module ini → Go to **[Module 7: GitHub Pages](../07-github-pages/)**

---

*Module 6 Complete? Update your progress!*
