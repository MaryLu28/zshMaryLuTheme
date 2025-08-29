## zshMaryLuTheme

An Oh My Zsh theme that shows a concise Git status, current directory, date/time, and useful indicators, with
Powerline separators and icon glyphs.

### Requirements

- **Oh My Zsh** installed in `~/.oh-my-zsh`
- **Zsh** set as your default shell
- **Nerd Font (or Powerline‑patched font)** configured in your terminal (e.g., MesloLGS NF, FiraCode Nerd
  Font)

### Files in this theme

- Theme file: `~/.oh-my-zsh/custom/themes/zshMaryLuTheme/maryluTheme.zsh-theme`
- Git prompt helper (bundled): `~/.oh-my-zsh/custom/themes/zshMaryLuTheme/git-prompt/zshrc.sh`
  - The theme automatically sources this helper; no extra action is needed.

## Installation

You can either copy this folder into your Oh My Zsh custom themes directory, or clone it there.

```sh
# Ensure the custom themes directory exists
mkdir -p ~/.oh-my-zsh/custom/themes

# Option A: clone (replace <REPO_URL> with your repository URL)
git clone <REPO_URL> ~/.oh-my-zsh/custom/themes/zshMaryLuTheme

# Option B: copy the folder if you already have it locally
cp -R zshMaryLuTheme ~/.oh-my-zsh/custom/themes/
```

Then enable the theme in your `~/.zshrc`:

```sh
export ZSH="$HOME/.oh-my-zsh"

# If you placed the theme as a folder inside custom/themes, use folder/file:
ZSH_THEME="zshMaryLuTheme/maryluTheme"

# Optional: faster Git status (see the Haskell section below)
# export GIT_PROMPT_EXECUTABLE="haskell"

plugins=(git)

source "$ZSH/oh-my-zsh.sh"
```

### Using the `.zshrc` included in this repo

If this repository contains a `.zshrc` file, it is kept here only for version control. To actually use it,
move or symlink it to your home directory:

```sh
# Backup your current ~/.zshrc if it exists
[ -f ~/.zshrc ] && cp ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d-%H%M%S)

# Option A: copy the repo version into place
cp ~/.oh-my-zsh/custom/themes/zshMaryLuTheme/.zshrc ~/.zshrc

# Option B: symlink so updates in the repo reflect immediately
ln -sf ~/.oh-my-zsh/custom/themes/zshMaryLuTheme/.zshrc ~/.zshrc
```

This applies the same way on macOS, Linux, and WSL (paths differ only by your username and home path).

Finally, reload your shell:

```sh
source ~/.zshrc
```

## OS‑specific notes

### macOS

- `.zshrc` location: `~/.zshrc` (i.e., `/Users/<you>/.zshrc`)
- Set Zsh as default (if needed): `chsh -s /bin/zsh`
- Configure your terminal (Terminal.app or iTerm2) to use a Nerd Font under Preferences → Profiles → Text →
  Font

### Linux (Ubuntu/Debian/Fedora/Arch, etc.)

- `.zshrc` location: `~/.zshrc` (i.e., `/home/<you>/.zshrc`)
- Set Zsh as default (if needed): `chsh -s "$(command -v zsh)"`
- Configure your terminal (GNOME Terminal, Konsole, etc.) to use a Nerd Font

### Windows (WSL)

- Edit the `.zshrc` inside your Linux distro: `/home/<you>/.zshrc`
- Install Oh My Zsh inside WSL, not on Windows
- Use Windows Terminal (or another terminal) with your WSL profile and set the profile font to a Nerd Font
  (Settings → Profiles → Your WSL distro → Appearance → Font face)

## Optional: faster Git status with Haskell

This theme bundles `zsh-git-prompt`. By default it uses Python for Git status. You can switch to the included
Haskell implementation for a speedup.

Prerequisites: install [Stack](https://docs.haskellstack.org/) inside your OS/WSL environment.

```sh
cd ~/.oh-my-zsh/custom/themes/zshMaryLuTheme/git-prompt
stack setup
stack build && stack install
```

Notes:

- The binary is installed to `git-prompt/src/.bin/gitstatus` (see `stack.yaml`).
- Enable it by adding this to your `~/.zshrc` (before loading Oh My Zsh):

```sh
export GIT_PROMPT_EXECUTABLE="haskell"
```

## Troubleshooting

- **Squares or missing icons**: your terminal is not using a Nerd/Powerline font. Install one and select it in
  terminal settings.
- **Theme does not load**: ensure `ZSH_THEME="zshMaryLuTheme/maryluTheme"` matches the on‑disk path and that
  the `.zsh-theme` file exists under `~/.oh-my-zsh/custom/themes/zshMaryLuTheme/`.
- **No Git info**: ensure `git` is installed and accessible in `PATH`. If using the Haskell mode, ensure the
  build succeeded and the `GIT_PROMPT_EXECUTABLE` variable is set.
- **WSL fonts look wrong**: set the Windows Terminal profile for your WSL distro to a Nerd Font.

## Uninstall / Revert

- Change `ZSH_THEME` in `~/.zshrc` to another theme (e.g., `robbyrussell`, `agnoster`, etc.)
- Remove the theme folder: `rm -rf ~/.oh-my-zsh/custom/themes/zshMaryLuTheme`

## Credits

- Git prompt logic based on `zsh-git-prompt` by Olivier Verdier (bundled under `git-prompt/`)
- Theme by MaryLu
