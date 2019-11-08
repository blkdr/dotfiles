set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Syntax highlight
Plugin 'sheerun/vim-polyglot'

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

"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

Plugin 'itchyny/lightline.vim'

" Colorschemes
Plugin 'Remich/vim-material-monokai'
Plugin 'ayu-theme/ayu-vim'
Plugin 'sainnhe/vim-color-desert-night'
Plugin 'AlessandroYorba/Breve'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'romainl/flattened' " based on solarized
Plugin 'kaicataldo/material.vim'
Plugin 'romainl/Apprentice'
Plugin 'rakr/vim-one'
Plugin 'flrnd/candid.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'ajmwagar/vim-deus'

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

"let vim_colorscheme='desert-night'
"let vim_colorscheme='ayu'
"let vim_colorscheme='material-monokai'
"let vim_colorscheme='breve'
"let vim_colorscheme='papercolor'
"let vim_colorscheme='material'
"let vim_colorscheme='apprentice'
"let vim_colorscheme='flat'
"let vim_colorscheme='one'
"let vim_colorscheme='dracula'
let vim_colorscheme='deus'

if vim_colorscheme == 'desert-night'
  set background=dark
  let g:lightline = {'colorscheme' : 'desert_night'}
  colorscheme desert-night
endif
if vim_colorscheme == 'ayu'
  set background=dark
  "let ayucolor="light"
  let ayucolor="mirage"
  "let ayucolor="dark"

  colorscheme ayu
endif
if vim_colorscheme == 'material-monokai'
  "let g:materialmonokai_subtle_spell=1
  let g:airline_theme='materialmonokai'

  set background=dark
  let g:lightline = {'colorscheme' : 'monokai'}
  colorscheme material-monokai
endif
if vim_colorscheme == 'breve'
  set background=light
  let g:lightline = {'colorscheme' : 'PaperColor', 'background' : 'light'}
  colorscheme breve
endif
if vim_colorscheme == 'papercolor'
  set background=light
  let g:lightline = {'colorscheme' : 'PaperColor', 'background' : 'light'}
  colorscheme PaperColor
endif
if vim_colorscheme == 'material'
  set background=dark
  "let g:material_terminal_italics = 1
  let g:material_theme_style = 'palenight' " default, palenight, ocean, lighter, darker
  let g:lightline = {'colorscheme' : 'material_vim'}
  colorscheme material
endif
if vim_colorscheme == 'apprentice'
  set background=dark
  colorscheme apprentice
endif
if vim_colorscheme == 'flat'
  colorscheme flattened_dark
endif
if vim_colorscheme == 'one'
  set background=dark
  let g:lightline = {'colorscheme' : 'one'}
  colorscheme one
endif
if vim_colorscheme == 'dracula'
  set background=dark
  let g:lightline = {'colorscheme' : 'dracula'}
  colorscheme dracula
endif
if vim_colorscheme == 'deus'
  set background=dark
  let g:lightline = {'colorscheme' : 'deus'}
  colorscheme deus
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

" Fold
autocmd Filetype * AnyFoldActivate
set foldlevel=99
set shell=~/.vim-shell-wrapper.sh
