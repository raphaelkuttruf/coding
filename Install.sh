#!/bin/bash

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

# Create ssh directory
if [[ -d ~/.ssh ]]
then
    echo "Your SSH directory exists."
else
    mkdir ~/.ssh
fi

# Secure acess to ssh directory and files
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

./CreateGithubSSHKey.sh

# Copy config to ~/.ssh/ if it doesn't exist. (most likely on windows)
if [[ -f ~/.ssh/config ]]
then
    echo "Your SSH config for Github exists."
else
    echo "Default SSH config file for Github was copied to ~/.ssh/."
    cp config ~/.ssh
fi

# Secure acess to ssh config
chmod 600 ~/.ssh/config

ssh -T git@github.com

# Install git-lfs package if it is not installed
#if [ $(dpkg-query -W -f='${Status}' git-lfs 2>/dev/null | grep -c "ok installed") -eq 0 ] 
#then
#sudo apt install git-lfs
#fi

git lfs install

./CreateGitSigningKey.sh
