#!/bin/bash

name=$(git config --global --get user.name)
email=$(git config --global --get user.email)
signingkey=$(git config --global --get user.signingkey)

if [[  ${#signingkey} == 16 ]] # signingkey == 16 characters
then
echo "Your Git user.signingkey is: "$signingkey
else
echo "No global user.signingkey configured for Git. Let's create it."
echo 
echo "Use RSA, Size 4096"
    gpg --full-generate-key
    gpg --list-secret-keys --keyid-format LONG
    read -p "Key (sec)[SC]: " signingkey
    git config --global user.signingkey "$signingkey"
    gpg --armor --export $signingkey
    echo "Add the public key above to your Github Accout."
    history -c
fi