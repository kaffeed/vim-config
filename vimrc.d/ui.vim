" Set color scheme
" Load colorscheme depending on wm

set t_Co=256
let g:gruvbox_italic=1
colorscheme gruvbox
let g:airline_theme = 'gruvbox'
set background=dark

if has("gui_running")
    set lines=999 columns=999
    set guioptions=icpM

    if has('win32') || has('win64')
        set guifont=Hasklig:h14
        if (v:version == 704 && has("patch393")) || v:version > 704
            set renderoptions=type:directx,level:0.75,gamma:1.25,contrast:0.25,
                        \geom:1,renmode:5,taamode:1
        endif
    else
        set guifont Fira\ Code\ 14
    endif
endif

" Set italic comments
highlight Comment gui=italic
highlight Comment cterm=italic

syntax on
