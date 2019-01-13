#!/bin/bash

set -u

home_dir=$(cd ~ && pwd)
root_dir="$home_dir/MyProgrammingTools"
backup_dir="$root_dir/backup"

[ -f $backup_dir/.vimrc ] && cp $backup_dir/.vimrc $home_dir
[ -f $backup_dir/.tmux.conf ] && cp $backup_dir/.tmux.conf $home_dir
[ -f $backup_dir/.bashrc ] && cp $backup_dir/.bashrc $home_dir
rm -rf $root_dir
