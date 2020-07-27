#!/bin/bash

cp .bashrc ~

./CreateGithubSSH-Key.sh

cp config ~/.ssh

ssh -T git@github.com
