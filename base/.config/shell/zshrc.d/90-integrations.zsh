#!/usr/bin/env zsh

[ -x "$(command -v starship)" ] && eval "$(starship init zsh)"
[ -x "$(command -v fzf)" ] && eval "$(fzf --zsh)"
[ -x "$(command -v zoxide)" ] && eval "$(zoxide init zsh)"
[ -x "$(command -v direnv)" ] && eval "$(direnv hook zsh)"

dchk
