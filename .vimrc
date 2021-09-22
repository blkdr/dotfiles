set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Syntax highlight
Plugin 'sheerun/vim-polyglot'
Plugin 'styled-components/vim-styled-components'

" NeerdTree
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'

" Goodies
" Add ')' automatically with '(', works with '[' and '{'
Plugin 'Townk/vim-autoclose'
" Show whitespace as a red block
Plugin 'ntpeters/vim-better-whitespace'
" Select a word and type <C-n> to multiple cursors
Plugin 'terryma/vim-multiple-cursors'
" Visual select a Word and press '[' to wrap it between '[]'
Plugin 'tpope/vim-surround'
" Press <leader>ww then move your cursor to another buffer and press <leader>ww to swap them
Plugin 'wesQ3/vim-windowswap'
" Press <F4> to view unsaved changes in the file
Plugin 'vim-scripts/diffchanges.vim'
" Press <F10> to close all buffers except the current one
Plugin 'schickling/vim-bufonly'
" Select a block and type <g-l>: or <g-L>: to align according with ':'
Plugin 'tommcdo/vim-lion'
" To drag a visual selected block up/down/left/right
Plugin 'gavinbeatty/dragvisuals.vim'
" Distraction-free writting in vim with <F5>
Plugin 'junegunn/goyo.vim'
" Hyperfocus-writting in vim with <F6>
Plugin 'junegunn/limelight.vim'
" To fold code blocks with <C-z>
Plugin 'pseewald/vim-anyfold'
" Automatically highlight current word under the cursor
Plugin 'RRethy/vim-illuminate'
" Show colors from hex codes (#FFFFFF)
Plugin 'ap/vim-css-color'


"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Plugin 'itchyny/lightline.vim'

" Colorschemes
Plugin 'chriskempson/base16-vim'
"Plugin 'franbach/miramare'
"Plugin 'haishanh/night-owl.vim'
"Plugin 'Remich/vim-material-monokai'
"Plugin 'kjakapat/eva-theme', {'rtp': 'vim/'}
"Plugin 'clark-t/jojokai'
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'BlakeWilliams/numetal.vim'
Plugin 'wltr/vim-material-monokai'

"ale
Plugin 'dense-analysis/ale'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()

filetype plugin indent on
set tabstop=2
set expandtab
set shiftwidth=2
set number
set ignorecase
set showmatch
set encoding=UTF-8

" Its a nice practice to have the <leader> key set to comma (instead of \ as default on linux)
let mapleader = ","
let g:mapleader = ","

map <F3> :set hlsearch! hlsearch?<CR>
map <F7> mzgg=G`z`
map <F4> :DiffChangesPatchToggle<CR>
map <F10> :BufOnly<CR>

" NERDTree config
map <C-f> :NERDTreeToggle<CR>
noremap <C-w>m :NERDTreeClose<CR> <bar> <C-w>_ <bar> <C-w>\|
noremap <C-w>n <C-w>=
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:NERDTreeWinSize = 60
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1

vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

filetype on
filetype indent on
filetype plugin on

" Goyo
let g:goyo_width=240
map <F5> :Goyo<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Limelight
map <F6> :Limelight!!<CR>

" Colorscheme
set t_Co=256
syntax on
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"let vim_colorscheme='base16'
"let vim_colorscheme='jojo'
"let vim_colorscheme='miramare'
"let vim_colorscheme='owl'
"let vim_colorscheme='blkdr'
"let vim_colorscheme='srcery'
"let vim_colorscheme='tokyo'
"let vim_colorscheme='numetal'
let vim_colorscheme='material'

if vim_colorscheme == 'base16'
  set background=dark
  colorscheme base16-gruvbox-dark-soft
  "colorscheme base16-outrun-dark
  "colorscheme base16-heetch
  "colorscheme base16-solarized-dark

  "colorscheme base16-darktooth
  "colorscheme base16-atlas
  "colorscheme base16-tomorrow-night
  "colorscheme base16-spacemacs
  "colorscheme base16-horizon-dark
  "colorscheme base16-solarflare
  "colorscheme base16-monokai
endif
if vim_colorscheme == 'tokyo'
  set background=dark
  let g:tokyonight_style = 'night' " available: night, storm
  let g:tokyonight_enable_italic = 1
  let g:tokyonight_disable_italic_comment = 0
  colorscheme tokyonight
  let g:airline_theme='tokyonight'
