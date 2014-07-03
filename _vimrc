set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"Personal Settings.
execute pathogen#infect()
filetype plugin indent on
syntax on
 
"Set the status line options. Make it show more information.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
 
"Set Color Scheme and Font Options
colorscheme obsidian2 
set guifont=Powerline_Consolas:h12
 
"set line no, buffer, search, highlight, autoindent and more.
set nu
set hidden
set ignorecase
set incsearch
set smartcase "ignore case if search pattern is all lowercase
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
set hlsearch "highlight search terms
set wildignore=*.swp,*.pyc
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
map <C-k> <C-w>j

map <C-k> <C-w>k
map <C-l> <C-w>l
let g:tagbar_ctags_bin = "D:/Apps/Vim/vimfiles/bundle/tagbar/ctags58/ctags.exe"

let mapleader=","

"airline
let g:airline_powerline_fonts=1
let g:airline_theme="powerlineish"

