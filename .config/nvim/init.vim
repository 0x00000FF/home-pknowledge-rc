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

" vim-plugin setting
set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

"---- Plugin List Begin ----

Plug 'VundleVim/Vundle.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tomasiser/vim-code-dark'
Plun 'ap/vim-buftabline'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"----  Plugin List End  ----

call plug#end()

" vim-plugin end

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

