set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"Personal Settings.
execute pathogen#infect()
filetype plugin indent on
syntax on
 
"Automatic reloading vimrc
autocmd! bufwritepost _vimrc source %
"Set the status line options. Make it show more information.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
 
"Set Color Scheme and Font Options
"git clone https://github.com/abra/obsidian2
colorscheme obsidian2 
"git clone https://github.com/eugeneching/consolas-powerline-vim
set guifont=Powerline_Consolas:h12
set guifontwide=Nsimsun
let g:Powerline_symbols="fancy"

"better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

"set line no, buffer, search, highlight, autoindent and more.
set number
set hidden
set showmatch
set autoindent
set copyindent
set ruler
set vb
set viminfo+=n$VIM/_viminfo
set noerrorbells
set showcmd
set mouse=a
set history=1000
set undolevels=1000
set backspace=indent,eol,start "allow backspacing over everything
set shiftwidth=4 "number of spaces to used for autoindenting
set smarttab "insert tabs on the start line according to shiftwidth

" search settings
set hlsearch "highlight search terms
set incsearch
set ignorecase
set smartcase "ignore case if search pattern is all lowercase

set wildignore=*.swp,*.pyc,*.exe

" disable backup and swap files
set nobackup
set noswapfile
set encoding=utf-8
if has("gui_running")
    set lines=1000 columns=1000
endif
set guioptions-=T

" Remaps
nnoremap ; : 
"Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <leader>, :w<cr>
let mapleader=","

"git clone https://github.com/majutsushi/tagbar
let g:tagbar_ctags_bin = "E:/Apps/Vim/vimfiles/bundle/tagbar/ctags58/ctags.exe"

"airline
"git clone https://github.com/bling/vim-airline
"git clone https://github.com/runsisi/consolas-font-for-powerline
let g:airline_powerline_fonts=1
let g:airline_theme="powerlineish"

"ctrl p settings
"git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

"set invisibles
set list
set listchars=tab:»·,nbsp:%,trail:·

"Smash Escape
inoremap jk <Esc>
inoremap kj <Esc>

"NERDTree
"git clone https://github.com/scrooloose/nerdtree.git
let NERDTreeIgnore=['\.pyc$']
autocmd vimenter * NERDTree | wincmd p

"Pymode
"git clone git://github.com/klen/python-mode.git
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0
let g:pymode_folding=1
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()'

"Conque Shell
"https://code.google.com/p/conque/
nmap <Leader>cmd :ConqueTermVSplit cmd<CR>
