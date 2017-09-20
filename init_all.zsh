#!/usr/bin/env zsh
for f in ./init/init_*; do
    $f "$(dirname $0)/init/vars.zsh"
done
