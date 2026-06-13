## ADDED Requirements

### Requirement: Learner memahami Git basics dan workflow
Modul ini HARUS mengajarkan fundamentals Git dari pembuatan repository hingga commit pertama ke remote.

#### Scenario: Learner membuat repository baru
- **WHEN** learner mengikuti modul "Pembuatan Repositori"
- **THEN** mereka mampu: inisialisasi repo lokal, konfigurasi git config, membuat file pertama, commit, dan push ke GitHub

#### Scenario: Learner memahami staging dan commit
- **WHEN** learner melihat visualisasi staging area
- **THEN** mereka memahami perbedaan working directory, staging area, dan committed history

### Requirement: Modul berisi perintah dasar Git
Modul HARUS menyediakan reference untuk perintah-perintah esensial: init, config, add, commit, push, pull, log, status.

#### Scenario: Learner mencari perintah spesifik
- **WHEN** learner membaca section "Perintah Dasar"
- **THEN** mereka menemukan deskripsi, syntax, dan contoh untuk setiap perintah

### Requirement: Hands-on exercise dengan reproducible playground
Modul HARUS link ke playground scenario yang learner bisa clone dan practice ulang.

#### Scenario: Learner practice first commit
- **WHEN** learner mengikuti hands-on exercise
- **THEN** mereka clone scenario branch, membuat file, commit, dan push dengan guidance step-by-step

### Requirement: Real-world examples dari projects nyata
Modul HARUS menunjukkan contoh git log dari project open source terkenal untuk illustrasi.

#### Scenario: Learner lihat contoh commit message
- **WHEN** learner melihat "Real-world Example"
- **THEN** mereka melihat contoh git log dari project seperti Linux kernel atau GitHub CLI dengan formatted output

### Requirement: Troubleshooting section untuk common issues
Modul HARUS mencakup solusi untuk 5 common mistakes: wrong commit, uncommitted changes, detached HEAD, origin vs upstream confusion, .gitignore issues.

#### Scenario: Learner stuck di detached HEAD
- **WHEN** learner mengalami detached HEAD state
- **THEN** troubleshooting section menjelaskan apa itu, mengapa terjadi, dan cara fix dengan contoh command

## Module Structure

Setiap requirement HARUS tercakup dalam struktur:
1. **Konsep** - Penjelasan teori singkat
2. **Visualisasi** - ASCII diagrams atau screenshots
3. **Hands-On** - Step-by-step exercise
4. **Real-world** - Contoh dari project nyata
5. **Troubleshooting** - Common issues dan solusi
