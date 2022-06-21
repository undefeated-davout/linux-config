#if [ -f ~/.bashrc ] ; then
#  . ~/.bashrc
#fi

# zshをデフォルトにしないと警告出るのを非表示
export BASH_SILENCE_DEPRECATION_WARNING=1

# iTerm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/opt/libxml2/bin:$PATH"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# color
if [[ "$TERM" == "tmux-256color" ]]; then
  export TERM=xterm-256color
fi

