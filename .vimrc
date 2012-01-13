filetype on
filetype off
filetype plugin indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
" vim-scripts repos
Bundle 'MatchTag'
Bundle 'ack.vim'
Bundle 'closetag.vim'
Bundle 'taglist.vim'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'

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

if has('gui_running')
	set guifont=Menlo:h12
    set undofile
    set rnu
end

syntax on
set background=dark
" colorscheme molokai
"colorscheme desert
colorscheme zenburn

au FocusLost * :wa

nnoremap <C-u>:w<CR> :call TransmitFtpSendFile()<CR>
let mapleader = ","

if version > 720
  set undofile
  set rnu
endif

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

ab sbo Sébastien Orban
ab asbo Author: Sébastien Orban

" Raccourci perso
nnoremap <leader>c :cd Sites/Knauf-remote/public_html/knauf/sites/all/modules/kimp<CR>
nnoremap <leader>b :CommandTFlush<CR>
nnoremap <leader>f :TagbarToggle <CR>
nnoremap <leader>s <C-w>v<C-w>l
nnoremap <leader>n <C-w><C-w>
