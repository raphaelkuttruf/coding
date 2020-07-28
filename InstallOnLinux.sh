#!/bin/bash

cp .bash_aliases ~

./CreateGithubSSH-Key.sh

ssh -T git@github.com
