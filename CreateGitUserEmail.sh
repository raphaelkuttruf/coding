#!/bin/bash

email=$(git config --global --get user.email)

if [[  ! -z $email ]] && [[ ${#email} -ge 5 ]] # email is not empty and at least 5 characters long (x@y.z)
then
    echo "Your Git user.email is:      "$email
else
    echo "No global user.email configured for Git. Set it now."
    read -p "Your Email: " email
    git config --global user.email "$email"
    ./CreateGitUserEmail.sh
    history -c
fi

