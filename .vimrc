syntax enable
set nocompatible              " be iMproved, required
set noswapfile

"================Visual Stuff================"
filetype on                  " required
filetype indent on
set background=dark
colorscheme hybrid_material
"colorscheme solarized
set anti enc=utf-8
"Set macvim font + Nerdtree glyphs made with fontforge -script font-patcher"
set guifont=Office\ Code\ Pro\ Light\ Nerd\ Font:h14
set autoread                                                                                                                                                                     
au CursorHold * checktime  
set scrolloff=2
set cursorline " highlight current line
set wildmenu   " visual autocomplete for command menu
set incsearch  " search as characters are entered
set hlsearch   " highlight matches
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
":set colorcolumn=72
" Ignoring case is a fun trick
set ignorecase
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

"highlight selected line with ,l"
"noremap <leader>l <ESC>vV
nnoremap <leader>d <ESC>vYP<ESC>
vnoremap <leader>d <ESC>vYP<ESC>v

"Remap Command+/ to toggle Comments"
map <D-/> <plug>NERDCommenterToggle

"Command L select Line"
inoremap <D-l> <ESC>vV
nnoremap <D-l> <ESC>vV
vnoremap <D-l> <ESC>vV
"Key bindings to deal with auto-indenting on new line creations"
"Shift+Tab for autoindent in | Shift+enter to autoIndent between tags"
"inoremap <S-Tab> <up><end><CR><tab><down><backspace><backspace>
inoremap <S-Return> <CR><Tab><CR><left><delete><up><end>
" Insert mode - Make it easy to move lines (Command +shift+ down / Command +shift+ up )"
inoremap <D-S-Down> <ESC>:m .+1<CR>==gi
inoremap <D-S-Up> <ESC>:m .-2<CR>==gi
nnoremap <D-S-Down> <ESC>:m .+1<CR>==gn
nnoremap <D-S-Up> <ESC>:m .-2<CR>==gn
"Visual mode - Make it easy to move blocks of text"
vnoremap <D-S-Down> :m '>+1<CR>gv=gv
vnoremap <D-S-Up> :m '<-2<CR>gv=gv
"Visual mode - make tab and shift+tab work for indent and unindent"
"would expect it to work coming from sublime / atom"
vnoremap <Tab> ><CR>gv
vnoremap <S-Tab> <<CR>gv
"map <leader>cl <nop>
"map <leader>cl 
"let g:minimap_toggle='<leader>mm'

"========Emmet autocomplete======="
"Insert Mode - Tab for emmet autocomplete"
imap <expr> <S-Tab> emmet#expandAbbrIntelligent("\<S-Tab>")
noremap <D-p> <ESC>:CtrlP<CR>
"Insert Mode - Ctrl+Tab for general autocomplete"
inoremap <C-tab> <C-p>tab



"Duplicate Current line and paste under"
map <D-S-d> <nop>
map <D-S-d> <ESC>vVy<end>i<CR><D-v>
map <D-l> <nop>
map <D-l> <ESC>vV



"Normal Mode - Make tab and Shift+tab switch panels"
nnoremap <Tab> <c-w>w
nnoremap <S-Tab> <c-w>W

noremap <D-f> <ESC>/

"Switch to specific tab numbers with Command-number
noremap <D-1> <ESC>:tabn 1<CR>
noremap <D-2> <ESC>:tabn 2<CR>
noremap <D-3> <ESC>:tabn 3<CR>
noremap <D-4> <ESC>:tabn 4<CR>
noremap <D-5> <ESC>:tabn 5<CR>
noremap <D-6> <ESC>:tabn 6<CR>
noremap <D-7> <ESC>:tabn 7<CR>
noremap <D-8> <ESC>:tabn 8<CR>
noremap <D-9> <ESC>:tabn 9<CR>
" Command-0 goes to the last tab
noremap <D-0> <ESC>:tablast<CR>

"===============NerdTree Options=================="
"Map Ctrl+n to toggle Nerdtree"
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode = 3
let g:NERDTrimTrailingWhitespace = 1
let g:NERDTreeIgnore=['\~$', 'vendor', 'bower_components', 'node_modules']
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:ycm_auto_trigger = 1

"==========Nerd Commenter Mapping ============"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"================CtrlP Settings===================="
let g:ctrlp_show_hidden=1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_switch_buffer=1
"Set CtrlP to ignore these directories"
set wildignore+=*/node_modules/**
set wildignore+=*/bower_components/**
set wildignore+=*/vendor/**

"Make delimitMate expand tags with a return and tab"
let delimitMate_expand_cr=1

"Tagbar Mappings"
noremap <D-Bslash> :TagbarToggle<CR>

let g:tagbar_show_linenumbers = 1


"Change update time for vim-gitgutter"
set updatetime=250

"Change Airline Theme"
let g:airline_theme='solarized'

"Change Nerdtree Glyphicons Colors"
:so ~/.vim/iconsettings.vim
"Let syntastic scan for errors on file open"
let g:syntastic_check_on_open=1
let g:tsuquyomi_disable_quickfix = 0
"use Tsuquyomi for typescript linter"
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

"============Auto-Commands=============="
"Autimatically source the Vimrc file on save."
autocmd BufWritePost .vimrc source %
autocmd BufWritePost .gvimrc source %

"Set syntax typescript on file open for .ts files"
autocmd BufNewFile,BufRead *.ts set syntax=typescript
autocmd BufNewFile,BufRead *.ts set filetype=typescript
autocmd BufNewFile,BufRead *.vue set syntax=vue
autocmd BufNewFile,BufRead *.tsx set filetype=typescript
autocmd BufNewFile,BufRead *.tsx set syntax=typescript

"Auto Adjust size of Quickfix window"
au FileType qf call AdjustWindowHeight(3, 10)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
