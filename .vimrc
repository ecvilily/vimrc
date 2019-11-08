noremap s ^
noremap e $
noremap g '
noremap gg gg
noremap M :marks<CR>
noremap r "
noremap R :reg<CR>
noremap <c-j> <c-d>
noremap <c-k> <c-u>
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l
nnoremap / /\v
vnoremap / /\v
inoremap jk <esc>

set ai!
set showmatch
set cindent
set backspace=indent,eol,start
set guifont=新宋体:h24:cGB2312
syntax on
syntax enable
set t_Co=256
set background=dark
colorscheme molokai
set laststatus=2
set ruler
set number
set hlsearch
set gcr=a:block-blinkon0
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T
filetype indent on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set foldmethod=syntax
syntax keyword cppSTLtype initializer_list
set nofoldenable
set laststatus=2
set backspace=2
"set incsearch
"set ignorecase
set wildmenu
set wrap

set nocompatible    
filetype off       
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
""Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'suan/vim-instant-markdown'
call vundle#end()         
filetype plugin indent on 
