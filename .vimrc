syntax enable
set nocompatible              " be iMproved, required

"================Visual Stuff================"
filetype off                  " required
filetype plugin on
filetype indent on

colorscheme hybrid_material
set background=dark

"Remove Scrollbars Visibility"
set anti enc=utf-8
set guifont=Office\ Code\ Pro\ Light\ D:h15
set guioptions-=R 
set guioptions-=r
set guioptions-=L
set number
set linespace=15
set shiftwidth=2
set vb
set t_vb=
set tabstop=2
set ai
set si


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'Raimondi/delimitMate'
"Syntax Plugins"
Plugin 'mattn/emmet-vim'
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'othree/html5.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'isRuslan/vim-es6'
Plugin 'scrooloose/syntastic'
Plugin 'ap/vim-css-color'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'marijnh/tern_for_vim'
"Plugin 'scrooloose/nerdcommenter'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList - lists configured plugins
" :PluginInstall - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"============Mappings=============="
"set <Leader> to be ',' instead of default '\'"
let mapleader=","
set timeout timeoutlen=1500

"Make it easy to edit vimrc file"
"<Leader>ev :tabedit $MYVIMRC"
" Insert mode - Make it easy to move lines (Ctrl + j / Ctrl + )"
inoremap <D-S-Down> <ESC>:m .+1<CR>==gi
inoremap <D-S-Up> <ESC>:m .-2<CR>==gi

"Map Ctrl+n to toggle Nerdtree"
map <C-n> :NERDTreeToggle<CR>
let g:NERDTrimTrailingWhitespace = 1

"Map for emmet autocomplete"
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let delimitMate_expand_cr=1
"Map for syntax errors on open"

"===========CtrlP Settings=============="
set wildignore+=*/node_modules/**
set wildignore+=*/bower_components/**
set wildignore+=*/vendor/**

"============Auto-Commands=============="

"Autimatically source the Vimrc file on save."
autocmd BufWritePost .vimrc source %
let g:syntastic_check_on_open=1
