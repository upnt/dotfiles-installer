let g:python_host_prog='C:\Users\shun-\anaconda3\envs\pynvim2\python.exe'
let g:python3_host_prog='C:\Users\shun-\anaconda3\envs\pynvim3\python.exe'


"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif


" Required:
set runtimepath+=$HOME\.cache\dein\repos\github.com\Shougo\dein.vim
let s:dir_path = stdpath('config')

" Required:
if dein#load_state($HOME . '\.cache\dein')
    call dein#begin($HOME . '\.cache\dein')
    " Let dein manage dein
    " Required:
    call dein#add('Shougo\dein.vim')
    call dein#load_toml(s:dir_path . '\dein.toml')
    
    " Required:
    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax on

let mapleader="\<Space>"

inoremap <C-j> <ESC>
tnoremap <C-j> <C-\><C-n>
nnoremap <silent><ESC><ESC> :nohlsearch<CR>

set number
set relativenumber
set expandtab
set cursorline

set confirm
set hidden

set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set smartindent

colorscheme desert

if has('persistent_undo')
	let undo_path = expand('~/AppData/Local/nvim/undo')
	exe 'set undodir=' .. undo_path
	set undofile
endif
