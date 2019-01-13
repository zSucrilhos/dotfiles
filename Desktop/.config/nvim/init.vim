
" VimPlug START
call plug#begin('~/.vim/plugged') 

"Plug 'Valloric/YouCompleteMe'
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}


" Deoplete completion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Linting with ALE
Plug 'w0rp/ale'

" LSP Completion Engine for C++
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

" Enable multiple selection with <C-n>
Plug 'terryma/vim-multiple-cursors'

" Auto close tags and etc
Plug 'jiangmiao/auto-pairs'

" Tags mangement
Plug 'tpope/vim-surround'

" Identation guides for better visualization
Plug 'nathanaelkane/vim-indent-guides'

" File manager sidebar
Plug 'scrooloose/nerdtree'

" Syntax highlighting
Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'

" Informations bar
Plug 'itchyny/lightline.vim'

" Easier comments
Plug 'scrooloose/nerdcommenter'

" Don't repeat yourself!
Plug 'tpope/vim-repeat'

" Nice clipboard
Plug 'svermeulen/vim-easyclip'

" Completions from other terminals inside tmux
Plug 'wellle/tmux-complete.vim'

" See edits on git files
Plug 'airblade/vim-gitgutter'

" Unix FS operations inside vim!
Plug 'tpope/vim-eunuch'


" My themes
Plug 'yuttie/hydrangea-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'

" Wal colorscheme
Plug 'dylanaraps/wal.vim'


" VimPlug END
call plug#end()

"#######################################################

" Use an older version of RegeX, faster
set re=1

" Always use system clipboard no matter what
set clipboard=unnamedplus

" Make Vim buffer the rendered lines
set ttyfast
set lazyredraw

set synmaxcol=128
syntax sync minlines=25

"#######################################################

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Deoplete for C++
"
" Change clang binary path
call deoplete#custom#var('clangx', 'clang_binary', '/usr/local/bin/clang')

" Change clang options
call deoplete#custom#var('clangx', 'default_c_options', '')
call deoplete#custom#var('clangx', 'default_cpp_options', '')

"##############################

" ALE Configs

" Do not lint continuosly as the file is changed, only when saved
let g:ale_lint_on_text_changed = 'never'

" Set the linting time in miliseconds
let g:ale_lint_delay = 300

"##############################
"
"##############################
"LSP C++ server
if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif


" NERDTree
"    Autostart NERDTree
autocmd vimenter * NERDTree

"    Autostart in edit area
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p


"#######################################################
"    Open NERDTree binding
map <C-k> :NERDTreeToggle<CR>
"    Open _my-sources folder
map <F10> :NERDTree /home/zsucrilhos/_my-sources/

"#######################################################

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

"#######################################################

"#######################################################

" Easyclip configs 
"    Use gm for 'add mark' instead of m, include the following in your .vimrc
"    to not conflict with m for cut text from vim easyclip
nnoremap gm m

"    Enable Substitution Operator with s key binding
"let g:EasyClipUseSubstituteDefaults

"    Enable cursor jumps to the end of the line at each paste
"let g:EasyClipAlwaysMoveCursorToEndOfPaste


"#######################################################

" Lightline configs
set laststatus=2

"    Lightline colorscheme
"let g:lightline = {
"      \ 'colorscheme': 'seoul256',
"      \ }

let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator':    { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ }

"#######################################################

"#######################################################

" Set 256 colors
"set t_ut=
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm

" Enable line numbers
set relativenumber

"#######################################################
" Enable and toggle indent guides
let g:indent_guides_enable_on_vim_startup = 1

" Set the indent guides colors
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
"#######################################################

" Set shell
set shell=zsh

" Set encoding
set encoding=utf-8
set fileencoding=utf-8

" Syntax and colors
syntax on

set termguicolors

"let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"


" My colorscheme
" colorscheme hydrangea
colorscheme palenight
" colorscheme wal

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



