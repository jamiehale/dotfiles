set number
syntax enable
set noswapfile
set scrolloff=7
set nowrap
set nocompatible

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set fileformat=unix

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\|\t/

autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

call plug#begin("~/.vim/plugged")
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'cloudhead/neovim-fuzzy'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
"Plug 'tpope/vim-rhubarb'
"Plug 'junegunn/gv.vim'
call plug#end()

colorscheme onedark
"colorscheme nord
"let g:airline_theme='nord'
"colorscheme dracula
"let g:airline_theme='dracula'
let g:airline_powerline_fonts=1
"colorscheme gruvbox
"let g:airline_theme='gruvbox'

if (has("termguicolors"))
 set termguicolors
endif

lua require 'colorizer'.setup()

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 50
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
"nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <silent> <F2> :NERDTreeToggle<CR>
"nmap <C-w> :bd<CR>

" FuzzyOpen
nnoremap <C-p> :FuzzyOpen<CR>

let g:pyindent_open_paren = 'shiftwidth()'
let g:pyindent_continue = 'shiftwidth()'
