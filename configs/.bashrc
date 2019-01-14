# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export LD_LIBRARY_PATH=$HOME/MyProgrammingTools/mylibs/libevent-2.1.8/lib:/home/haojie/MyProgrammingTools/mylibs/incurses-6.1/lib:$LD_LIBRARY_PATH
export PATH=$HOME/MyProgrammingTools/mytools/tmux-2.8/bin:$HOME/MyProgrammingTools/mytools/lrzsz/bin/:$PATH
export LS_COLORS='no=00:fi=00:di=01;94:ln=01;36;40:'
alias python='python -B'
alias tmux='tmux -2'
