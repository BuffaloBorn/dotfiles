# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  ./etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bash_functions ];     then
  . ~/.bash_functions
fi

# This sets $PATH, $ACME, oracle, etc. - everything needed to work on ACME.
if [ -f /project/ acme/scripts/acme-sh ared-env.sh ]; then
  . /project/acme/scripts/acme-shared-env.sh
fi

# This sets $PATH, $ACME, oracle, etc. - everything needed to work on ACME for FidOS.
#if [ -f $HOME/project/acme/scripts/acme-shared-env.sh ];       then
#	. $HOME/project/acme/scripts/acme-shared-env.sh
#fi

# User specific aliases and functions export EXCLUDE SLOW SPECS=true
# Put personal env vars such as $AECOM_GEM_DIR, GIT COMMITTER NAME and GIT COMMITTER EMAIL in -/.env_vars
if [ -e ~/.env_vars ]; then
  . ~/.env_vars
else
  echo
  echo "you MUST create and customize the ~/.env_vars file from .env_vars.sample for yourself."
  echo
  echo
  # don't exit here. It closes the window.
fi

# This ensures that the TERM variable is only set outside of tmux, since tmux sets its own terminal.
# From tmux By: Brian P. Hogan
#Publisher: Pragmatic Bookshelf
#Pub. Date: September 12, 2013
#Print ISBN-13: 978-1-934356-96-8
[ -z "$TMUX" ] && export TERM=xterm-256color

umask 0007
