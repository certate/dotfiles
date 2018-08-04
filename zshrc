export TERM="xterm-256color"
export PYENV_ROOT="$HOME/.pyenv"
export RBENV_ROOT="$HOME/.rbenv"
export PATH=$RBENV_ROOT/bin:$PYENV_ROOT/bin:$PATH

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

  POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M:%S}"

  POWERLEVEL9K_PROMPT_ON_NEWLINE=false
fi

# =============================================================================
# pyenv
# =============================================================================
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
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

