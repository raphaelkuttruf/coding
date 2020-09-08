#!/bin/bash

name=$(git config --global --get user.name)
email=$(git config --global --get user.email)

if [[ name != "" ]]
then
    echo "Your Git user.name is:       "$name
else
    echo "No global user.name configured for Git. Set it now."
    read -p "Your Name: " name
    git config --global user.name "$name"
    ./CreateGitUserAndEmail.sh
    history -c
fi

if [[ email != "" ]]
then
    echo "Your Git user.email is:      "$email
else
    echo "No global user.email configured for Git. Set it now."
    read -p "Your Email: " email
    git config --global user.email "$email"
    ./CreateGitUserAndEmail.sh
    history -c
fi

