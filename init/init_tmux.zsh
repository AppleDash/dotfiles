#!/bin/zsh
source $1

make_link $df_base_dir/external/tmux-powerline $HOME/.tmux-powerline
make_link $df_base_dir/dotfiles/tmux-powerlinerc $HOME/.tmux-powerlinerc
make_link $df_base_dir/dotfiles/tmux.conf $HOME/.tmux.conf

