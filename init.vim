if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
" Tree view for file browing
Plug 'scrooloose/nerdtree'
" Status line for vim
Plug 'itchyny/lightline.vim'
" Linting 
Plug 'w0rp/ale'
" Lightline integration for ALE
Plug 'maximbaz/lightline-ale'
" :) Let's me do :SudoWrite when I forget to do sudo
Plug 'tpope/vim-eunuch'
" Shows git diff in the gutter
Plug 'airblade/vim-gitgutter'
" Indent guides for python,  I don't like it that much. Keep disabled
Plug 'nathanaelkane/vim-indent-guides'
" Auto complete
Plug 'Valloric/YouCompleteMe'
" Color scheme, very spoopy
Plug 'dracula/vim', { 'as': 'dracula' }
" Syntax Highlighting for Robot
Plug 'mfukar/robotframework-vim'
" Adds support for .editorconfig for file type based tabs/spaces
Plug 'editorconfig/editorconfig-vim'
" Adds ack usage into vim
Plug 'mileszs/ack.vim'
" Easily comment out code. 'gc' and motion or selected text
Plug 'tpope/vim-commentary'
" Fuzzy file search
Plug 'ctrlpvim/ctrlp.vim'
" Rust plugin
Plug 'rust-lang/rust.vim'
call plug#end()

set nu
set rnu
set showmatch
set mouse=a
set hlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set wildmode=longest,list
set guicursor=
"set cc=80

" Nerd Tree configuration
map <C-o> :NERDTreeToggle<CR>

" vim-indent guidelines
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3

" You Complete Me configuration
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

" Setting Ack to ag
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" Lightline 
set laststatus=2
let g:lightline = {}
let g:lightline.enable = {'status-line':2}
let g:lightline.component_expand = {
   \  'linter_checking': 'lightline#ale#checking',
   \  'linter_warnings': 'lightline#ale#warnings',
   \  'linter_errors': 'lightline#ale#errors',
   \  'linter_ok': 'lightline#ale#ok',
   \ }
let g:lightline.component_type = {
   \     'linter_checking': 'left',
   \     'linter_warnings': 'warning',
   \     'linter_errors': 'error',
   \     'linter_ok': 'left',
   \ }
let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]] }
let g:lightline#ale#indicator_warnings = "▲:"
let g:lightline#ale#indicator_errors = "✘:"
let g:lightline#ale#indicator_ok = "✔"

colorscheme dracula

" Leader Shortcuts
let mapleader=","
nnoremap <leader>af :ALEFirst<CR>
nnoremap <leader>an :ALENext<CR>
nnoremap <leader>ap :ALEPrevious<CR>

