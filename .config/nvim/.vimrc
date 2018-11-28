
" VimPlug START
call plug#begin('~/.vim/plugged')



"Plug 'Valloric/YouCompleteMe'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'

" jedi for python
Plug 'ncm2/ncm2-jedi'

" pyclang for c/c++
Plug 'ncm2/ncm2-pyclang'


Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'tjammer/blayu.vim'
"Plug 'kaicataldo/material.vim'
Plug 'tpope/vim-repeat'
Plug 'svermeulen/vim-easyclip'
Plug 'sheerun/vim-polyglot'
Plug 'wellle/tmux-complete.vim'



" VimPlug END
call plug#end()


"#######################################################

" Use an older version of RegeX, faster
set re=1

" Make Vim buffer the rendered lines
set ttyfast
set lazyredraw

set synmaxcol=128
syntax sync minlines=25

"##################################################

" NERDTree
"    Autostart NERDTree
autocmd vimenter * NERDTree

"    Open NERDTree binding
map <C-n> :NERDTreeToggle<CR>
"    Open _my-sources folder
map <F10> :NERDTree /home/zsucrilhos/_my-sources/



" ncm2 configs
"   enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"



"##################################################
" Syntastic configs
"   Recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"   Use pylint as the liter for python
let g:syntastic_python_checkers = ['pylint']
"##################################################

" Easyclip configs 
"    Use gm for 'add mark' instead of m, include the following in your .vimrc
"    to not conflict with m for cut text from vim easyclip
nnoremap gm m

"    Enable Substitution Operator with s key binding
"let g:EasyClipUseSubstituteDefaults

"    Enable cursor jumps to the end of the line at each paste
"let g:EasyClipAlwaysMoveCursorToEndOfPaste


"##################################################
" Lightline configs
set laststatus=2

"    Lightline colorscheme
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

"#################################################

" My colorscheme
colorscheme material-monokai



" Change default cursor's thickness
set guicursor=i-ci:ver5-Cursor/lCursor

" Enable line numbers
set relativenumber

" Set shell
set shell=zsh

" Set encoding
set encoding=utf-8
set fileencoding=utf-8


" Syntax and colors
syntax on

if has('termguicolors')
    set termguicolors
endif

filetype on
filetype indent on
filetype plugin on
set number
set title
set wrap
set showmode
set ruler
set background=dark
set t_Co=256
set hidden
set cursorline!

" Tabs and spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Stuff
set textwidth=120
set ffs=unix,dos,mac
set backspace=indent,eol,start

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
set history=500
set undolevels=700
set wrapscan

" Bind <F3> to clear search history "
map <F3> *:let @/=""



