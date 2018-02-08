#!/usr/bin/env zsh
source $1
make_link $df_base_dir/dotfiles/gitconfig $HOME/.gitconfig
make_link $df_base_dir/dotfiles/gitignore_global $HOME/.gitignore_global

