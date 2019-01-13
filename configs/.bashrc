# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export LD_LIBRARY_PATH=$HOME/MyProgrammingTools/mylibs/libevent-2.1.8/lib:/home/haojie/MyProgrammingTools/mylibs/incurses-6.1/lib:$LD_LIBRARY_PATH
export PATH=$HOME/MyProgrammingTools/mytools/tmux-2.8/bin:$HOME/MyProgrammingTools/mytools/lrzsz/bin/:$PATH
alias python='python -B'
