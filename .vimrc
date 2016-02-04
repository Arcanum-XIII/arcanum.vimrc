set shell=/bin/bash

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'
Bundle 'Raimondi/delimitMate'
Bundle 'majutsushi/tagbar'
Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Shougo/neomru.vim'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'wting/rust.vim'
" vim-scripts repos
Bundle 'MatchTag'
Bundle 'ack.vim'
Bundle 'closetag.vim'
Bundle 'taglist.vim'
Bundle 'Zenburn'
Bundle "slimv.vim"

filetype on
filetype off
filetype plugin indent on

set nocompatible
set modelines=0

set encoding=utf8
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set viminfo='10,\"100,:20,%,n~/.viminfo
set directory=~/.tmp

if has('gui_running')
	"set guifont=Menlo\ for\ Powerline:h12
    set guifont=Menlo:h12
    set guioptions=egmrt
end

syntax on
set background=dark
colorscheme zenburn

au FocusLost * :wa

nnoremap <C-u>:w<CR> :call TransmitFtpSendFile()<CR>
let mapleader = ","

set undofile
set rnu

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

ab sbo Sébastien Orban
ab asbo Author: Sébastien Orban

" Raccourci perso
nnoremap <leader>f :TagbarToggle <CR>
nnoremap <leader>sh <C-w>v<C-w>l
nnoremap <leader>n <C-w><C-w>
nnoremap <leader>h :set hlsearch! hlsearch?<CR>

nnoremap <F5> :GundoToggle<CR>

let g:slimv_swank_cmd = '!osascript -e "tell application \"Terminal\" to do script \"ccl --load ~/.vim/bundle/slimv.vim/slime/start-swank.lisp\""'
let g:slimv_leader = ';'
let g:paredit_leader = '='


set rtp+=$GOROOT/misc/vim

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Unite
let g:unite_source_history_yank_enable = 1
let g:unite_source_grep_command = 'ack'
let g:unite_source_grep_default_opts='--no-heading --no-color -a'
let g:unite_source_grep_recursive_opt=''
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <leader>a :<C-u>Unite grep:.<cr>
