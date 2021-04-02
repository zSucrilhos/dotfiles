if exists('g:vscode')
    source ~/.config/nvim/vscode.vim
endif

" VimPlug START
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

" Autoinstall vim-plug if it isn't installed already
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Set the <leader> to ,
let mapleader = ","

" Disable polyglot for markdown
let g:polyglot_disabled=['markdown, jsx, tsx, ts, js']

" Start vim-plug
call plug#begin('~/.vim/plugged')


" Benchmark startuptime
Plug 'dstein64/vim-startuptime'

" vimspector - A multi-language debugging system for Vim
Plug 'puremourning/vimspector'

"###########################################################################

"Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Coc plugins that we add here will be automatically installed and updated by Coc
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-vimlsp',
    \ 'coc-yank',
    \ 'coc-snippets',
    \ 'coc-prettier',
    \ 'coc-eslint',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-sh',
    \ 'coc-markdownlint',
    \ 'coc-lists',
    \ 'coc-git',
    \ 'coc-highlight',
    \ ]

" Bad response?
" \ 'coc-denite'

" Coc lightline status indicator
Plug 'josa42/vim-lightline-coc'

" Git hunks and git branch indicators for Lightline 
Plug 'sinetoami/lightline-hunks'

" Vim plugin that shows keybindings in popup
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" Explorer for coc.nvim
"Plug 'weirongxu/coc-explorer', {'do': 'yarn install --frozen-lockfile'}

"###########################################################################

" Dark powered asynchronous unite all interfaces for Neovim/Vim8
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

" Syntax highlighting for JavaScript
"Plug 'pangloss/vim-javascript'

" Typescript syntax files for Vim 
"Plug 'leafgarland/typescript-vim'

" JSX syntax highlighting
"Plug 'MaxMEllon/vim-jsx-pretty'

" TSX syntax highlighting
"Plug 'peitalin/vim-jsx-typescript'

" Styled components syntax highlighting
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Yet Another TypeScript Syntax =  The most advanced TypeScript Syntax Highlighting in Vim
Plug 'HerringtonDarkholme/yats.vim'

" Nvim Treesitter configurations and abstraction layer
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

" Lightning fast left-right movement
Plug 'unblevable/quick-scope'

" Hlsearch Lens in Neovim
Plug 'kevinhwang91/nvim-hlslens'

" Better quickfix window in Neovim, polish old quickfix window
Plug 'kevinhwang91/nvim-bqf'

" Emmet for vim
Plug 'mattn/emmet-vim'

" vim-snipmate default snippets
Plug 'honza/vim-snippets'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Lua `fork` of vim-web-devicons for neovim
Plug 'kyazdani42/nvim-web-devicons'

" A file explorer tree for neovim written in lua
Plug 'kyazdani42/nvim-tree.lua'

" Adds file type icons to Vim plugins such as: NERDTree, vim-airline,
" CtrlP, unite, Denite, lightline, vim-startify and many more
Plug 'ryanoasis/vim-devicons'

"nvim Telescope - Find, Filter, Preview, Pick. All lua, all the time. 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" File manager for Neovim. Better than NERDTree
"Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" A tree explorer plugin for vim.
"Plug 'preservim/nerdtree' |

" A plugin of NERDTree showing git status
" Extra syntax and highlight for nerdtree files
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Proof of concept for project plugin
"Plug 'scrooloose/nerdtree-project-plugin'

" Defines commands that will work on files inside a Visual selection 
"Plug 'PhilRunninger/nerdtree-visual-selection'

" Syntax highlighting
Plug 'vim-syntastic/syntastic'

" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

" Preview colours in (css) source code while editing
"Plug 'ap/vim-css-color'

" Identation guides for better visualization
Plug 'Yggdroot/indentLine'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" Easier comments
Plug 'scrooloose/nerdcommenter'

" Don't repeat yourself!
Plug 'tpope/vim-repeat'

" Completions from other terminals inside tmux
Plug 'wellle/tmux-complete.vim'

" Unix FS operations inside vim!
Plug 'tpope/vim-eunuch'

" Fzf search
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" My themes
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'

" Vim-notes
Plug 'xolox/vim-notes'

" Undo history
Plug 'mbbill/undotree'

" Easy motion
Plug 'easymotion/vim-easymotion'

" The missing motion for Vim athletic_shoe 
"Plug 'justinmk/vim-sneak'

" A neovim tabline plugin
Plug 'romgrk/barbar.nvim'

