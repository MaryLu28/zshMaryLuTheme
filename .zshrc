# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="zshMaryLuTheme/maryluTheme"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  command-not-found
  git
  mvn
  ng
  npm
  per-directory-history
  python
  sublime
  sudo
  vscode
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
  git-prompt
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ==============================================================================
# Alias
# ==============================================================================

alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long'
alias lc='colorls -lA --sd'

alias cl='clear'

# 🌈 Rainbow aliases 🌈

# ls arcoiris
alias rainbowls="ls -la | lolcat"

# echo arcoiris (mensaje rápido cute)
alias rainbowecho="echo '✨ Sigue brillando, dev girly ✨' | lolcat"

# banner con tu nombre en ASCII + rainbow
alias rainbowfig="figlet 'MaryLu' | lolcat"

# motd arcoiris (ideal para ponerlo al inicio de la terminal)
alias motd='echo "💖🌸 Welcome back, MaryLu 🌈💅" | lolcat'

# seguir logs en rainbow
alias rainbowlogs="tail -f /var/log/syslog | lolcat"

# tests en rainbow
alias rainbowtest="npm test | lolcat"

# git status en rainbow (extra cute)
alias rainbowgit="git status | lolcat"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ==============================================================================
# 🌸 Kawaii Dev Mode 🌸
# ==============================================================================
kawaii() {
  # Banner con tu nombre en ASCII rainbow
  figlet "MaryLu" | lolcat

  separators=(
    "✦✦✦✦✦✦✦✦✦✦✦✦✦✦"
    "✿❀✿❀✿❀✿❀✿❀✿❀✿❀"
    "✧･ﾟ: *✧･ﾟ:* ✧･ﾟ: *✧･ﾟ:*"
    "｡･:*:･ﾟ★,｡･:*:･ﾟ☆"
    "⋆｡ﾟ☁︎｡⋆｡ ﾟ☾ ﾟ｡⋆"
    "✶ ✷ ✸ ✹ ✺ ✻ ✼ ✽ ✾"
    "❦ ❧ ❦ ❧ ❦ ❧"
    "✩✩✩✩✩✩✩✩✩✩✩✩✩✩"
    "✧･ﾟ✧･ﾟ✧･ﾟ✧"
    "· · ─────── ✧ ─────── · ·"
    "⋆⁺₊⋆ ☾⋆⁺₊⋆"
    "✩°｡⋆⸜ 🎧 ⸝⋆｡°✩"
    "♡‧₊˚✧"
    "｡･:*:･ﾟ❀,｡･:*:･ﾟ☆"
    "❁ ❃ ❁ ❃ ❁ ❃"
    "─── ⋆⋅☆⋅⋆ ───"
    "☾⋆⁺₊⋆☁︎⋆⁺₊⋆"
    "☽────✧˖°˖☆"
    "⋆꙳✧༚"
    "✧༚˚. ᵎᵎ"
    "⋆｡˚ ☁︎ ˚｡⋆｡˚☽˚｡⋆"
  )

  random_sep=$((RANDOM % ${#separators[@]}))
  printf "\n%s\n\n" "${separators[$random_sep]}" | lolcat

  # Frases motivacionales random
  phases=(
    # Español
    "✨ Sigue brillando, dev girly ✨"
    "💖 Tu código también puede ser kawaii 💅"
    "🌸 Cada bug arreglado es un logro 🌈"
    "💎 Eres mágica, sigue creando ✨"
    "🌟 Commit con confianza, reina 👑"
    "🌸 Haz push de tus sueños ✨"
    "🌈 Cada merge es un arcoíris nuevo 💖"
    "✨ Tú y tu terminal son pura magia 💎"
    "💖 Nunca subestimes el poder de un commit ✨"
    "🌸 Un test pasado = una sonrisa más 🌈"
    "🌟 Refactoriza con amor 💅"
    "💎 Tus scripts también pueden brillar ✨"
    "🌈 Cada branch es una nueva aventura 🌸"
    "💖 Tu creatividad no tiene conflictos (solo merges) ✨"
    "🌸 Hoy es un buen día para codear bonito 💅"
    "🌟 Debuguea con paciencia y glitter ✨"
    "💎 Los bugs no resisten tu magia 💖"
    "🌈 Siempre hay color después de un build roto 🌸"
    "💖 Tu terminal es tu reino 👑"
    "🌟 Con cada línea de código dejas huella ✨"
    "🌸 El código perfecto no existe, pero tu estilo sí 💅"
    "💎 Haz commits pequeños, pero sueños grandes 🌈"
    "🌈 Pull requests con glitter, por favor 💖"
    "🌸 Eres la reina de tus repos ✨"

    # English 💎
    "✨ Keep coding, keep shining ✨"
    "🌸 Push happiness, not just code 🌸"
    "💎 Debugging is just problem-solving with sparkle 💅"
    "🌈 Every branch is a new adventure 🌈"
    "💖 Code with love, merge with pride 💖"
    "🌟 Your terminal is your kingdom 👑"
    "✨ Small commits, big dreams ✨"
    "💅 Refactor like a queen, deploy like a boss 💎"

    # Spanglish Cute 🌈
    "🌸 Commit con glitter vibes ✨"
    "💖 Merge con amor y rainbow power 🌈"
    "✨ Debuguea chill, shine hard 💅"
    "🌟 Push your sueños al repo 👑"
    "💎 Testing con paciencia y sparkle ✨"
    "🌈 Cada PR is una fiesta 🌸"
    "💖 Tu terminal is sooo aesthetic ✨"
    "🌸 Codea happy, deploy fabulous 💎"
  )

  # Elegir una frase random
  random_index=$((RANDOM % ${#phases[@]}))
  echo "${phases[$random_index]}" | lolcat
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completionexport PATH=/Users/mlourdesgarcia/.meteor:$PATH
export PATH=/Users/mlourdesgarcia/.meteor:$PATH
kawaii