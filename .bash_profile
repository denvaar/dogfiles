export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

NO_COLOUR="\[\033[0m\]"

BLUE_BG="\[\033[1;44m\]"
PINK_BG="\[\033[1;45m\]"
CYAN_BG="\[\033[1;46m\]"

DARK_FG_BOLD="\[\033[1;30m\]"
BLUE_FG_BOLD="\[\033[1;34m\]"
PINK_FG_BOLD="\[\033[1;35m\]"
CYAN_FG_BOLD="\[\033[1;36m\]"

# export PATH="/Users/denver/nvim-osx64/bin:$PATH"

alias vim="nvim"

export BLAWG_SECRET_KEY="secret_key"
export BLAWG_EDITOR="vim"
export BLAWG_API_CREATE="http://localhost:4000/api/articles"
export BLAWG_API_GET="http://localhost:4000/api/articles"
export BLAWG_API_UPDATE="http://localhost:4000/api/articles/{slug}/"
export BLAWG_API_DELETE="http://localhost:4000/api/articles/{slug}/"

export PS1="$CYAN_FG_BOLD\u $PINK_FG_BOLD\W$NO_COLOUR ﹩ "

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export ERL_AFLAGS="-kernel shell_history enabled"

hash rbenv 2>/dev/null && { eval "$(rbenv init -)"; }

export PATH="$HOME/.cargo/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias fzfp='fzf --preview="head -$LINES {}"'
alias vimfzf="vim \`fzf\`"
