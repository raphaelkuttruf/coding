#!/bin/bash

# Copy .bashrc to ~ if it doesn't exist. (like on windows)
if [[ -f ~/.bashrc ]]
then
    echo ".bashrc exists."
else
    cp .bashrc ~
fi

cp .bash_aliases ~

./CreateGithubSSH-Key.sh

# Copy config to ~ if it doesn't exist. (like on windows)
if [[ -f ~/.ssh/config ]]
then
    echo ".ssh/config exists."
else
    cp config ~/.ssh
fi

ssh -T git@github.com
