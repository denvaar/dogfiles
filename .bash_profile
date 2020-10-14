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
GREEN_FG_BOLD="\[\033[1;32m\]"

export VIM_RUNTIME="~/.vim"
hash nvim 2>/dev/null && {
  alias vim="nvim";
  export VIM_RUNTIME="~/.config/nvim";
}

export PS1="$CYAN_FG_BOLD\u $PINK_FG_BOLD\W $GREEN_FG_BOLD|>$NO_COLOUR "

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export ERL_AFLAGS="-kernel shell_history enabled"

hash rbenv 2>/dev/null && { eval "$(rbenv init -)"; }

export PATH="$HOME/.cargo/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias fzfp='fzf --preview="head -$LINES {}"'
alias vimfzf="vim \`fzf\`"


agvim() {
    local search="$1"
    local results=$(ag "$search" -l)

    vim $results
}

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
