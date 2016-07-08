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

set scrolloff=2
"set autoindent
"set smartindent
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

"highlight selected line with ,l"
noremap <leader>l <ESC>vV
nnoremap <leader>d <ESC>vYP<ESC>
vnoremap <leader>d <ESC>vYP<ESC>v

"Remap Command+/ to toggle Comments"
map <D-/> <plug>NERDCommenterToggle
"Command L select Line"
"inoremap <D-l> <ESC>vV
"nnoremap <D-l> <ESC>vV
"vnoremap <D-l> <ESC>vV
"Key bindings to deal with auto-indenting on new line creations"
"Shift+Tab for autoindent in | Shift+enter to autoIndent between tags"
inoremap <S-Tab> <up><end><CR><tab><down><backspace><backspace>
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
"vnoremap <S-Tab> <<CR>gv

"Remap Command + Shift + Arrow to start highlighting text - insert / normal mode"
inoremap <D-S-Up> <ESC>v<Up>
inoremap <D-S-Down> <ESC>v<Down>
inoremap <D-S-Left> <ESC>v<Left>
inoremap <D-S-Right> <ESC>v<Right>
nnoremap <D-S-Up> <ESC>v<Up>
nnoremap <D-S-Down> <ESC>v<Down>
nnoremap <D-S-Left> <ESC>v<Left>
nnoremap <D-S-Right> <ESC>v<Right>

"map <leader>cl <nop>
"map <leader>cl 

"Visual Mode, surround highlighted text with quotes"
"vnoremap <'> \q c''<ESC>P
"vnoremap <"> \q c""<ESC>P
"Use Shift + arrow to highlight text"
"let macvim_hig_shift_movement = 1
"nmap <S-Up> v<Up>
"nmap <S-Down> v<Down>
"nmap <S-Left> v<Left>
"nmap <S-Right> v<Right>
"vmap <S-Up> <Up>
"vmap <S-Down> <Down>
"vmap <S-Left> <Left>
"vmap <S-Right> <Right>

"========Emmet autocomplete======="
"Insert Mode - Tab for emmet autocomplete"
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
imap <C-p> <nop>
imap <C-p> <ESC>:CtrlP<CR>
"Insert Mode - Ctrl+Tab for general autocomplete"
inoremap <C-tab> <C-p>tab

"Duplicate Current line and paste under"
"imap <D-S-d> <nop>
"inoremap <D-S-d> <ESC>vVy<end>i<CR><D-v>
"imap <D-l> <nop>
"inoremap <D-l> <ESC>vV
"Normal Mode - Make tab and Shift+tab switch panels"
nnoremap <Tab> <c-w>w
nnoremap <S-Tab> <c-w>W

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
let g:ycm_auto_trigger = 1
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

"Change update time for vim-gitgutter"
set updatetime=250

"Change Airline Theme"
let g:airline_theme='solarized'

"YouCompleteMe Mappings"
"inoremap <D-backspace> <ESC>vV<delete>i
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_invoke_completion = '<Enter>'
let g:ycm_min_num_of_chars_for_completion = 3
"inoremap <D-backspace> <nop>
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1,
      \}
"Change Nerdtree Glyphicons Colors"
:so ~/.vim/iconsettings.vim
"Let syntastic scan for errors on file open"
let g:syntastic_check_on_open=1
let g:tsuquyomi_disable_quickfix = 1
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
autocmd FileType javascript,typescript JsPreTmpl html
