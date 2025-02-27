HISTSIZE=1000000
SAVEHIST=1000000

export GTK_THEME=WhiteSur-Dark
export EDITOR="nvim"
export TERMINAL="kitty"
# export BROWSER="firefox"
export BROWSER="zen-browser"
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

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--color=fg:#c0caf5,bg:#1a1b26,hl:#ff9e64 \
--color=fg+:#c0caf5,bg+:#292e42,hl+:#ff9e64 \
--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff \
--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a"

# export SVLINT_CONFIG=$XDG_CONFIG_HOME/svlint/svlint.toml
# export SVLINT_CONFIG=$XDG_CONFIG_HOME/svlint/demo.toml
