#!/bin/bash

./CreateGitUserName.sh
./CreateGitUserEmail.sh
./CreateGitSigningKey.sh

# Copy .bashrc to ~/ if it doesn't exist. (most likely on windows)
if [[ -f ~/.bashrc ]]
then
    echo "Your Bash .bashrc exists."
else
    cp .bashrc ~
fi

# Copy .bash_aliases to ~/
cp .bash_aliases ~

./CreateGithubSSHKey.sh

# Copy config to ~/.ssh/ if it doesn't exist. (most likely on windows)
if [[ -f ~/.ssh/config ]]
then
    echo "Your SSH config for Github exists."
else
    echo "Default SSH config file for Github was copied to ~/.ssh/."
    cp config ~/.ssh
fi

ssh -T git@github.com

git lfs install
