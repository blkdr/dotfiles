set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vungle
Plugin 'VundleVim/Vundle.vim'

" JS & HTML & CSS
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'othree/html5.vim'
Plugin 'larsbs/vim-xmll'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'JulesWang/css.vim'
Plugin 'genoma/vim-less'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mattn/emmet-vim'
Plugin 'gorodinskiy/vim-coloresque'

" PHP
Plugin 'StanAngeloff/php.vim'

" Twig
Plugin 'nelsyeung/twig.vim'

" Elixir
Plugin 'elixir-lang/vim-elixir'

" Python
Plugin 'hdima/python-syntax'

" NeerdTree
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'

" Goodies
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/syntastic'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'gavinbeatty/dragvisuals.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'zeekay/vim-beautify'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'tpope/vim-surround'
Plugin 'fweep/vim-tabber'
Plugin 'wesQ3/vim-windowswap'
Plugin 'vim-scripts/diffchanges.vim'
Plugin 'schickling/vim-bufonly'
Plugin 'tommcdo/vim-lion'

" Colorschemes
Plugin 'szorfein/darkest-space'
Plugin 'nanotech/jellybeans.vim'
Plugin 'crusoexia/vim-monokai'
Plugin 'dracula/vim'
Plugin 'srcery-colors/srcery-vim'
Plugin 'AlessandroYorba/Sierra'

" :source%
" :PluginInstall

call vundle#end()
filetype plugin indent on
set tabstop=2
set expandtab
set shiftwidth=2
set number
set ignorecase

" Its a nice practice to have the <leader> key set to comma (instead of \ as default on linux)
let mapleader = ","
let g:mapleader = ","

highlight ColorColumn ctermbg=DarkGray
"set colorcolumn=80

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
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

filetype on
filetype indent on
filetype plugin on

" Colorscheme
set t_Co=256
syntax on
"let g:sierra_Sunset = 1
"let g:sierra_Twilight = 1
"let g:sierra_Midnight = 1
"let g:sierra_Pitch = 1
"colorscheme sierra
colorscheme monokai

let g:jsdoc_enable_es6 = 1
let g:jsx_ext_required = 0
let g:airline_theme='papercolor'
set tabline=%!tabber#TabLine()
imap cll console.log();<Esc>hi
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

" Quickly open/reload vim
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