" Bookmarks per line
Plug 'MattesGroeger/vim-bookmarks'

" Much simpler Rainbow Parentheses
Plug 'junegunn/rainbow_parentheses.vim'

" Window manager
Plug 'paroxayte/vwm.vim'

" Enable multiple selection with <C-n>
Plug 'terryma/vim-multiple-cursors'

" Auto close tags and etc
Plug 'jiangmiao/auto-pairs'

" Match tags
Plug 'gregsexton/MatchTag'

" Auto close (x)HTML tags
Plug 'alvan/vim-closetag'

" Fold code identation
Plug 'pseewald/vim-anyfold'

" Fast folding
Plug 'Konfekt/FastFold'

" Pretty start screen
Plug 'mhinz/vim-startify'

" Tags mangement
Plug 'tpope/vim-surround'

" Vim plugin that maintains a yank history to cycle between when pasting
Plug 'svermeulen/vim-yoink'

" Miscellaneous auto-load Vim scripts
Plug 'xolox/vim-misc'

" Simplified clipboard functionality for Vim
Plug 'svermeulen/vim-easyclip' " addconfigs

" A Vim plugin which shows git diff markers in the sign column ...
Plug 'airblade/vim-gitgutter' " ddconfigs

"  Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim' " ADD CONFIGS

" Check this
"Plug 'christoomey/vim-tmux-navigator'

" Initialize plugin system
call plug#end()


"#######################################################
" nvim-treesitter configs
"#######################################################

lua <<EOF
require'nvim-treesitter.configs'.setup {
  indent = { enable = true },
  ensure_installed = "maintained",
  highlight = {
      enable = true,
      use_languagetree = false,
  },
  incremental_selection = { enable = true },
  textobjects = { enable = true }}
EOF

" Treesitter-based folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()


"#######################################################
" COC - Conquer of Completion configuration
"#######################################################

" Set coc.nvim path
set runtimepath^=/home/zsucrilhos/.vim/plugged/coc.nvim

" Shortcut to open the config file with 'C'
function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

" Open yank list with <space-y>
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

" Use <tab> to trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Use <tab> and <s-tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Make <cr> select the first item on the list and trigger completion when no item has been selected
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Correct comment highlight
autocmd FileType json syntax match Comment +\/\/.\+$+

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Open coc-explorer
nmap <space>e :CocCommand explorer<CR>

" When cursoring over a word, show either the diagnostic if it exists, otherwise the documentation
function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(300, 'ShowDocIfNoDiagnostic')
endfunction

" Show doc when hovering
autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()

" Remap goto-definition, goto-type-definition, goto-references
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" Jump to the next and previous error
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>d  :<C-u>CocList diagnostics<cr>

" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>

" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>

" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>

" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>

" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>

" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>

" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Remap perform code actions
nmap <leader>do <Plug>(coc-codeaction)

" Remap rename symbol
nmap <leader>rn <Plug>(coc-rename)

" Open diagnostics window
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

" Fuzzy-searchable list of symbols
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

" Disable coc in markdown files
autocmd FileType markdown <silent> :CocDisable<CR>

" ############# Snippets configuration ############# 
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" Make <tab> used for trigger completion, completion confirm, snippet
" expand and jump like VSCode
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Jump to next snippet with <tab>
let g:coc_snippet_next = '<tab>'

" Highlight current symbol on cursor hold
autocmd CursorHold * silent call CocActionAsync('highlight')

" I like to do it conditionally based on whether or not those tools are installed
" in the local node_modules folder:

"if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  "let g:coc_global_extensions += ['coc-prettier']
"endif

"if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  "let g:coc_global_extensions += ['coc-eslint']
"endif

" Refer to https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim


"#######################################################
" Hlsearch Lens configuration
"#######################################################

noremap <silent> n <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap <silent> N <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap * *<Cmd>lua require('hlslens').start()<CR>
noremap # #<Cmd>lua require('hlslens').start()<CR>
noremap g* g*<Cmd>lua require('hlslens').start()<CR>
noremap g# g#<Cmd>lua require('hlslens').start()<CR>

" Use : instead of <Cmd>
nnoremap <silent> <leader>l :nohlsearch<CR>

" Bind <F3> to clear search history "
map <F3> *:let @/=""

" Bind <F4> to clear search history "
map <F4> :nohlsearch<CR>


"#######################################################
" Undotree configuration
"#######################################################

" Toggle
nnoremap <leader>u :UndotreeToggle<CR>

