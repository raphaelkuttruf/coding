# Linux
##

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
alias grt='git reset' # git add für Datei rückgängig machen mit 'git reset [dateiname]' oder repository auf commit zurücksetzen (dateien bleiben erhalten) mit 'git reset [SHA]'
alias grth='git reset --hard' # git add für Datei rückgängig machen mit 'git reset [dateiname]' oder repository auf commit zurücksetzen mit 'git reset [SHA]'
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
alias grv='git remote -v' # Remote Repositorys anzeigen

alias gln='git log -n' # Die letzten n Commits anzeigen mit 'gln [n]'
alias glm='git log --author="$(git config user.name)" -n' # Meine Commits anzeigen mit 'glm' (git log me)
alias glmn='git log --author="$(git config user.name)" -n' # Meine letzten n Commits anzeigen mit 'glmn [n]' (git log me n)
# Commits von bestimmtem Autor anzeigen mit 'gla "[author]"'
#alias gla='read -p "author:" author && git log --author="$author"' 
gla () {
    # $1 = author 
   #echo "Parameter #author is $1"
    git log --author="$1"
}
# Die letzten n Commits von bestimmtem Autor anzeigen mit 'glan "[author]" [n]'
#alias glan='read -p "author:" author && read -p "n:" n && git log --author="$author" -n $n'
glan () {
    # $1 = author 
    # $2 = n 
   #echo "Parameter #author is $1 and #n is $2"
    git log --author="$1" -n $2
}

#alias glcn'git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -n'

alias glfi='git lfs install' # Installation von git LFS
# https://docs.github.com/en/github/managing-large-files/installing-git-large-file-storage
alias glft='git lfs track' # Datei mit git large files storage beobachten 'git lfs track [dateiname]' (geht auch mit dateitypen, besser nur im lokalen Repository nutzen)
# https://docs.github.com/en/github/managing-large-files/configuring-git-large-file-storage