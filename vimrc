if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
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
" Constantly save vim session
Plug 'tpope/vim-obsession'
" Shows git diff in the gutter
Plug 'airblade/vim-gitgutter'
" Color scheme, very spoopy
Plug 'dracula/vim', { 'as': 'dracula' }
" Adds support for .editorconfig for file type based tabs/spaces
Plug 'editorconfig/editorconfig-vim'
" Adds ack usage into vim
Plug 'mileszs/ack.vim'
" Easily comment out code. 'gc' and motion or selected text
Plug 'tpope/vim-commentary'
" Fuzzy file search
" Plug 'ctrlpvim/ctrlp.vim'
" You Complete Me
Plug 'Valloric/YouCompleteMe'
" Vim-Wintabs
Plug 'zefei/vim-wintabs'
Plug 'zefei/vim-wintabs-powerline'
" Doxygen snippets
Plug 'vim-scripts/DoxygenToolkit.vim'
" Autoreload buffers that are open.
Plug 'djoshea/vim-autoread'
" For visual diff between two Selections.
Plug 'AndrewRadev/linediff.vim'
" For Bazel compilation database creation
Plug 'grailbio/bazel-compilation-database'
" For Tag sidebar.
Plug 'majutsushi/tagbar'
" Replacing Ctrl-P with this
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Enhanced syntax highlighting
Plug 'sheerun/vim-polyglot'

call plug#end()

" Enable modern Vim features not compatible with Vi spec.
set nocompatible

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
set ttymouse=xterm2
"set cc=80
map <C-o> :NERDTreeToggle<CR>

" Navigation
nnoremap <C-]> g<C-]>

" Setting Ack to ag
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" YCM
let g:ycm_autoclose_preview_window_after_completion = 1

" ctrlp
" let g:ctrlp_custom_ignore = {
"       \ 'dir':  'go\|bin\|tools\|env',
"       \}
" set wildignore+=*/tools/*,*/go/*,*/bin/*
" let g:ctrlp_cmd='CtrlP :pwd'

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

" FZF
nnoremap <C-p> :Files<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap ; :Buffers<CR>
" nnoremap <C-P> :Tags<CR>

" vim-wintabs key mappings.
" map <C-H> <Plug>(wintabs_previous)
" map <C-L> <Plug>(wintabs_next)
" map <C-T>c <Plug>(wintabs_close)
" map <C-T>u <Plug>(wintabs_undo)
" map <C-T>o <Plug>(wintabs_only)
" map <C-W>c <Plug>(wintabs_close_window)
" map <C-W>o <Plug>(wintabs_only_window)
" command! Tabc WintabsCloseVimtab
" command! Tabo WintabsOnlyVimtab
nnoremap gn :WintabsNext<CR>
nnoremap gp :WintabsPrevious<CR>
" Easier buffer navigation
" map gn :bn<cr>
" map gp :bp<cr>
map gd :bd<cr>

"Tagbar
nnoremap <silent> <C-b> :TagbarToggle<CR>

" filetype plugin indent on
syntax on
