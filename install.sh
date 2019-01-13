#!/bin/bash

set -u

home_dir=$(cd ~ && pwd)
root_dir="$home_dir/MyProgrammingTools"
backup_dir="$root_dir/backup"       # a directory for storing original tools, original libs, original config file, for recovery
mytools_dir="$root_dir/mytools"     # a directory for storing tools, such as tmux, lrzsz
mylibs_dir="$root_dir/mylibs"       # a directory for storing libs, such as libevent
tmp_dir="$root_dir/tmp"             # used by install.sh, will be deleted when complete

if [ -f $root_dir ];then
    echo "already have a $root_dir directory, exit"
fi

mkdir $root_dir
mkdir $backup_dir

work_dir=$(cd "$(dirname $0)" && pwd)
[ -f $home_dir/.vimrc ] && cp $home_dir/.vimrc $backup_dir
[ -f $home_dir/.tmux.conf ] && cp $home_dir/.tmux.conf $backup_dir
[ -f $home_dir/.bashrc ] && cp $home_dir/.bashrc $backup_dir
cp $work_dir/.vimrc $home_dir
cp $work_dir/.tmux.conf $home_dir
cp $work_dir/.bashrc $home_dir
cp -r $work_dir/mylibs $root_dir
cp -r $work_dir/mytools $root_dir
source $home_dir/.bashrc
/usr/bin/vim  +PluginInstall +qall
