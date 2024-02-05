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

# human readable sizes
alias df="df -h"
alias du="du -h"
alias free="free -h"

# pacman fzf
alias pacfz="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk \"{print \$2}\")' | xargs -ro sudo pacman -S"
alias parufz="paru -Slq | fzf -m --preview 'cat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' | xargs -ro  paru -S"
alias pacrem="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias cleanpac='sudo pacman -Rns $(pacman -Qtdq); paru -c'

# misc
alias vim="nvim"
alias v="nvim"
alias nv="nvim"
alias code="codium"
alias zip="zip -r"
alias cat="bat --color=always"
alias g="lazygit"
alias yay="paru"
alias c="clear"
alias q="exit"
alias catfz="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias batfz="catfz"
alias z="zathura"
alias open="xdg-open"
eval $(thefuck --alias)

# SSH
if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

alias eceprog="ssh rnallaga@eceprog.ecn.purdue.edu"
alias ecnfs="sshfs -o auto_cache,cache=yes,kernel_cache,reconnect,compression=no rnallaga@eceprog.ecn.purdue.edu:/home/shay/a/rnallaga ~/ecnfs && cd  ~/ecnfs"
alias mg="ssh mg293@ececomp.ecn.purdue.edu"
# alias mgfs="sshfs mg252@ececomp.ecn.purdue.edu:/home/ecegrid/a/mg252/ ~/MG && cd ~/MG"
alias mgfs="sshfs mg393@ececomp.ecn.purdue.edu:/home/ecegrid/a/mg393/ ~/MG -o compression=no,auto_cache,reconnect,follow_symlinks"
alias socet="ssh socet167@ececomp.ecn.purdue.edu"
