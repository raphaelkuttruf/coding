#Allgemein
alias ..='cd ..'
alias ls="ls -lv --group-directories-first" # Alphabetische Liste, Ordner zuerst
alias ll='ls -l' # Details
alias lr='ll -R' # Recursiv
alias la='ll -A' # Alles in diesem Verzeichnis

#Git
alias gv='git --version'
alias gst='git status --untracked-files'
alias gcl='git clone'
alias ga='git add '
alias gau='git add --update' #nur geänderte Dateien
alias gaa='git add -A' # alle Dateien, auch neue
alias gb='git branch '
alias gci='git commit -m '
alias gbr='git branch' # Branches anzeigen
alias gbrr='git branch -r' # Remote Branches anzeigen
alias gco='git checkout ' # Branch wechseln
alias gcom='git checkout master' # zum Master Branch wechseln
alias gphom='git push origin master'
alias gplmo='git pull origin master'

alias grao='git remote add origin'
alias grv='git remote -v'
alias gtr='52366eee9d8c05be74cc44d58a78a952aa7f5c7f'