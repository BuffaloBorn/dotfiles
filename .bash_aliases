# Easier navigation: .., ..., ...., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" #'cd' is probably faster to type though
alias -- -="cd - "

#Shortcuts
alias dl="cd -/Downloads"

alias ag='alias | grep'
alias be='\bundle exec'
alias h='history'
alias hg='history | grep'
alias l='/bin/ls -lF --color=tty'
alias ls=' \ls -F'
alias ll='ls -al'
alias lr='ls -R'
alias lt='ls -rot'
alias lh='ls -lhS'
alias rs='bundle exec bin/rails server --port=$ RAILS_SERVER_PORT'
alias rc='bundle exec rails console'
alias ps='ps xf'

#  This is useful for the deploy script
alias fakecommit="echo foo >> foo.rb && git add foo.rb && git ci -m 'squash! fake commit so we can deploy'"
