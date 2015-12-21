#!/bin/zsh
# On my desktop, IntelliJ products only work under `strace` due to a buggy JVM.
alias pycharm-strace="strace -f -e trace=open pycharm >/dev/null 2>&1 &!"
alias intellij-strace="strace -f -e trace=open intellij-idea-ultimate-edition >/dev/null 2>&1 &!"

sublime() {  
    subl $@ > /dev/null 2>&1 &!
}

source ~/.shellfuncs/*.sh
