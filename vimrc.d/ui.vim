" Set color scheme
" Load colorscheme depending on wm

set t_Co=256
let g:gruvbox_italic=1
colorscheme gruvbox
let g:airline_theme = 'gruvbox'
set background=dark

if has("gui_running")
    set guifont=Operator\ Mono\ 14
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set lines=999 columns=999
endif

" Set italic comments
highlight Comment gui=italic
highlight Comment cterm=italic

syntax on
