set nu
syntax on
set showmatch
set ruler
set hls

"autoindent settings
set autoindent 
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
filetype indent on

"Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"---- Plugin List Begin ----

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tomasiser/vim-code-dark'
Plugin 'ap/vim-buftabline'

"----  Plugin List End  ----

call vundle#end()

filetype plugin indent on

autocmd VimEnter * NERDTree %:p:h
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * wincmd p

nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

colorscheme codedark
let g:airline_theme = 'codedark'