" Store the undo files in a seperate place like
if has("persistent_undo")
    set undodir=$HOME/.undodir
    set undofile
endif


"#######################################################
" VimCloseTag configuration
"#######################################################

 let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx"


"#######################################################
" Denite configuration
"#######################################################

nnoremap <silent> <leader>r :Dgrep<CR>
nnoremap <silent> <leader>f :Denite file/rec<CR>

" Ag command on grep source
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Silver searcher
"command! -nargs=? Dgrep call s:Dgrep(<f-args>)
"function s:Dgrep(...)
  "if a:0 > 0
    "execute(':Denite -buffer-name=grep-buffer-denite grep -path='.a:1)
  "else
    "let l:path = expand('%:p:h')
    "if has_key(defx#get_candidate(), 'action__path')
      "let l:path = fnamemodify(defx#get_candidate()['action__path'], ':p:h')
    "endif
    "execute(':Denite -buffer-name=grep-buffer-denite -no-empty '.join(s:denite_option_array, ' ').' grep -path='.l:path)
  "endif
"endfunction

" Wrap in try/catch to avoid errors on initial install before plugin is available
try
" === Denite setup ==="
" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)
"
"call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])

"" Use ripgrep in place of "grep"
"call denite#custom#var('grep', 'command', ['rg'])

"" Custom options for ripgrep
""   --vimgrep:  Show results with every match on it's own line
""   --hidden:   Search hidden directories and files
""   --heading:  Show the file name above clusters of matches from each file
""   --S:        Search case insensitively if the pattern is all lowercase
"call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

"" Recommended defaults for ripgrep via Denite docs
"call denite#custom#var('grep', 'recursive_opts', [])
"call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
"call denite#custom#var('grep', 'separator', ['--'])
"call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')

" Custom options for Denite
"   auto_resize             - Auto resize the Denite window height automatically.
"   prompt                  - Customize denite prompt
"   direction               - Specify Denite window direction as directly below current pane
"   winminheight            - Specify min height for Denite window
"   highlight_mode_insert   - Specify h1-CursorLine in insert mode
"   prompt_highlight        - Specify color of prompt
"   highlight_matched_char  - Matched characters highlight
"   highlight_matched_range - matched range highlight
let s:denite_options = {'default' : {
\ 'split': 'floating',
\ 'start_filter': 1,
\ 'auto_resize': 1,
\ 'source_names': 'short',
\ 'prompt': 'λ ',
\ 'highlight_matched_char': 'QuickFixLine',
\ 'highlight_matched_range': 'Visual',
\ 'highlight_window_background': 'Visual',
\ 'highlight_filter_background': 'DiffAdd',
\ 'winrow': 1,
\ 'vertical_preview': 1
\ }}

" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction

call s:profile(s:denite_options)
catch
  echo 'Denite not installed. It should work after running :PlugInstall'
endtry


"#######################################################
" Telescope configuration
"#######################################################
"
" Find files using Telescope command-line sugar.
nnoremap '<C-p>'      <cmd>Telescope find_files<cr>
nnoremap <leader>Fg <cmd>Telescope live_grep<cr>
nnoremap <leader>Fb <cmd>Telescope buffers<cr>
nnoremap <leader>Fh <cmd>Telescope help_tags<cr>


"#######################################################
" CtrlP configuration
"#######################################################
"
" Change the default mapping and the default command to invoke CtrlP
"let g:ctrlp_map = '<C-p>'
"let g:ctrlp_cmd = 'CtrlP'

" Ignore files in .gitignore
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" When invoked without an explicit starting directory, CtrlP will set its local
" working directory according to this variable
"let g:ctrlp_working_path_mode = 'ra'

" If none of the default markers (.git .hg .svn .bzr _darcs) are present in a project,
" you can define additional ones with g:ctrlp_root_markers:
"let g:ctrlp_root_markers = ['package.json', 'yarn.lock', 'tsconfig.json', '.gitignore', 'node_modules']


"#######################################################
" Fzf Vim
"#######################################################

" Fzf command-pallete mapping
nnoremap <F12> :Commands<CR>

" Use 'F9' to open Fzf file 'browser'
map <F9> :Files<CR>


"#######################################################
" sneak.vim configuration
"#######################################################

" Label-mode for a minimalist alternative to EasyMotion
"let g:sneak#label = 1

" Remap <Plug>Sneak_s
"nmap <leader><leader>s <Plug>Sneak_s

" Remap <Plug>Sneak_S
"nmap <leader><leader>S <Plug>Sneak_S