endif
if vim_colorscheme == 'numetal'
  set background=dark
  colorscheme numetal
  let g:airline_theme='numetal'
endif
if vim_colorscheme == 'jojo'
  set background=dark
  colorscheme jojokai
  let g:lightline = { 'colorscheme': 'jojokai' }
endif
if vim_colorscheme == 'srcery'
  set background=dark
  colorscheme srcery
endif
if vim_colorscheme == 'owl'
  set background=dark
  let g:lightline = { 'colorscheme': 'nightowl' }
  colorscheme night-owl
endif
if vim_colorscheme == 'blkdr'
  set background=dark
  let g:airline_theme='materialmonokai'
  let g:materialmonokai_italic = 1
  colorscheme material-monokai
endif
if vim_colorscheme == 'material'
  set background=dark
  let g:airline_theme='materialmonokai'
  " let g:materialmonokai_italic = 1
  colorscheme material-monokai
endif
if vim_colorscheme == 'miramare'
  set background=dark
  let g:airline_theme = 'miramare'
  let g:miramare_enable_italic = 1
  colorscheme miramare
endif

if vim_colorscheme == 'desert'
  set background=light
  colorscheme desert
endif
if vim_colorscheme == 'darkblue'
  set background=light
  colorscheme darkblue
endif

let g:jsdoc_enable_es6 = 1
let g:jsx_ext_required = 0

imap cll console.log();<Esc>hi
nmap cll yiwocll<Esc>p
vmap '' c''<Esc>P
vmap "" c""<Esc>P
vmap (( c()<Esc>P
vmap [[ c[]<Esc>P
vmap {{ c{}<Esc>P

" d is for delete, leader-d is for cut
" https://github.com/pazams/d-is-for-delete
nnoremap x "_x
nnoremap X "_X
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
  nnoremap <leader>d "+d
  nnoremap <leader>D "+D
  vnoremap <leader>d "+d
else
  set clipboard=unnamed
  nnoremap <leader>d "*d
  nnoremap <leader>D "*D
  vnoremap <leader>d "*d
endif

" Move through document 'faster' with <C> hjkl
nmap <c-j> 4j
nmap <c-k> 4k
nmap <c-h> 4h
nmap <c-l> 4l
vmap <c-j> 4j
vmap <c-k> 4k
vmap <c-h> 4h
vmap <c-l> 4l

" Quickly open/reload vim
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" indent lines and reselect visual group
vnoremap < <gv
vnoremap > >gv

" Tab to indent in visual mode.
vnoremap <Tab> >gv
" Shift+Tab to unindent in visual mode.
vnoremap <S-Tab> <gv

" Prettier
nnoremap gp :silent %!prettier --stdin --stdin-filepath % --trailing-comma all --single-quote --parser html<CR>
com! FormatJSON %!python -m json.tool

map ; :set cursorline<CR>:set cursorcolumn<CR>:set nocursorline<CR>:set nocursorcolumn<CR>

" Highlight word under cursor
hi link illuminatedWord Visual
let g:Illuminate_highlightUnderCursor = 0

" Ctrl - p activate Normal mode instead of autocomplete
imap <C-p> <Esc>
" kj and jk activate Normal mode
imap kj <Esc>
imap jk <Esc>
imap KJ <Esc>
imap JK <Esc>

"set list
"set listchars=tab:»-,eol:↲,extends:»,precedes:«,space:.


" Fold
autocmd Filetype * AnyFoldActivate
set foldlevel=99
set shell=~/.vim-shell-wrapper.sh

" Ale
let g:ale_completion_enabled = 1
nmap <silent> <C-e> <Plug>(ale_next_wrap)

function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_warnings = l:counts.total - l:all_errors

  let l:errors_recap = l:all_errors == 0 ? '' : printf('%d⨉ ', all_errors)
  let l:warnings_recap = l:all_warnings == 0 ? '' : printf('%d⚠ ', all_warnings)
  return (errors_recap . warnings_recap)
endfunction

set statusline+=%=
set statusline+=\ %{LinterStatus()}

let g:ale_fixers = {
      \ 'javascript': ['eslint']
      \ }
let g:ale_linters = {
      \  'javascript': ['eslint']
      \}

let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_echo_msg_error_str = 'ERROR'
let g:ale_echo_msg_warning_str = 'WARNING'
let g:ale_echo_msg_format = '«%severity%» %s [%linter%]'
"set binary
"set noeol
"set nofixendofline
set nofixendofline

" Paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
