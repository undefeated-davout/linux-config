# Ubuntu用Git補完設定
source /usr/share/bash-completion/completions/git

# エイリアス
alias ll='ladd_line; ls -lahF'
alias lr='add_linee; ls -lahFtr'

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
export PROMPT_DIRTRIM=3

# 日本語設定
export LANG=ja_JP.UTF-8

# ctrl + rの逆方向用設定
stty stop undef
stty start undef

# tmux設定
if ! [ "$TMUX" = "" ]; then
  tmux set-option status-bg $(perl -MList::Util=sum -e'print+(red,green,blue,yellow,cyan,magenta,white)[sum(unpack"C*",shift)%7]' $(hostname)) | cat > /dev/null
fi

