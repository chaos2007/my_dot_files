set nocompatible              " be iMproved, required
filetype off                  " required

"Start Plugin section
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required
"End Plugin section

set nu
set rnu
set showmatch
set mouse=v
set hlsearch
set tabstop=4
set autoindent
set wildmode=longest,list
set cc=80

