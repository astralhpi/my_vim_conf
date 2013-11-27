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

" Use tab for auto completion
function! SuperTab()
    if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
        return "\<Tab>"
    else
        return "\<C-n>"
    endif
endfunction
imap <Tab> <C-R>=SuperTab()<CR>

" ignore compiled files
set wildignore=*.o,*~,*.pyc
set ruler

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Turn backup off, since most stuff is in SVN, git etc
set nobackup
set nowb
set noswapfile
