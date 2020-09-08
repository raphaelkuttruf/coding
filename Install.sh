#!/bin/bash

# secure acess to ssh directory and files
touch ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# Copy .bashrc to ~/ if it doesn't exist. (most likely on windows)
if [[ -f ~/.bashrc ]]
then
    echo "Your Bash .bashrc exists."
else
    cp .bashrc ~
fi

# Copy .bash_aliases to ~/
cp .bash_aliases ~

./CreateGitUserName.sh
./CreateGitUserEmail.sh
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

./CreateGitSigningKey.sh
