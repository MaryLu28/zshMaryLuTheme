# 🌸 Git Kawaii Cheat-Sheet 🌸

> A beautiful and kawaii Git wrapper that makes your Git workflow more delightful with colorful ANSI boxes and
> emojis! ✨

## 📋 Table of Contents

- [🚀 Quick Start](#-quick-start)
- [✨ Features](#-features)
- [📖 Commands Reference](#-commands-reference)
- [🎨 Color Scheme](#-color-scheme)
- [🔧 Installation](#-installation)
- [💡 Tips & Examples](#-tips--examples)

## 🚀 Quick Start

### Setup

1. **Install the alias:**

   ```zsh
   alias g="git-kawaii"
   ```

2. **Configure Git aliases in `~/.gitconfig`:**
   ```ini
   [alias]
       s = status
       cm = commit -m
       mm = merge -m
       rb = rebase
       ps = push
       b = branch
   ```

## ✨ Features

- 🎨 **Beautiful ANSI boxes** for all Git operations
- 🌈 **Color-coded status** with intuitive visual feedback
- ✨ **Kawaii emojis** throughout the interface
- 🚀 **Smart defaults** and automatic upstream configuration
- 📱 **Responsive design** that works in any terminal

## 📖 Commands Reference

### 📋 Status & Information

| Command    | Alias | Description            | Kawaii Feature ✨                      |
| ---------- | ----- | ---------------------- | -------------------------------------- |
| `g status` | `g s` | Show repository status | Pretty status with ANSI boxes by group |
| `g branch` | `g b` | List branches          | Current branch highlighted in magenta  |

**Status Groups:**

- ✅ **Staged** → Green box
- ✏️ **Unstaged** → Yellow box
- 🆕 **Untracked** → Cyan box
- 🛑 **Conflicts** → Red box with hints
- ✨ **Clean** → White box with "Working tree clean ✨"

### 🌪 Merge & Rebase

| Command             | Alias           | Description    | Kawaii Feature ✨                    |
| ------------------- | --------------- | -------------- | ------------------------------------ |
| `g merge <branch>`  | `g mm <branch>` | Merge branches | Rainbow whirly box for clean merges  |
| `g rebase <branch>` | `g rb <branch>` | Rebase branch  | Rainbow whirly box for clean rebases |

⚠️ **Note:** Conflicts show red ANSI boxes with error messages.

### 🚀 Push & Pull

| Command  | Alias  | Description      | Kawaii Feature ✨                  |
| -------- | ------ | ---------------- | ---------------------------------- |
| `g push` | `g ps` | Push to remote   | Green box on success, red on error |
| `g pull` | -      | Pull from remote | Smart conflict detection           |

🌟 **Auto-upstream:** Automatically configures `-u origin branch` if no upstream exists.

### ✍️ Commit & History

| Command             | Alias        | Description         | Kawaii Feature ✨                |
| ------------------- | ------------ | ------------------- | -------------------------------- |
| `g commit`          | -            | Create commit       | Normal commit + HEAD in ANSI box |
| `g commit -m "msg"` | `g cm "msg"` | Commit with message | Auto-adds `-m` flag              |

**Commit Box includes:**

- 🔗 Short hash
- 💬 Commit message
- 📅 Relative date
- 📊 Change summary (insertions/deletions)

### 📦 Stash Management

| Command                 | Description  | Kawaii Feature ✨                  |
| ----------------------- | ------------ | ---------------------------------- |
| `g stash push -m "msg"` | Create stash | "✨ Stash created ✨" in ANSI box  |
| `g stash list`          | List stashes | Stash list in ANSI box             |
| `g stash pop`           | Apply stash  | "🌸 Stash pop done 🌸" in ANSI box |
| `g stash apply`         | Apply stash  | "🌸 Stash applied 🌸" in ANSI box  |

## 🎨 Color Scheme

| Status                    | Color   | Box Style        |
| ------------------------- | ------- | ---------------- |
| ✅ Success/Staged         | Green   | Solid border     |
| ⚠️ Warning/Unstaged       | Yellow  | Dashed border    |
| ℹ️ Info/Untracked         | Cyan    | Dotted border    |
| 🚨 Error/Conflicts        | Red     | Bold border      |
| ✨ Clean/Complete         | White   | Double border    |
| 🌈 Special (merge/rebase) | Rainbow | Whirly animation |

## 🔧 Installation

### Prerequisites

- Zsh shell
- Git installed
- Terminal with ANSI color support

### Setup Steps

1. Add the alias to your `~/.zshrc`:

   ```zsh
   alias g="git-kawaii"
   ```

2. Reload your shell:

   ```zsh
   source ~/.zshrc
   ```

3. Configure Git aliases (optional but recommended)

## 💡 Tips & Examples

### Advanced Workflows

**Feature Branch Workflow:**

```zsh
g checkout -b feature/new-feature
# ... make changes ...
g add .
g cm "Add new feature ✨"
g ps
```

**Clean Repository:**

```zsh
g s                    # Check status
g stash push -m "temp" # Stash changes
g pull                 # Pull latest
g stash pop           # Restore changes
```

**Conflict Resolution:**

```zsh
g merge main          # Merge with conflicts
# ... resolve conflicts ...
g add .
g cm "Resolve merge conflicts 🔧"
```

### Other Commands

All other Git commands work normally through the wrapper:

- `g log` - View commit history
- `g clone <repo>` - Clone repository
- `g checkout -b <branch>` - Create and switch to new branch
- `g remote -v` - View remotes
- `g tag` - Manage tags

---

## 🌟 Contributing

Found a bug or have a suggestion? Feel free to contribute to make Git Kawaii even more delightful!

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

_Made with ❤️ and lots of ✨ kawaii magic ✨_
