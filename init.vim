if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
call plug#end()

set nu
set rnu
set showmatch
set mouse=v
set hlsearch
set tabstop=4
set autoindent
set wildmode=longest,list
set cc=80
