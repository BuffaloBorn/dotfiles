### Shell history tricks

#### To run a previous history command such as command ```ls```
```bash
$ !ls
```

#### To run a command with previous line options and augments we can use ```!*```. Below is an example of using this feature:

```bash
$ ls /var/log
$ cd !*
$ pwd
/var/log
```
#### We can also run the previous command be using ```!!```  

```bash
$ !!
```

#### We can also run a command be using ```!``` and line number in  which that can is on.

```bash
$ !3
```
##### Downside of using the history  line numbers, is that you have to know the line number in which you would like re-issue the command for but we can use the _(reverse i search)_ feature. Below is an example of using this type of command. First we need to issue the following Crtl + r:

```bash
(reverse-i-search) :
```
#### Then we can type in a previous command like ```ls```

```bash
(reverse-i-search) : ls
```
#### Then we can type in a previous command like ```ls```

```bash
(reverse-i-search) 'ls': ls /var/log
```

#### We can review even more issued commands that contains ```ls``` by continuously issuing the ```Crtl + r``` command.

```bash
(reverse-i-search) 'ls': rails
```
#### As you can see, that the  ```rails``` command has appeared in the search results. As you examine this closely, this command contains ```ls``` in its name.

### Configure shell history

#### Allow us to avoid adding commands to our shell history
```bash
$ export HISTCONTROL=ignorespace
```
#### Will not record duplicate entries in the shell history
```bash
$ export HISTCONTROL=ignoredups
```
#### Will erase any previous duplicate entries from the shell history
```bash
export HISTCONTROL=erasedups
```
#### Allow us to add more than one value to HISTCONTROL at once
```bash
export HISTCONTROL="erasedups:ignorespace"
```

#### To prevent certain commands to not be recorded in the shell history (e.g. history command)
```bash
export HISTIGNORE="history*"
```
#### We can also prevent certain patterns of commands to not be recorded in the shell history (e.g. history and ls command)
```bash
export HISTIGNORE="history*:ls*"
```

#### If we want a better log of our commands and history including timestamps
```bash
export HISTTIMEFORMAT="%h %d %H: %M: %S> "
```

###### Note: To get a listing on possible variables check the man page strftime, typing the following command:

```bash
$ man strftime
```
#### By default, the history file's 1000 lines; we increased this by issuing the following
```bash
$ export HISTSIZE=10000
```

#### If we want the history log to be unlimited we set it to a negative value, like -1
```bash
$ export HISTSIZE=-1
```

#### If we want turn off recording, we can set HISTSIZE to 0  
```bash
$ export HISTSIZE=0
```

#### When we exit the shell, our history is saved in the .bash_history; we choose how many lines are saved in this file by changing the HISTFILESIZE variable
```bash
$ export HISTFILESIZE=10000
```

#### If we do not want save any history we can set HISTFILESIZE to 0
```bash
$ export HISTFILESIZE=0
```

##### Remember that all those changes are for our current session; to make these changes persistent we need to add them to .bashrc_profile

### Pattern matching with globs

### Pattern matching with extended globs

#### Check to see if the ```extglob``` is enabled by issuing the following and make sure that ```extglob``` is set ```on```
```bash
$ shopt
```

#### If ```extglob``` is set ```off```; we can turn back on by issuing the following
```bash

$ shopt -s extglob
```

####Extended Globs
 