"#######################################################
" Barbar.nvim configuration
"#######################################################

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable icons
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = v:true

" If set, the icon color will follow its corresponding buffer
" highlight group. By default, the Buffer*Icon group is linked to the
" Buffer* group (see Highlighting below). Otherwise, it will take its
" default value as defined by devicons.
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the maximum padding width with which to surround each tab
let bufferline.maximum_padding = 4

" " ################ REMAPS ################
" Magic buffer-picking mode
nnoremap <silent> <C-t>s :BufferPick<CR>

" Sort automatically by...
nnoremap <silent> <C-t>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <C-t>bl :BufferOrderByLanguage<CR>

" Move to previous/next
nnoremap <silent> <C-t>, :BufferPrevious<CR>
nnoremap <silent> <C-t>. :BufferNext<CR>

" Re-order to previous/next
nnoremap <silent> <C-t>< :BufferMovePrevious<CR>
nnoremap <silent> <C-t>> :BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent> <C-t>1 :BufferGoto 1<CR>
nnoremap <silent> <C-t>2 :BufferGoto 2<CR>
nnoremap <silent> <C-t>3 :BufferGoto 3<CR>
nnoremap <silent> <C-t>4 :BufferGoto 4<CR>
nnoremap <silent> <C-t>5 :BufferGoto 5<CR>
nnoremap <silent> <C-t>6 :BufferGoto 6<CR>
nnoremap <silent> <C-t>7 :BufferGoto 7<CR>
nnoremap <silent> <C-t>8 :BufferGoto 8<CR>
nnoremap <silent> <C-t>9 :BufferLast<CR>

" Close buffer
nnoremap <silent> <C-t>q :BufferClose<CR>

" See line noº 847 for further buffer manipulation
" (including closing/deleting from the list)

" Wipeout buffer
nnoremap <silent> <C-t>wp :BufferWipeout<CR>

" Close commands
nnoremap <silent> <C-t>cac :BufferCloseAllButCurrent<CR>
nnoremap <silent> <C-t>car :BufferCloseBuffersRight<CR>
nnoremap <silent> <C-t>cal :BufferCloseBuffersLeft<CR>

" Other
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used

" Split vertically
nnoremap <C-t>v :vsplit<CR> 


"#######################################################
" coc-prettier configuration
"#######################################################

" Remap command `CocCommand prettier.formatFile` to `CocPrettier`
command! -nargs=0 CocPrettier :CocCommand prettier.formatFile

" Remap `CocPrettier` to <leader>cpf
nnoremap <leader>pp :CocPrettier <CR>

"#######################################################
" Vim-Bookmarks configurations
"#######################################################

" Change the colors of the icons
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE

let g:bookmark_sign = ''
let g:bookmark_highlight_lines = 1


"#######################################################
" Vim-Notes configurations
"#######################################################

let g:notes_directories = ['~/Documents/Notes']


"#######################################################
" CHADTree settings
"#######################################################

" Open CHADTree binding
"nnoremap <C-k> :CHADopen<CR>

" Add a hotkey to clear quickfix list
"nnoremap <leader>l <cmd>call setqflist([])<cr>


"#######################################################
" NERDTree settings
"#######################################################
"
""A utostart NERDTree
"autocmd vimenter * NERDTree

"" Autostart in edit area
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

"" Determines what char to use as identation guide
"let g:indentLine_char = '|'

"" Open NERDTree binding
"map <C-k> :NERDTreeToggle<CR>

"" Open _my-sources folder
"map <F10> :NERDTree /home/zsucrilhos/_my-sources/ <CR>

"" Start NERDTree when Vim is started without file arguments.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"" Start NERDTree. If a file is specified, move the cursor to its window.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

"" Start NERDTree when Vim starts with a directory argument.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    "\ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

"" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    "\ quit | endif

"" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * silent NERDTreeMirror

"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'


"#######################################################
" nvim-tree.lua settings
"#######################################################

let g:nvim_tree_side = "left" | "right" "left by default
let g:nvim_tree_width = 40 "30 by default
let g:nvim_tree_ignore = [ ".git", "node_modules", ".cache" ] "empty by default
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it"s the last window
let g:nvim_tree_auto_ignore_ft = [ "startify", "dashboard" ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 0 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_root_folder_modifier = ":~" "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_show_icons = {
    \ "git": 1,
    \ "folders": 1,
    \ "files": 1,
    \ }
