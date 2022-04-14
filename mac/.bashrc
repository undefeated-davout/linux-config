# Git補完設定
source /usr/local/Cellar/git/2.35.3/etc/bash_completion.d/git-prompt.sh
source /usr/local/Cellar/git/2.35.3/etc/bash_completion.d/git-completion.bash

# エイリアス
alias ll='add_line; exa -lahF --time-style=long-iso --no-permissions --no-user --icons'
alias lr='add_line; ll -s=modified -r'
alias cat='add_line; bat --paging=never --decorations=never --color=always'
alias catd='add_line; bat --paging=never'

# 出力の後に改行を入れる
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'

# 表示する階層を3つまでにする（bash ver.4.0以上必要）
GIT_PS1_SHOWDIRTYSTATE=true
export PROMPT_DIRTRIM=3
export PS1='\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# ctrl + rの逆方向用設定
stty stop undef
stty start undef

# tmux設定
if ! [ "$TMUX" = "" ]; then
  tmux set-option status-bg $(perl -MList::Util=sum -e'print+(red,green,blue,yellow,cyan,magenta,white)[sum(unpack"C*",shift)%7]' $(hostname)) | cat > /dev/null
fi

# zコマンド
. /usr/local/etc/profile.d/z.sh

# pyenv
eval "$(pyenv init -)"

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# br: ローカルブランチチェックアウト
br() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# brr: リモートブランチを含めてチェックアウト
brr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# fshow - git commit browser
fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# ~/.ssh/configから選択してssh接続する
fssh() {
    local sshLoginHost
    sshLoginHost=`cat ~/.ssh/config | grep -i ^host | awk '{print $2}' | fzf`

    if [ "$sshLoginHost" = "" ]; then
        # ex) Ctrl-C.
        return 1
    fi

    ssh ${sshLoginHost}
}

