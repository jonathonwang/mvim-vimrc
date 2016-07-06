"Add extra padding to avoid glyphs from being cut"
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
set ambiwidth=double

" NERDTress File highlighting only the glyph/icon
" test highlight just the glyph (icons) in nerdtree:
"
" Mappings for Colors"
autocmd filetype nerdtree highlight javascript_icon ctermbg=none ctermfg=Red guifg=#ebb972
autocmd filetype nerdtree highlight html_icon ctermbg=none ctermfg=Red guifg=#d28445
autocmd filetype nerdtree highlight yml_icon ctermbg=none ctermfg=Red guifg=#c97071
autocmd filetype nerdtree highlight json_icon ctermbg=none ctermfg=Red guifg=#f4bf75
autocmd filetype nerdtree highlight ts_icon ctermbg=none ctermfg=Red guifg=#6191a5
autocmd filetype nerdtree highlight php_icon ctermbg=none ctermfg=Red guifg=#6191a5
autocmd filetype nerdtree highlight css_icon ctermbg=none ctermfg=Red guifg=#6a9fb5
autocmd filetype nerdtree highlight scss_icon ctermbg=none ctermfg=Red guifg=#ea4acc
autocmd filetype nerdtree highlight md_icon ctermbg=none ctermfg=Red guifg=#669aaf
autocmd filetype nerdtree highlight gulp_icon ctermbg=none ctermfg=Red guifg=#ac4142
autocmd filetype nerdtree highlight xml_icon ctermbg=none ctermfg=Red guifg=#6a9fb5
autocmd filetype nerdtree highlight gitdiff_icon ctermbg=none ctermfg=Red guifg=#38a5cd


"Map Colors to Icons"
autocmd filetype nerdtree syn match javascript_icon ## containedin=NERDTreeFile
autocmd filetype nerdtree syn match html_icon ## containedin=NERDTreeFile,html
autocmd filetype nerdtree syn match yml_icon ## containedin=NERDTreeFile
autocmd filetype nerdtree syn match json_icon ## containedin=NERDTreeFile
autocmd filetype nerdtree syn match ts_icon ## containedin=NERDTreeFile
autocmd filetype nerdtree syn match php_icon ## containedin=NERDTreeFile
autocmd filetype nerdtree syn match css_icon ## containedin=NERDTreeFile
autocmd filetype nerdtree syn match scss_icon ## containedin=NERDTreeFile
autocmd filetype nerdtree syn match scss_icon ## containedin=NERDTreeFile
autocmd filetype nerdtree syn match gulp_icon ## containedin=NERDTreeFile
autocmd filetype nerdtree syn match xml_icon ## containedin=NERDTreeFile
autocmd filetype nerdtree syn match gitdiff_icon #✹# containedin=NERDTreeFile
  
