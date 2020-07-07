# Linux

#Allgemein
alias ..='cd ..'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#alias ls="ls -lv --group-directories-first" # Alphabetische Liste, Ordner zuerst
#alias ll='ls -l' # Details
alias lr='ll -R' # Recursiv
#alias la='ll -A' # Alles in diesem Verzeichnis

#Git
alias gv='git --version'
alias gst='git status --untracked-files' # In gesamten Repository
alias gsth='git status --untracked-files .' # Hier in aktuellem Order
alias gcl='git clone'
alias ga='git add'
alias gau='git add --update' # nur geänderte Dateien
alias gaa='git add -A' # alle Dateien, auch neue
alias grr='git restore' # Änderungen für Datei rückgängig machen mit 'git restore [dateiname]'
alias grt='git reset' # git add für Datei rückgängig machen mit 'git reset [dateiname]'
alias grm='git rm' # Datei aus git und dem Dateisystem löschen
alias grmc='git rm --cached' # Datei aus git löschen aber nich aus dem Dateisystem
alias gcm='git commit -m' # normaler Commit
alias gcs='git commit -S -m' # signierter Commit (GPG) 
alias gbr='git branch' # Branches anzeigen oder neuen Branch erstellen mit 'gbr [branchname]'
alias gbrr='git branch -r' # Remote Branches anzeigen
alias gco='git checkout ' # Branch wechseln oder Datei zurücksetzen mit 'git checkout --file.cpp'
alias gcom='git checkout master' # zum Master Branch wechseln
alias gm='git merge' # Merge Branches mit 'gm [zielbranchname] [quellbranchname]'
alias gmo='git merge origin' # Merge aktiven Branch und Qellbranch mit 'gmo [quellbranchname]'
alias gph='git push' # Gewählter Branch sendet Updates an remote Branch mit 'gph [quellbranchname] [zielbranchname]'
alias gpho='git push origin' # Aktiver Branch sendet Updates an remote Branch mit 'gpho [branchname]'
alias gphom='git push origin master'
alias gpl='git pull' # Gewählter Branch empfängt Updates von remote Branch mit 'gpl [zielbranchname] [quellbranchname]'
alias gplo='git pull origin' # Aktiver Branch empfängt Updates von remote Branch mit 'gplo [quellbranchname]'
alias gplom='git pull origin master'

alias grao='git remote add origin' # Remote Repository hinzufügen
alias grv='git remote -v'
