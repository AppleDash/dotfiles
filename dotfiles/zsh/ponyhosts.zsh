#!/bin/zsh
# Stolen shamelessly from Moonlightning on Canternet.

autoload -U colors && colors
typeset -A ponyhosts
ponyhosts=(
    alicorn "%F{009}a%F{238}l%F{009}i%F{237}c%F{009}o%F{237}r%F{009}n"
    )

typeset -r ponyhosts
hostname=${$(hostname)%%.*}
# PROMPT="%(?.%F{green}.%F{red})[%?] %F{yellow}[%l] %F{magenta}[%/]%f"$'\n'"${ponyhosts[$hostname]:-$hostname}%f:%. %n%# "
PROMPT="%(?.%F{green}.%F{red})[%?] %F{yellow}[%l] %F{magenta}[%/]%f"$'\n'"[%n@${ponyhosts[$hostname]:-$hostname}%f %1~]$ "
