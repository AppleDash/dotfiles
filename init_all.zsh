#!/bin/zsh
for f in ./init/init_*; do
    $f "$(dirname $0)/init/vars.sh"
done

