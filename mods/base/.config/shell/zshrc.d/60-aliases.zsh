#!/usr/bin/env zsh

# Colors
alias ls='ls --color=auto -h'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias diff='diff --color=auto'
alias tree="tree -C"

# Use neovim if available
[ -x "$(command -v nvim)" ] && alias vim="nvim" vi="nvim"

alias cp="cp -vi"
alias mkdir="mkdir -v"
alias mv="mv -vi"
alias rm="rm -vi"
alias trash="trash -v"
alias lf="lfcd"
alias t='trash'
alias rsync='rsync -avP'
alias chx="chmod +x"

if [ -x "$(command -v eza)" ]; then
    export EZA_COLORS="uu=0:gu=0"
    alias eza="eza --icons --group-directories-first"
    alias ls="eza"
    alias l="eza"
    alias ll="eza --no-user -l"
    alias la="eza --no-user -la"
    alias lu="eza -la"
    alias lt="eza -T -L 2"
    alias lt3="eza -T -L 3"
fi

alias zd='cd ~/Downloads'
alias zs='cd ~/Desktop'
alias zr='cd "$(git rev-parse --show-toplevel)"'
alias ze='z "$(tmux display-message -p "#S")"'
alias zf='eval "$(__fzf_cd__)"'

# Laravel
alias sail="vendor/bin/sail"
alias artisan="de php artisan"
alias composer="c"
alias s="sail"

alias pc='precommit'
alias dup='docker compose up'
alias dst='docker compose stop'

alias g="git"
alias gp="g pull"
alias gP="g push"
alias lg="lazygit"
alias ld="lazydocker"
alias glc="git log -1 --pretty=%B"

alias osw="nh os switch"

alias cmatrix='cmatrix -ab'
alias ff='fastfetch'
alias q='numbat'

alias tsr='tmux source-file ~/.config/tmux/tmux.conf'
alias ts='tmux split-window -h \; split-window -v'

# Dotfiles
alias dlg="(cd $HOME/Repos/dotfiles && lazygit)"

[ "$(uname)" != 'Darwin' ] && alias cal='cal --monday'
[ "$(uname)" = 'Darwin' ] && alias cal='cal -A 2'

alias keepon="xset s off && xset -dpms"

alias vse="(cd $HOME/.local/share/scripts && gf)"
alias vaw="(cd $HOME/.config/awesome && gf)"
alias vsh="(cd $HOME/.config/shell && gf)"
alias vrc="(cd $HOME/Repos/dotfiles && gf)"
alias vne="(cd $HOME/.config/nvim && gf)"
alias vnx="(cd $HOME/Repos/dotfiles/nix && gf)"

# Networking
alias pingg="ping google.com"
alias ipa="ip a"

alias sshvm='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -A'

# Other
alias nj="jq . | nvim -Rc 'set syntax=json | set nospell' -"

alias tra="sat transactions:select"
