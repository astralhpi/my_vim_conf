" default settings
set nocompatible
filetype off
set history=1000
set encoding=utf8

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

filetype plugin indent on

" indents
set autoindent
set wrap
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"remap leader to comma
let mapleader = ","
" auto read when a file is changed from outside
set autoread

" colorscheme
colorscheme monokai

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" line number
set nu

" ignore compiled files
set wildignore=*.o,*~,*.pyc
set ruler

" Don't redraw while executing macros (good performance config)
"set lazyredraw

" Turn backup off, since most stuff is in SVN, git etc
set nobackup
set nowb
set noswapfile

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

" Bundles
Bundle 'bling/vim-airline'
Bundle 'fugitive.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'git://github.com/davidhalter/jedi-vim'
Bundle 'andviro/flake8-vim'
Bundle 'minibufexpl.vim'
Bundle 'Command-T'
Bundle 'snipMate'

" airline
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
set laststatus=2

"nerdtree
map <C-t> <ESC>:NERDTreeToggle<CR>

