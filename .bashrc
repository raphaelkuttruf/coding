## Windows Bash
  #Diese Datei ins Benutzerverzeichnis ablegen. z.B.: C:\Users\raphael.kuttruf

#Allgemein
alias ..='cd ..'
alias ls="ls -lv --group-directories-first" # Alphabetische Liste, Ordner zuerst
alias ll='ls -l' # Details
alias lr='ll -R' # Recursiv
alias la='ll -A' # Alles in diesem Verzeichnis

#Git
alias gv='git --version'
alias gst='git status --untracked-files' # In gesamten Repository
alias gst.='git status --untracked-files .' # In aktuellem  Order
alias gcl='git clone'
alias ga='git add'
alias gau='git add --update' # nur geänderte Dateien
alias gaa='git add -A' # alle Dateien, auch neue
alias gr='git restore' # Änderungen rückgängig machen
alias grm='git rm --cached' # Datei aus git löschen aber nich aus dem Dateisystem
alias gcm='git commit -m' # normaler Commit
alias gcs='git commit -S -m' # signierter Commit (GPG) 
alias gbr='git branch' # Branches anzeigen oder neuen Branch erstellen mit 'git branch [branchname]'
alias gbrr='git branch -r' # Remote Branches anzeigen oder neuen Branch erstellen mit 'git branch [branchname]'
alias gco='git checkout ' # Branch wechseln oder Datei zurücksetzen mit 'git checkout --file.cpp'
alias gcom='git checkout master' # zum Master Branch wechseln
alias gphom='git push origin master'
alias gplom='git pull origin master'

alias grao='git remote add origin' # Remote Repository hinzufügen
alias grv='git remote -v'
