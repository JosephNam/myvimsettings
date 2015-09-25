set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
set laststatus=2
let g:airline#extensions#whitespace#enabled = 0
Plugin 'gilgigilgil/anderson.vim'
Plugin 'xolox/vim-notes'
Plugin 'digitaltoad/vim-jade'
Plugin 'xolox/vim-misc'
Plugin 'leafgarland/typescript-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'Shougo/neocomplcache.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

syntax enable

set number

set ts=4

set autoindent

set shiftwidth=4

set cursorline

set showmatch

set backspace=2
colorscheme arkham2

vmap <Tab> >gv
vmap <S-Tab> <gv
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

ab td TODO
ab jn josephnam
ab sop System.out.println
ab psvm public static void main