"If 0, do not show the icons for one of "git" "folder" and "files"
"1 by default, notice that if "files" is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath
" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ "default": "",
    \ "symlink": "",
    \ "git": {
    \   "unstaged": "",
    \   "staged": "",
    \   "unmerged": "",
    \   "renamed": "➜",
    \   "untracked": ""
    \   },
    \ "folder": {
    \   "default": "",
    \   "open": "",
    \   "empty": "",
    \   "empty_open": "",
    \   "symlink": "",
    \   }
    \ }

nnoremap <C-k> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue


"#######################################################
" Easyclip configs
"#######################################################

" Use gm for 'add mark' instead of m, include the following in your .vimrc
" to not conflict with m for cut text from vim easyclip
nnoremap gm m

" Enable Substitution Operator with s key binding
"let g:EasyClipUseSubstituteDefaults

" Enable cursor jumps to the end of the line at each paste
let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1


"#######################################################
" indentLine configs
"#######################################################

" Register the descriptions using the on-demand load feature
autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

" Map to <leader><leader>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" By default timeoutlen is 1000 ms
"set timeoutlen=800


"#######################################################
" indentLine configs
"#######################################################

let g:indentLine_char = '|'

" Use the colorscheme color
"let g:indentLine_setColors = 0

" Use the same colors as tab indents
let g:indentLine_defaultGroup = 'SpecialKey'


"#######################################################
" Lightline settings
"#######################################################

set laststatus=2

