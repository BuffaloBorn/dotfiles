# No arguments: 'git status'
# With arguments: acts like 'git'

g() {
  if [[ $# > O ]]; then git $@
  else
    git status
  fi
}

# Complete g like git
# compdef g=git

# Make directory and change into it.
function mcd(){
  mkdir -p "$1" && cd "$1";
}

# Find file without seeing 'Permission denied' on console
function findFromRoot(){
  find / -name "$1" 2>&1 | grep -v "Permission denied"
}

# Change file extensions recursively in current directory
#
# change-extension erb to haml
#function change-extension() {
#  foreach f (**/*.$1)
#    mv $f $f:r.$2
#  end
#}

# Change working directory and then list that new directory contents
function cdl() { 
  cd "$@"; ls; 
}

# Define a command to cd then print the resulting directory.
# I do this to avoid putting the current directory in my prompt.
# alias cd=’cdir’
function cdir ()
{
  cd “$*”
  pwd
}

# e.g., up -> go up 1 directory
# up 4 -> go up 4 directories
up()
{
    dir=""
    if [[ $1 =~ ^[0-9]+$ ]]; then
        x=0
        while [ $x -lt ${1:-1} ]; do
            dir=${dir}../
            x=$(($x+1))
        done
    else
         dir=..
    fi
    cd "$dir";
}

# List files in order of ascending size (the second form takes a file-pattern argument):

function lsdu() { ls -l $* | sort --key=5.1 -n; };
function lsduf() { ls -l | egrep $* | sort --key=5.1 -n; };

# Change working directory to the top-most Finder window  location
#
# Need to get the MATE version instead
function cdf(){
  cd "osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'";
}

# Determine size of a file or total size of a directory
#function fs(){
#  if du -b /dev/null > /dev/null 2>&2; then
#    local arg=-sbh;
#  else
#    local arg=-sh;
#  fi
#
#  if [[ -n "$@ " ] ] ; then
#    du $arg -- "#@ ";
#  else
#    du $arg .[A.]*./*;
#  fi;
#}

# Create a mirror from git repo
# need more work to make it more generic 
# more check with inputs
function mgr(){
  if [ -d "$1" ]; then
    rm -rf "$1"
    mcd "$1"
    git clone --mirror "$2" .git
    git config --bool core.bare false
    git reset --hard
    git remote add "$3" "$2" 
    git push "$2" --all
   else
    echo "$1 - repo is not currently tracked locally !!!"
  fi
}

# Add to .bashrc or .profile and type: “bu filename.txt”
# I made this a long time ago and use it daily. If you really want to stay on top of your 
# backed up files, you can keep a log by adding something like:
function bu() { 
  cp $@ $@.backup-`date +%y%m%d`; echo "`date +%Y-%m-%d` backed up $PWD/$@" >> ~/.backups.log; 
}
