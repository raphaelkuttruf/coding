# Coding

My Coding Setup

## Install

1. <https://code.visualstudio.com/>
2. <https://git-scm.com/>
3. <https://git-lfs.github.com/>
4. Type 'git clone https://github.com/raphaelkuttruf/coding.git' in git bash
5. Type 'cd coding' in git bash
6. Type 'start InstallOnWindows.bat' in git bash or run InstallOnLinux.sh in Terminal

### Git

Files that are copied for Windows 

>.bashrc
>.\ssh\config

and Linux

>.bash_aliases

### Create SSH Key for Github

> cd ~\.ssh\

>ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

>id_rsa_github

### Create GPG Signing Key for Github

>gpg --full-generate-key

>gpg --list-secret-keys --keyid-format LONG

>gpg --armor --export [Public Key]

>git config --global user.signingkey [Public Key]

#### Info

<https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent>
<https://man.openbsd.org/cgi-bin/man.cgi/OpenBSD-current/man1/ssh-keygen.1?query=ssh-keygen&sec=1>
<https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification>
<https://github.blog/2015-06-08-how-to-undo-almost-anything-with-git/>
<https://gist.github.com/bsara/5c4d90db3016814a3d2fe38d314f9c23>
<https://stackoverflow.com/questions/18544359/how-to-read-user-input-into-a-variable-in-bash>
<https://www.raspberrypi.org/documentation/linux/usage/bashrc.md>
