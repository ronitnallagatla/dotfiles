HISTSIZE=1000000
SAVEHIST=1000000

export GTK_THEME=WhiteSur-dark
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export PATH="$HOME/.local/bin":$PATH
export PATH=$HOME/.cargo/bin:$PATH
export GOPATH=$HOME/.local/share/go
export PATH=$HOME/.local/share/go/bin:$PATH
export PATH=$HOME/.config/scripts:$PATH

export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=Hyprland
export XDG_CONFIG_HOME=$HOME/.config

export FZF_DEFAULT_OPTS="
  --prompt ' '
  --pointer ' λ'
  --layout=reverse
  --border horizontal
  --height 40"

export SVLINT_CONFIG=$XDG_CONFIG_HOME/svlint/svlint.toml
