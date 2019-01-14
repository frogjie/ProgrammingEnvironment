set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加
set nu
set t_Co=256

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
call vundle#end()            
filetype plugin indent on    

colorscheme gruvbox
set background=dark
set sw=4
set ts=4
set autoindent
