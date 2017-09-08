set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on
syntax enable

set encoding=utf-8

set tabstop=2
set shiftwidth=2
set smartindent
set cindent
set expandtab
set backspace=2

set hlsearch
set wildmode=longest,list,full
set wildmenu

inoremap jk <ESC>
nnoremap <C-o> :NERDTreeToggle<CR>

let mapleader = "\<Space>"

let g:vim_code_browser_url_handler_command = "xargs open"

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


set background=dark
colorscheme solarized


