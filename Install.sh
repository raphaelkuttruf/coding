#!/bin/bash

# Copy .bashrc to ~ if it doesn't exist. (like on windows)
if [[ -f ~/.bashrc ]]
then
    cp .bashrc ~
else
    echo ".bashrc exists."
fi

cp .bash_aliases ~

./CreateGithubSSH-Key.sh

# Copy config to ~ if it doesn't exist. (like on windows)
if [[ -f ~/.ssh/config ]]
then
    cp config ~/.ssh
else
    echo ".ssh/config exists."
fi

ssh -T git@github.com
