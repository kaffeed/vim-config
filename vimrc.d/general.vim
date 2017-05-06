set showmode
set showcmd
set showmatch
set exrc
set secure
set viminfo="NONE"

" Bashscript stuff
set omnifunc=syntaxcomplete#Complete
filetype plugin on
filetype indent on

"Airline stuff
"Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

"Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_powerline_fonts = 1 "Nicer word wrapping
set laststatus=2
set ttimeoutlen=50

set lazyredraw

" Highlight cursor line
" set cursorline
set formatoptions=1
set linebreak

set number

" Disable creation of swap files
set noswapfile

set updatetime=800
set history=700
set autoread

set nobackup
set nowritebackup
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set autoindent
set smartindent
set nowrap

set linebreak
set textwidth=80

set colorcolumn=80

set splitbelow
set splitright

set wildmenu
set wildmode=list:longest:list,full
set wildignore=*.o,*~,*.pyc,*.swp,*.zip,*.rar,*.png,*.jpg,*.wav,*.mp3,*.avi,*.cpan*

" Always show current position
set ruler

set cmdheight=1
set cmdwinheight=4

set winwidth=25
set winheight=15

" A buffer becomes hidden when it is abandoned
set hidden

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch

" Specify the behavior when switching between buffers
try
	set switchbuf=useopen,usetab,newtab
	set stal=2
catch
endtry

" Load default tags
set tags+=$HOME/.vim/tags/c
set tags+=$HOME/.vim/tags/cpp
set magic

set noshowmatch

let g:livepreview_previewer = 'zathura'

"Bufferline stuff
let g:bufferline_echo = 1
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
let g:bufferline_inactive_highlight = 'StatusLineNC'
let g:bufferline_active_highlight = 'StatusLine'

" OmniSharp stuff
let g:OmniSharp_timeout = 1
let g:OmniSharp_selector_ui = 'ctrlp'

set completeopt=longest,menuone,preview
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']

" Enable snippet completion, requires completeopt-=preview
let g:OmniSharp_want_snippet=1

set encoding=utf-8

let python_highlight_all=1

" NERDTreeStuff

let NERDTreeIgnore=['\.pyc$', '\~$', '\.aux$', '\.fls$','\.blg$',]
let g:nerdtree_tabs_open_on_gui_startup = 0
let NERDTreeChDirMode = 2
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_auto_trigger = 1
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
            \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
            \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
            \ 're!\\hyperref\[[^]]*',
            \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
            \ 're!\\(include(only)?|input){[^}]*',
            \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
            \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
            \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
            \ 're!\\usepackage(\s*\[[^]]*\])?\s*\{[^}]*',
            \ 're!\\documentclass(\s*\[[^]]*\])?\s*\{[^}]*',
            \ 're!\\[A-Za-z]*',
        \ ]


" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:ycm_rust_src_path = '/usr/src/rust/src'

"Latex stuff
let g:tex_flavor = 'latex'
let g:tex_fast = 'cmMprs'
let g:tex_conceal = ''
let g:tex_fold_enabled = 0
let g:tex_comment_nospell = 1

"FZF Stuff
let g:fzf_launcher = 'urxvt -geometry 120x30 -e sh -c %s'

"Buffergator remove that stupid resizing
let g:buffergator_autoexpand_on_split = 0

"ORG-Stuff
let g:org_agenda_files = ['~/Dropbox/org/agenda/*.org']

"CtrlP Stuff
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll|aux|glo|idx|log|toc|ist|acn|acr|alg|bbl|blg|dvi|glg|gls|ilg|ind|lof|lot|maf|mtc|mtc1|out|synctex.gz)$',
	\ }


