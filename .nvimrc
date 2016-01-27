set nocompatible              " be iMproved, required
filetype off                  " required

let g:python_host_prog = '/usr/bin/python'
let g:ycm_paty_to_python_interpreter = '/usr/bin/python'
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
Plugin 'xolox/vim-notes'
Plugin 'digitaltoad/vim-jade'
Plugin 'lambdatoast/elm.vim'
Plugin 'gilgigilgil/anderson.vim'
Plugin 'xolox/vim-misc'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'raichoo/purescript-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'davidhalter/jedi-vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'derekwyatt/vim-scala'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Shutnik/jshint2.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

syntax enable

set number

set ts=2

set autoindent

set shiftwidth=2

set cursorline

set showmatch

set backspace=2

let base16colorspace=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme anderson

"make tab and shift tab behave like tabs in other ides""
vmap <Tab> >gv
vmap <S-Tab> <gv


"remaping esc to also function with jk""
imap jk <Esc>

"abbreviations""
ab sop System.out.println
ab psvm public static void main

let g:notes_directories = ['~/Documents/cs3600/FinalNotes']

au FileType coffee setl sw=2 sts=2 et

let g:indent_guides_start_level=2

nnoremap <C-O> :NERDTreeTabsToggle<ENTER>

nnoremap <D-Z><SHIFT-H> <C-W><C-H>
nnoremap <D-Z><SHIFT-J> <C-W><C-J>
nnoremap <D-Z><SHIFT-K> <C-W><C-K>
nnoremap <D-Z><SHIFT-L> <C-W><C-L>

let g:deoplete#enable_at_startup = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


