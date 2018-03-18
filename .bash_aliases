# Easier navigation: .., ..., ...., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" #'cd' is probably faster to type though
alias -- -="cd - "

#Shortcuts
alias dl="cd -/Downloads"

# handy short cuts #
alias j='jobs -l'

alias ag='alias | grep'
alias be='\bundle exec'
alias h='history'
alias ls=' \ls -F'
alias ll='ls -al'
alias lr='ls -R'
alias lt='ls -rot'
alias lh='ls -lahS'
alias rs='bundle exec rails server --port=$ RAILS_SERVER_PORT'
alias rc='bundle exec rails console'
alias ps='ps xf'

alias c='clear'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#  This is useful for the deploy script
alias fakecommit="echo foo >> foo.rb && git add foo.rb && git ci -m 'squash! fake commit so we can deploy'"

alias gpd="git push origin develop"
alias gpm="git push origin master" 
alias gitar="git ls-files -d -m -o -z --excludestandard | xargs -0 git update-index --add --remove"

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

## pass options to free ##
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

#Grabs the disk usage in the current directory
alias usage='du -ch | grep total'

#Gets the total disk usage on your machine
alias totalusage='df -hl --total | grep total'

#Shows the individual partition usages without the temporary memory values
alias partusage='df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs'

#Gives you what is using the most space. Both directories and files. Varies on
#current directory
alias most='du -hsx * | sort -rh | head -10'

alias du1='du -d 1'
alias diskSize='du -h | awk ‘END{print $1}’'
alias ps2=’ps -ef | grep -v $$ | grep -i ‘

alias lt=’ls -alrt’

alias tgrep='rgrep --binary-files=without-match'

# file tree of directories only
alias dirtree="ls -R | grep :*/ | grep ":$" | sed -e 's/:$//' -e 's/[^-][^/]*//--/g' -e 's/^/   /' -e 's/-/|/'"

alias untar='tar -zxvf'
alias envg='env | grep -i'
alias aliasg='alias | grep -i'
# find broken symlinks
alias brokenlinks='find . -xtype l -printf "%p -> %ln"'
alias p='pushd'
alias o='popd'
alias d='dirs -v'

# search for a string recursively in any C source files
alias src-grep='find . -name "*.[ch]" | xargs grep '

# reloads changes
alias rfc='source ~/.bashrc; cl'
alias rf='source ~/.bashrc'
