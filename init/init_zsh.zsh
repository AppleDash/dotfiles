#!/bin/zsh
source $1
make_link $df_base_dir/external/prezto/ $HOME/.zprezto

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  make_link "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

rm $HOME/.zshrc

make_link $df_base_dir/dotfiles/zsh $HOME/.zsh
make_link $df_base_dir/dotfiles/zshrc $HOME/.zshrc
make_link $df_base_dir/dotfiles/bashrc $HOME/.bashrc

