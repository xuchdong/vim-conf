set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/Xuyuanp/nerdtree-git-plugin.git'
call vundle#end()
filetype plugin indent on

syntax on
set nu

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set scrolloff=3
set cursorline

map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t\|\t/
match RedundantSpaces /\s\+$/

autocmd BufNewFile *.py 0r ~/.vim/template/py.tlp
