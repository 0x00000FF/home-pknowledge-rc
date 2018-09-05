# .bashrc for CentOS or other servers maintenance

alias ls='ls --color=auto'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -l'

if [  -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# [user@host dir] exitcode
# #/$ _

export PS1="[\[$(tput sgr0)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;4m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]] \[$(tput sgr0)\]\[\033[38;5;14m\]\$?\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$\[$(tput sgr0)\]"
