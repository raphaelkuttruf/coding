# Linux
## wird mit ./InstallOnLinux.sh nach ~ kopiert

# Allgemein
alias ..='cd ..'

alias ll='ls -alF --group-directories-first'
alias la='ls -AF --group-directories-first'
alias l='ls -CF'

#alias ls="ls -lv --group-directories-first" # Alphabetische Liste, Ordner zuerst
#alias ll='ls -l' # Details
alias lr='ll -R' # Recursiv
#alias la='ll -A' # Alles in diesem Verzeichnis

# Git

alias gv='git --version'
alias gssha='ssh -T git@github.com' # Check Authentication with gssh or clone Repository with gssh:[user]/[repo].git]
alias gds="git diff --stat | tail -n1" # Differenz Informationen anzeigen
#alias gst='git status --untracked-files -s' 
gst () {
    # Repository Status abfragen und Infos zu Änderungen anzeigen (optionale Eingrenzung [dateiname/ordnername])
    git status --untracked-files -s $1
    gds
}
alias gcl='git clone'
gclhttps () {
    # Clone Repository using https
    # $1 = user/repo
    git clone https://github.com/"$1".git
}
gclssh () {
    # Clone Repository using SSH
    # $1 = user/repo
    git clone git@github.com:"$1".git
}
alias ga='git add' # stage Datei [dateiname] 
alias gau='git add --update' # stage nur geänderte Dateien
alias gaa='git add -A; gst' # stage alle Dateien, auch neue
alias grr='git restore' # Änderungen für Datei rückgängig machen mit 'grr [dateiname]'
#alias grt='git reset -q; gst'  
grt () {
    # git add für Datei rückgängig machen mit 'grt [dateiname]'
    # oder repository auf commit zurücksetzen (geänderte dateien bleiben erhalten) mit 'grt [SHA]'
    git reset -q $1
    gst
}
#alias grth='git reset --hard; gst' 
grth () {
    # Repository auf commit zurücksetzen mit 'grth [SHA]'
    git reset --hard $1
}
alias grm='git rm' # Datei aus git und dem Dateisystem löschen
alias grmc='git rm --cached' # Datei aus git löschen aber nich aus dem Dateisystem
alias gcm='git commit -m' # normaler Commit mit gcm "[Message]"
alias gcam='git commit --amend -m' # normale Commit Message ändern mit gcam "[neue Message]"
alias gcs='git commit -S -m' # signierter Commit (GPG) mit gcs "[Message]"
alias gcas='git commit --amend -S -m' # signierte Commit Message ändern (GPG) mit gcas "[neue Message]"
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

alias glg='git log' # Die Commit Historie anzeigen mit 'glg'
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
    git log --author="$1" -n "$2"
}

#alias glcn'git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -n'


#Git LFS

alias glfi='git lfs install' # Installation von git LFS
# https://docs.github.com/en/github/managing-large-files/installing-git-large-file-storage
alias glft='git lfs track' # Datei mit git large files storage beobachten 'git lfs track [dateiname]' (geht auch mit dateitypen, besser nur im lokalen Repository nutzen)
# https://docs.github.com/en/github/managing-large-files/configuring-git-large-file-storage
glfmiea() {
    # List files above specified size (b,kb,mb,gb,tb) with 
    git lfs migrate info --everything --above="$1"
}



# Git Bash Prompt

# https://stackoverflow.com/questions/3162444/git-count-files-in-the-staged-index
git_info_changed_tracked() {
    if [ -d .git ]; then
        git status -s | egrep "^ M" | wc -l | tr -d ' '
    fi;
}

git_info_changed_staged() {
    if [ -d .git ]; then
        git status -s | egrep "^M" | wc -l | tr -d ' '
    fi;
}

git_info(){
    if [ -d .git ]; then
        git_info_changed_tracked | git_info_changed_staged | tr -d ' '
    fi;
}

parse_git_branch() {
    if [ -d .git ]; then
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
    fi;
}
## replace PS1=.. in .bashrc with:
#PS1='${debian_chroot:+($debian_chroot)}\[\e[01;32m\]\u\e[00m\]\[\e[01;93m\]@\e[00m\]\[\e[01;96m\]\h\[\e[00m\]\[\e[01;93m\]:\e[00m\]\[\e[01;34m\]\w\[\e[00m\]\e[32m$(parse_git_branch)\e[00m\]\e[31m$(git_info_changed_tracked)\e[00m\e[35m$(git_info_changed_staged)\e[00m\[\e[93m\]\$ \[\e[00m\]'
