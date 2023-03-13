# grep colors
alias grep="grep --color=auto"
alias egrep="grep -E --color=auto"
alias fgrep="fgrep --color=auto"

# ls 
alias ls="ls --color=auto"
alias ll="ls -lah"
alias la="ls -A"
alias l="ls"

# Protect against overwriting
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# pacman fzf
alias pacfz="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk \"{print \$2}\")' | xargs -ro sudo pacman -S"
alias parufz="paru -Slq | fzf -m --preview 'cat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' | xargs -ro  paru -S"
alias pacrem="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias cleanpac='sudo pacman -Rns $(pacman -Qtdq); paru -c'

# misc
alias zip="zip -r"
alias cat="bat --color always --plain"
alias g="lazygit"
alias yay="paru"
alias c="clear"
alias q="exit"


if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

# SSH
alias eceprog="ssh rnallaga@eceprog.ecn.purdue.edu"
alias mg="ssh mg252@ececomp.ecn.purdue.edu"

