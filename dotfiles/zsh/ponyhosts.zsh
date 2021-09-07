#!/bin/zsh
# Stolen shamelessly from Moonlightning on Canternet.

autoload -U colors && colors
typeset -A ponyhosts
ponyhosts=(
    alicorn     "%F{009}a%F{238}l%F{009}i%F{237}c%F{009}o%F{237}r%F{009}n"
    ponies      "%F{039}ponies"
    zephyr      "%F{034}zephyr"
    thunderlane "%F{242}thunderlane"
    moondancer  "%F{230}moondancer"
    )


hostname=${$(uname -n)%%.*}

namecolor=""
if [[ "$USER" == "root" ]]; then
    namecolor="%F{009}"
elif [[ "$USER" == "appledash" ]]; then
    namecolor="%F{135}"
elif [[ "$USER" == "twibooru" ]]; then
    namecolor="%F{182}"
fi
# PROMPT="%(?.%F{green}.%F{red})[%?] %F{yellow}[%l] %F{magenta}[%/]%f"$'\n'"${ponyhosts[$hostname]:-$hostname}%f:%. %n%# "
PROMPT="%(?.%F{green}.%F{red})[%?] %F{yellow}[%l] %F{magenta}[%/]%f"$'\n'"[$namecolor%n%f@${ponyhosts[$hostname]:-$hostname}%f %1~]$ "
