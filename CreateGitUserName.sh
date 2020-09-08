#!/bin/bash

name=$(git config --global --get user.name)

if [[ ! -z $name ]] # name is not empty
then
    echo "Your Git user.name is:       "$name
else
    echo "No global user.name configured for Git. Set it now."
    read -p "Your Name: " name
    git config --global user.name "$name"
    ./CreateGitUserName.sh
    history -c
fi