"\   'readonly': '%{&readonly?"":""}',
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'lightline_hunks', 'filename', 'readonly' ] ],
      \   'right': [ [ 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok', 'coc_status' ], [ 'lineinfo', 'percent' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"\uf023":""}',
      \ },
      \ 'component_function': {
      \   'lightline_hunks': 'LightlineHunks',
      \   'gitbranch': 'FugitiveHead',
      \   'fileformat': 'LightlineFileFormat',
      \   'fileencoding': 'LightlineFileEncoding',
      \   'filetype': 'LightlineFileType',
      \ },
      \ 'separator':    { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
\ }

" Only display >module< if winwidth isn't too small
function! LightlineFileFormat()
  return winwidth(0) > 130 ? &fileformat : ''
endfunction

function! LightlineFileEncoding()
  return winwidth(0) > 130 ? &fileencoding : ''
endfunction

function! LightlineFileType()
  return winwidth(0) > 130 ? &filetype : ''
endfunction

function! LightlineHunks()
  return winwidth(0) > 130 ? lightline#hunks#composer() : ''
endfunction

let g:lightline#coc#indicator_warnings = "\uf071 "
let g:lightline#coc#indicator_errors = "\uf00d "
let g:lightline#coc#indicator_info = "\uf12a "
" f129 info
let g:lightline#coc#indicator_hints = "\uf0eb "
let g:lightline#coc#indicator_ok = "\uf00c "

" register compoments:
call lightline#coc#register()

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" CtrlP
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
" noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
" noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')


"#######################################################
" lightline-hunks configuration
"#######################################################

" Shows only branch name and symbol
let g:lightline#hunks#only_branch = 1

" Prevent certain filetypes from showing Git information. Default is []
let g:lightline#hunks#exclude_filetypes = [ 'startify', 'nerdtree', 'vista_kind', 'tagbar' ]

" Symbol visible to the left of the branch. Default is  (Changing to )
let g:lightline#hunks#branch_symbol = ' '

" Change hunks from + ~ - (added, modified and deleted respectivelly)
let g:lightline#hunks#hunk_symbols = [ 'A:', 'M:', 'R:' ]


"#######################################################
" General neovim configs
"#######################################################

"###################################### Remapings

" Interesting
inoremap jk <ESC>

" Tabs mappings
" NORMAL mode
nnoremap <C-t><Left>  :tabp<CR>
nnoremap <C-t><Right> :tabn<CR>
nnoremap <C-t>n       :tabnew<CR>
nnoremap <C-t>w       :tabc<CR>

" INSERT mode
inoremap <C-t><Left>  <Esc>:tabp<CR>
inoremap <C-t><Right> <Esc>:tabn<CR>
inoremap <C-t>n       <Esc>:tabnew<CR>
inoremap <C-t>q       <Esc>:tabc<CR>

" Buffer mappings
" Mappings for NORMAL mode

" Create a new buffer
nnoremap <C-b>N :enew<CR>

" Go to previous buffer
nnoremap <C-b>p :bprev<CR>

" Go to next buffer
nnoremap <C-b>n :bnext<CR>

" Unload buffer and delete it from the buffer list
nnoremap <C-b>w :bd<CR> 

" Useless for now
" Mappings for INSERT mode 
"inoremap <C-b>N <Esc>:enew <CR>
"inoremap <C-b>p <Esc>:bprev <CR>
"inoremap <C-b>n <Esc>:bnext <CR>
"inoremap <C-b>w <Esc>:bd <CR>

" Window mappings
" You can use <C-w> + hjkl to navigate between windows (or can you?)
" You can use <C-w>w to alternate between windows

" Split horizontally (same file)
nnoremap <C-w>H :split<CR> 

" Split vertically (same file)
nnoremap <C-w>V :vsplit<CR> 

" Split horizontally (new empty buffer)
nnoremap <C-w>Vn :new<CR> 

" Split vertically (new empty buffer)
nnoremap <C-w>Hn :vnew<CR> 

"###################################### Remapings END


" Always use system clipboard no matter what
set clipboard=unnamedplus

" Make Vim buffer the rendered lines
set ttyfast
set lazyredraw
"set redrawtime=10000

set synmaxcol=0
syntax sync fromstart
"syntax sync minlines=25

set tabpagemax=9
set showmode

" Treat all numerals as decimals
set nrformats=bin

" Set Python2 and 3 paths for neovim
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" Using bufferline only on lightline not on command bar
let g:bufferline_echo = 0
"
" Enable and toggle indent guides
let g:indent_guides_enable_on_vim_startup = 1

" Set the indent guides colors
highlight IndentGuidesOdd  ctermbg=black
highlight IndentGuidesEven ctermbg=darkgrey

" Set shell
set shell=zsh

" Set encoding
set encoding=utf-8
set fileencoding=utf-8

" Syntax and colors
syntax on " Syntax-highlight code
set termguicolors " Enables 24-bit colors in the TUI

" Highlight from start of file for TS and JS buffers
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Enable line numbers
set relativenumber " Relative line numbers
set number " Show current line number

" My colorscheme
colorscheme onedark

" Enable dark ayu theme
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme

filetype on
filetype indent on
filetype plugin on

set title " Set window's title to the last value of 'titlestring'
set wrap " Wrap lines
set noshowmode " By the way, the mode indicator is unnecessary now (lightline)
set ruler " Show the line and column number of the cursor's position
set background=dark " Self explanatory
set t_Co=256 " idk
set hidden " Hide abandoned buffers
set cursorline! " Highlight the cursor's line
set signcolumn=yes

" Tabs and spaces
set tabstop=2 " Number of spaces that a <Tab> in the file counts for
set softtabstop=2 " Number of spaces that a <Tab> counts while editing
set shiftwidth=2 " Returns the effective value of 'shiftwidth'
set shiftround " Round to indent multiple of 'shiftwidth'
set expandtab " INSERT mode, use the appropriate number of spaces to insert a <Tab>
set splitright " Always open a new split in the right (vsplit :vnew)
set splitbelow " Always open a new split in the bottom (hsplit :new)

set listchars=tab:▸\ ,eol:¬ " idk too
set list " idk
set cmdheight=2 " Number of screen lines to use for the command line

" Disable backup and swap files
set nobackup " Disable backups
set nowritebackup " Not to write backups
set noswapfile " Disable swapfile

" Indent
set autoindent " Autoindent
set smartindent
set breakindent
set copyindent

" Search
set hlsearch " Highlight all matches of preview search pattern
set incsearch " Highlight the current search query
set ignorecase " Ignore case
set smartcase " Override the 'ignorecase' option
set history=500
set undolevels=700
set wrapscan " Searches wraps around the end of the file

" Miscellaneous
set autoread 
set textwidth=120 " Maximum text width, long lines will be \n'ed after whitespace
set ffs=unix,dos,mac " Detect file's EOL
set backspace=indent,eol,start " idk
set colorcolumn=80 " Highlight column no N (comma separated)
set columns=80 " Number of columns of the screen
set showcmd " Show (partial) command in the last line of the screen

" Scrolling
set scrolloff=4 " Start scrolling when we're 8 lines away from margins
set sidescroll=8 " Start horizontal scroll 15 lines away from margins
set sidescroll=1 " Only used when the 'wrap' option is off

"Bind <leader><leader> to reload neovim configuration
"nnoremap <silent> <leader><leader> :source $MYVIMRC<CR>

" THESE MUST BE AT THE VERY END OF THE FILE
"
" Put these lines at the very end of your vimrc file.
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall

" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
