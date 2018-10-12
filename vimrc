" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'


" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'fatih/vim-go' , { 'do': ':GoInstallBinaries' }

" Plugin options
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }


" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'Shougo/vinarise.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

set nocompatible
filetype on
filetype plugin indent on

set ttyfast

" -------------
"  " Interface
" -------------
set ruler
set number
set showcmd
set wrap
set laststatus=2
set cmdheight=1
set colorcolumn=128
set cursorline
" set cursorcolumn
set showmatch
set matchtime=2
set mousehide
set mouse=a
set noerrorbells
set novisualbell
set t_Co=256
set background=dark
set fileformat=unix
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=6
let g:solarized_visibility='low'
syntax enable

set encoding=utf-8
set cindent
set autoindent
set smarttab
set expandtab
set tabstop=2
set backspace=2
set shiftwidth=2
set backspace=2
set softtabstop=4
set cindent
set cinoptions=(0
" Allow tabs in Makefiles.
autocmd FileType make,automake set noexpandtab shiftwidth=8 softtabstop=8
" Trailing whitespace and tabs are forbidden, so highlight them.
highlight ForbiddenWhitespace ctermbg=red guibg=red
match ForbiddenWhitespace /\s\+$\|\t/
" Do not highlight spaces at the end of line while typing on that line.
autocmd InsertEnter * match ForbiddenWhitespace /\t\|\s\+\%#\@<!$/

set autoread
set autowrite
set wildmenu
set hidden
set history=1024
set updatetime=1000
set cf
set clipboard+=unnamed
set timeoutlen=250
set foldlevelstart=99
set formatoptions=tcq
set complete=.,w,b,u,U
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set ignorecase
set smartcase
set incsearch
set hlsearch

let mapleader=","

" Window Movement
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Common tasks
imap <C-l> <C-x><C-l>
nmap <leader>q' ciw'<Esc>p<Esc>

vmap "+y :w !pbcopy<CR><CR> 
nmap "+p :r !pbpaste<CR><CR>


nmap <F8> :TagbarToggle<CR>

let g:airline_powerline_fonts = 1

let g:airline_theme="dark"
