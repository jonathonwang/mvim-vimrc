syntax enable
set nocompatible              " be iMproved, required
set noswapfile

"================Visual Stuff================"
filetype on                  " required
filetype indent on
colorscheme hybrid_material
set background=dark
"Remove Scrollbars Visibility"
set anti enc=utf-8
"Set macvim font + Nerdtree glyphs made with fontforge -script font-patcher"
set guifont=Office\ Code\ Pro\ Light\ Nerd\ Font:h14

set autoindent
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

"Source the Packages to keep the file cleaner"
:so ~/.vim/packages.vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"============Mappings=============="
"set <Leader> to be ',' instead of default '\'"
let mapleader=","
set timeout timeoutlen=1500
" Insert mode - Make it easy to move lines (Ctrl + down / Ctrl + up )"
inoremap <D-S-Down> <ESC>:m .+1<CR>==gi
inoremap <D-S-Up> <ESC>:m .-2<CR>==gi

"Function to rename file with <leader>r"
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>r :call RenameFile()<cr>"vnoremap <Tab> <S-.>

"Normal Mode - Make backspace and tab switch panels"
nnoremap <Tab> <c-w>w
nnoremap <bs> <c-w>W

" Switch to specific tab numbers with Command-number
noremap <D-1> :tabn 1<CR>
noremap <D-2> :tabn 2<CR>
noremap <D-3> :tabn 3<CR>
noremap <D-4> :tabn 4<CR>
noremap <D-5> :tabn 5<CR>
noremap <D-6> :tabn 6<CR>
noremap <D-7> :tabn 7<CR>
noremap <D-8> :tabn 8<CR>
noremap <D-9> :tabn 9<CR>
" Command-0 goes to the last tab
noremap <D-0> :tablast<CR>

"Map Ctrl+n to toggle Nerdtree"
map <C-n> :NERDTreeToggle<CR>
let g:NERDTrimTrailingWhitespace = 1
let g:NERDTreeIgnore=['\~$', 'vendor', 'bower_components', 'node_modules']
let NERDTreeShowHidden=1
let g:ctrlp_show_hidden = 1
"========Map for emmet autocomplete======="
"let g:user_emmet_install_global = 0
"autocmd FileType html,css,scss,php,vue EmmetInstall
"Insert Mode - Shift+Tab for emmet autocomplete"
imap <expr> <S-tab> emmet#expandAbbrIntelligent("\<S-tab>")
let delimitMate_expand_cr=1
"Map for syntax errors on open"

"Change update time for vim-gitgutter"
set updatetime=250

"Change Airline Theme"
let g:airline_theme='solarized'

"Change Nerdtree Glyphicons Colors"
:so ~/.vim/iconsettings.vim
"let g:webdevicons_conceal_nerdtree_brackets = 0
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

"===========CtrlP Settings=============="
set wildignore+=*/node_modules/**
set wildignore+=*/bower_components/**
set wildignore+=*/vendor/**



"============Auto-Commands=============="
"Let syntastic scan for errors on file open"
let g:syntastic_check_on_open=1
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

"Autimatically source the Vimrc file on save."
autocmd BufWritePost .vimrc source %
autocmd BufWritePost .gvimrc source %

"Set syntax typescript on file open for .ts files"
autocmd BufNewFile,BufRead *.ts set syntax=typescript
autocmd BufNewFile,BufRead *.ts set filetype=typescript
autocmd BufNewFile,BufRead *.vue set syntax=vue
autocmd FileType javascript,typescript JsPreTmpl html
