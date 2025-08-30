# ==============================================================================
# 🐚 Zsh / Oh My Zsh Base Configuration
# ==============================================================================

# ==============================================================================
# 🎨 PERSONALIZATION VARIABLES - CUSTOMIZE THESE FOR YOURSELF! 🎨
# ==============================================================================

# Your personal information - CHANGE THESE!
export ZSH_USER_NAME="MaryLu"                    # Your name (used in banners and messages)
export ZSH_USERNAME="mlourdesgarcia"              # Your system username
export ZSH_THEME_PATH="zshMaryLuTheme"           # Your custom theme folder name
export ZSH_THEME_NAME="maryluTheme"               # Your theme file name

# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme (custom theme in $ZSH_CUSTOM/themes/)
ZSH_THEME="${ZSH_THEME_PATH}/${ZSH_THEME_NAME}"

# Plugins to load with Oh My Zsh
# ⚠️ Note: "zsh-syntax-highlighting" must be the last one to avoid glitches
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
  git-prompt
  zsh-history-substring-search
  zsh-syntax-highlighting
)

# Load Oh My Zsh and plugins
source $ZSH/oh-my-zsh.sh

# ==============================================================================
# 📂 Aliases
# ==============================================================================

# 👉 LSD: modern, colorful replacement for ls
if command -v lsd &> /dev/null; then
  alias l='lsd -A --group-dirs=first --icon=always'    # simple list
  alias ll='lsd -lhA --group-dirs=first --icon=always' # detailed list
  alias la='lsd -lha --group-dirs=first --icon=always' # show all files
  alias lt='lsd --tree --icon=always'                  # tree view
else
  # Fallback to classic ls (if lsd is not installed)
  alias l='ls -A'
  alias ll='ls -lhA'
  alias la='ls -lha'
  alias lt='ls -R'
fi

# General aliases
alias cl='clear'   # clear screen

# 🌈 Rainbow aliases (require figlet + lolcat installed)
alias rainbowls="ls -la | lolcat"
alias rainbowecho="echo '✨ Keep shining, dev girly ✨' | lolcat"
alias rainbowfig="figlet '${ZSH_USER_NAME}' | lolcat"
alias motd='echo \"💖🌸 Welcome back, ${ZSH_USER_NAME} 🌈💅\" | lolcat'
alias rainbowlogs="tail -f /var/log/syslog | lolcat"
alias rainbowtest="npm test | lolcat"
alias rainbowgit="git status | lolcat"


# ==============================================================================
# 🎨 Powerlevel10k (if you use this theme)
# ==============================================================================
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ==============================================================================
# 🌍 Environment Variables
# ==============================================================================

# NVM setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"                     # Loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"   # Loads nvm bash_completion

# Meteor path (added once)
export PATH="/Users/${ZSH_USERNAME}/.meteor:$PATH"

# ==============================================================================
# 🌸 Kawaii Dev Mode - MUST BE AT THE END 🌸
# ==============================================================================

# Function that runs automatically when opening the terminal
kawaii() {
  # Cute random separators
  separators=(
    "✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦✦"
    "✿❀✿❀✿❀✿❀✿❀✿❀✿❀✿❀✿❀✿❀✿❀✿❀"
    "✧･ﾟ: *✧･ﾟ:* ✧･ﾟ: *✧･ﾟ:* ✧･ﾟ:*"
    "｡･:*:･ﾟ★,｡･:*:･ﾟ☆｡･:*:･ﾟ★,｡･:*:･ﾟ☆"
    "⋆｡ﾟ☁︎｡⋆｡ﾟ☾ ﾟ｡⋆ ⋆｡ﾟ☁︎｡⋆｡ﾟ☾ ﾟ｡⋆ ⋆｡ﾟ"
    "✶ ✷ ✸ ✹ ✺ ✻ ✼ ✽ ✾ ✶ ✷ ✸ ✹ ✺ ✻ ✼ ✽ ✾"
    "✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩✩"
    "✧･ﾟ✧･ﾟ✧･ﾟ✧･ﾟ✧･ﾟ✧･ﾟ✧･ﾟ✧･ﾟ"
    "· · ─────── ✧ ─────── ✧ ─────── · ·"
    "⋆⁺₊⋆ ☾⋆⁺₊⋆ ⋆⁺₊⋆ ☾⋆⁺₊⋆ ⋆⁺₊⋆ ☾⋆⁺₊⋆"
    "✩°｡⋆⸜ 🎧 ⸝⋆｡°✩ ✩°｡⋆⸜ 🎧 ⸝⋆｡°✩"
    "♡‧₊˚✧ ♡‧₊˚✧ ♡‧₊˚✧ ♡‧₊˚✧ ♡‧₊˚✧"
    "｡･:*:･ﾟ❀,｡･:*:･ﾟ☆｡･:*:･ﾟ❀,｡･:*:･ﾟ☆"
    "❁ ❃ ❁ ❃ ❁ ❃ ❁ ❃ ❁ ❃ ❁ ❃ ❁ ❃ ❁ ❃"
    "─── ⋆⋅☆⋅⋆ ─── ⋆⋅☆⋅⋆ ─── ⋆⋅☆⋅⋆"
    "☾⋆⁺₊⋆☁︎⋆⁺₊⋆ ☾⋆⁺₊⋆☁︎⋆⁺₊⋆ ☾⋆⁺₊⋆"
    "☽────✧˖°˖☆☽────✧˖°˖☆☽────✧˖°˖☆"
    "⋆꙳✧༚ ⋆꙳✧༚ ⋆꙳✧༚ ⋆꙳✧༚ ⋆꙳✧༚"
    "⋆｡˚ ☁︎ ˚｡⋆｡˚☽˚｡⋆ ⋆｡˚ ☁︎ ˚｡⋆｡˚☽˚｡⋆"
  )

  # Random motivational phrases
  phrases=(
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

  # Banner with your name in ASCII rainbow
  figlet "${ZSH_USER_NAME}" | lolcat

  # Random separator
  random_sep=$((RANDOM % ${#separators[@]}))
  printf "\n%s\n\n" "${separators[$random_sep]}" | lolcat

  # Random phrase
  random_index=$((RANDOM % ${#phrases[@]}))
  echo "${phrases[$random_index]}" | lolcat
}

# Run kawaii function on startup - MUST BE THE LAST THING
kawaii

# ==============================================================================
# 🎨 HOW TO CUSTOMIZE THIS CONFIGURATION 🎨
# ==============================================================================
#
# To personalize this configuration for your own use:
#
# 1. Change the variables at the top of this file:
#    - ZSH_USER_NAME: Your name (used in banners and messages)
#    - ZSH_USERNAME: Your system username
#    - ZSH_THEME_PATH: Your custom theme folder name
#    - ZSH_THEME_NAME: Your theme file name
#
# 2. Customize the kawaii() function messages to match your personality
# 3. Modify aliases and functions as needed
# 4. Add or remove plugins based on your preferences
#
# Example:
# export ZSH_USER_NAME="Alex"
# export ZSH_USERNAME="alexdev"
# export ZSH_THEME_PATH="myCustomTheme"
# export ZSH_THEME_NAME="alexTheme"
#
# ==============================================================================