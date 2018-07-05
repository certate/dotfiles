export TERM="xterm-256color"
export PATH=$PATH:$HOME/.rbnev/shims

source $HOME/.zplug/init.zsh

# =============================================================================
# Plugins
# =============================================================================

zplug "zplug/zplug", hook-build:"zplug --self-manage"

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

zplug "zsh-users/zsh-syntax-highlighting", defer:2

# =============================================================================
# powerlevel9k
# =============================================================================

if zplug check "bhilburn/powerlevel9k"; then
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon battery context dir vcs)
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time ram load)

  POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %y.%m.%d}"

  POWERLEVEL9K_PROMPT_ON_NEWLINE=false
fi

# =============================================================================
# Install plugins if there are plugins that have not been installed
# =============================================================================

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# =============================================================================
# Then, source plugins and add commands to $PATH
# =============================================================================

zplug load

