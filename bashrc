#flush dns
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

# Open GIT modified files
function backtowork() {
    #local FILES=`git status --porcelain | awk '{print $2}' | xargs`
	local FILES=`git status --porcelain | grep -Po '[^\s]+[^\/]$' | xargs`
    if [ -n "$FILES" ] ; then
        vim -p $FILES
    else
        printf "\nDon't worry. Your workspace is empty. (:\n\n"
    fi
}

# Get GIT tags by date
function gitshowtags() {
    git log --tags --simplify-by-decoration --pretty="format:%ai %d" | grep tag | less
}

# Rename Git remote branch on origin
git-rename-remote-branch() {
	currentbranch="$(git branch --show-current)" # not the best method for scripting
	git branch -m $1
	git push origin :$currentbranch $1
	git push origin -u $1
}

