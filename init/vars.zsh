#!/bin/zsh
make_link() {
    targ="$1"
    link="$2"

    if [ -L "$link" ]; then
        echo "$link already exists as a link, not creating anything."
        return
    elif [ -f "$link" ]; then
        echo "$link already exists as a regular file, not creating anything."
        return
    elif [ -d "$link" ]; then
        echo "$link already exists as a directory, not creating anything."
        return
    fi

    ln -s "$targ" "$link"
    echo "Made link: $link -> $targ"
}

pushd $(dirname $(dirname $0)) > /dev/null
SCRIPTPATH=`pwd`
popd > /dev/null

df_base_dir="$SCRIPTPATH"

