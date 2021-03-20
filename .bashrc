#!/bin/bash

# Windows Bash
## Diese Datei ins Benutzerverzeichnis ablegen. z.B.: C:\Users\raphael.kuttruf

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PS1='${debian_chroot:+($debian_chroot)}\[\e[01;32m\]\u\[\e[00m\e[01;93m\]@\[\e[00m\e[01;96m\]\h\[\e[00m\e[01;93m\]:\[\e[00m\e[01;34m\]\w\[\e[00m\e[32m\]$(parse_git_branch)\[\e[00m\e[31m\]$(git_info_changed_tracked)\[\e[00m\e[35m\]$(git_info_changed_staged)\[\e[00m\e[93m\]$ \[\e[00m\]'
  