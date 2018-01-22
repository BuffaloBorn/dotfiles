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
function med(){
  mkdir -p "$1" && cd "$1";
}

# Change file extensions recursively in current directory
#
# change-extension erb to haml
function change-ext(){
  for fin	*.$1 do
      [ -f "$f" ] && mv -v  "$f" "${f%$1}$2"
  done
}

# Change working directory to the top-most Finder window  location
#
# Need to get the MATE version instead
function cdf(){
  cd "osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'";
}

# Determine size of a file or total size of a directory
function fs(){
  if du -b /dev/null > /dev/null 2>&2; then
    local arg=-sbh;
  else
    local arg=-sh;
  fi

  if [[ -n "$@ " ] ] ; then
    du $arg -- "#@ ";
  else
    du $arg .[A.]*./*;
  fi;
}
