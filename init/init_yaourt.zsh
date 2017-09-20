#!/usr/bin/env zsh
source $1

if [[ -f /etc/arch-release ]]; then
    make_link $df_base_dir/dotfiles/yaourtrc $HOME/.yaourtrc
fi
