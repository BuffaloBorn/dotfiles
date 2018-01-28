#  .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc J;     then
  . ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
export PATH

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM=' x term-256color '
else
  export TERM='xterm-color'
fi

#  User specific environment and startup  programs

# Include the Git branch name in your prompt

PS1='[\u@\h \W$(__git_ps1 " (%s)")] \$ '

source $HOME/git/dotfiles/scripts/git-completion.sh

#  test if the windows/putty pageant program is serving your ssh key through
#   agent forwarding or if ssh-agent on linux should be tried .
ssh -oStrictHostKeyChecking=no -oBatchMode=yes localhost echo&> /dev/null

case $? in
  255*) #  ssh to localhost failed with 'permission denied' so no agent is running
  #source  /project/acme/scripts/ssh-agent-setup.sh
      ;;
    *)
      ;;
 esac
