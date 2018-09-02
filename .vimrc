" P.Knowledge(0x00000FF)'s .vimrc

set encoding=utf-8

syntax on
set number
set showmatch
set ruler
set hls

" Shortcut Setting
nnoremap <C-S> :w<CR>

" Performance Tuning
set nocursorcolumn
set nocursorline

set ttyfast
set norelativenumber
set synmaxcol=400
syn sync minlines=50 maxlines=50

" autoindent settings
set autoindent 
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
filetype indent on

"" autoindent setting for each file types
augroup IndentAdjustment
    au!
    autocmd FileType    Makefile    set expandtab!
augroup end

" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"---- Plugin List Begin ----

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tomasiser/vim-code-dark'
Plugin 'ap/vim-buftabline'
Plugin '0x00000FF/vim-linecount'

"----  Plugin List End  ----

call vundle#end()

filetype plugin indent on

" NERDTree Settings
augroup NERDTreeAutoCmd
    au!
    autocmd VimEnter * NERDTree %:p:h
    autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    autocmd VimEnter * wincmd p
augroup END

" Buftabline Settings
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <C-D> :bd<CR>

" Colorscheme
colorscheme codedark
let g:airline_theme = 'codedark'
