#!/bin/bash

set -u

home_dir=$(cd ~ && pwd)
root_dir="$home_dir/MyProgrammingTools"
backup_dir="$root_dir/backup"

[ -f $backup_dir/.vimrc ] && rm -f $home_dir/.vimrc && cp $backup_dir/.vimrc $home_dir
[ -f $backup_dir/.tmux.conf ] && rm -f $home_dir/.tmux.conf && cp $backup_dir/.tmux.conf $home_dir
[ -f $backup_dir/.bashrc ] && rm -f $home_dir/.bashrc && cp $backup_dir/.bashrc $home_dir
[ -d $backup_dir/.vim ] && rm -rf $home_dir/.vim && cp -r $backup_dir/.vim $home_dir
rm -rf $root_dir
