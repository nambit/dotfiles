set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'file:///home/ammar/.vim/bundle/taskwiki'

" Themes
" Plugin 'altercation/vim-colors-solarized'
Plugin 'dracula/vim'

" Test markdown syntax highlighting
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" Disable ycm diagnostic which disables Syntastic. 
let g:ycm_show_diagnostics_ui = 0


" Vimwiki markdown
let g:vimwiki_list = [{'path':'~/Nextcloud/vim-wiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" vim-instant-markdown - Instant Markdown previews from Vim
" https://github.com/suan/vim-instant-markdown
let g:instant_markdown_autostart = 0  " disable autostart
map <leader>md :InstantMarkdownPreview<CR>
" Currently using this tree for taskwiki:
" https://github.com/DancingQuanta/taskwiki/tree/extra-syntaxes
let g:taskwiki_syntax = 'markdown'


" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_cpp_config_file = '.syntastic_cpp_config'
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_error_symbol = "✗"

syntax enable
color dracula
" set background=dark
" colorscheme solarized

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

set cursorline
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif

" Transparent bg
hi Normal ctermbg=none
