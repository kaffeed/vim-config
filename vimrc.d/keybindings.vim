let g:mapleader = ","

"faster saving, etc
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :qall<cr>

" Map W to sudo-write
command! W w !sudo tee % > /dev/null

nnoremap ; :
imap jj <esc>

" Change pwd of current buffer and prompt for file to edit
map <leader>s :lcd %:p:h<cr>:new <c-r>=expand("%:p:h")<cr>/
map <leader>v :lcd %:p:h<cr>:vnew <c-r>=expand("%:p:h")<cr>/
map <leader>e :lcd %:p:h<cr>:edit <c-r>=expand("%:p:h")<cr>/

" Format current buffer
map <F3> mzgg=G`z

" Toggle line wrapping
nmap <leader><c-w> :set wrap!<cr>

map j gj
map k gk

" Paragraph formatting
vmap Q gq
nmap Q gqap

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
map <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

map <leader>o :silent! NERDTreeToggle<cr>
" Show all open buffers and their status
nmap <leader>bl :ls<cr>

" Cycle buffers
" nmap <tab> :bnext<cr>
" nmap <s-tab> :bprevious<cr>

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Toggle between the most recent buffer/file
nmap <leader>` :e#<cr>:pwd<cr>

" Close the current buffer
nmap <leader>bd :Bclose<cr>

" Close the current buffer and move to the previous one
nmap <leader>bq :bp <bar> bd #<cr>

" Switch CWD to the directory of the current buffer
nmap <leader>cd :lcd %:p:h<cr>:pwd<cr>

" Cycle tabs
nmap <leader>tn :tabnext<cr>
nmap <leader>tp :tabprevious<cr>

" Close the current tab
nmap <leader>td :tabclose<cr>

" Search stuff
map <space> /
map <c-space> ?

" Clear match highlight
nmap <silent> <leader><leader> :nohlsearch<cr>

" Search for selected text
vmap <silent> * y<bar>:let @/ = substitute(@", "\n", "", "")<cr>n
vmap <silent> # *#vmap <silent> * y

" Cycle results
map <leader>cn :cn<cr>
map <leader>cp :cp<cr>

" Grep pwd/file
map <leader><space><space> :vimgrep // <c-r>%<c-b><right><right><right><right><right><right><right><right><right>
map <leader><space> :vimgrep // **/*<left><left><left><left><left><left>

" Compile and run (cpp)
nmap <f7> :lcd %:p:h<cr>:!make<cr>
nmap <f8> :lcd %:p:h<cr>:!make && ./%< <cr>
nmap <f9> :SyntasticCheck<cr>:echo 'Syntastic check done'<cr>

" Toggle the display of the Tagbar window
nmap <leader>tt :TagbarToggle<cr>
nmap <leader>to :TagbarOpenAutoClose<cr>

nmap <f6> :SyntasticCheck<cr>

" Contextual code actions (requires CtrlP or unite.vim)
nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
" Run code actions with text selected in visual mode to extract method
vnoremap <leader><space> :call OmniSharp#GetCodeActions('visual')<cr>

" rename with dialog
nnoremap <leader>nm :OmniSharpRename<cr>
nnoremap <F2> :OmniSharpRename<cr>
" rename without dialog - with cursor on the symbol to rename... ':Rename newname'
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <leader>rl :OmniSharpReloadSolution<cr>
nnoremap <leader>cf :OmniSharpCodeFormat<cr>
" Load the current .cs file to the nearest project
nnoremap <leader>tp :OmniSharpAddToProject<cr>

" (Experimental - uses vim-dispatch or vimproc plugin) - Start the omnisharp server for the current solution
nnoremap <leader>ss :OmniSharpStartServer<cr>
nnoremap <leader>sp :OmniSharpStopServer<cr>

"Easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"CtrlP mapping
let g:ctrlp_map = '<c-p>'


