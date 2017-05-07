"
" File type specific settings and autocommands
"
scriptencoding utf-8

augroup LocalAutocommands
  au!

  "Autochangedirectory
  autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif


  " Set the current working directory when launching vim
  autocmd VimEnter * silent! lcd %:p:h

  " Auto-reload vim configs
  "au BufWritePost .vimrc,vimrc,*vim/configs/?* source %

  if !exists("g:rtrim_whitespace_on_save") || g:rtrim_whitespace_on_save == 1
    au BufWritePre * :%s/\s\+$//e
  endif

  " Return to last edit position when opening files
  au BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

  " Create syntax directives to replace the fugly default foldmarker
  " au Syntax * syntax match FoldMarkerStart /\v(# |#)?\{\{\{/ conceal cchar=⯈
  " au Syntax * syntax match FoldMarkerStop  /\v(# |#)?\}\}\}/ conceal cchar=$
  au Syntax * syntax match FoldMarkerStart /\v(# ?|" ?|\/\* ?|\/\/ ?|; ?)?\{\{\{/ conceal cchar=⯈
  au Syntax * syntax match FoldMarkerStop  /\v(# ?|" ?|\/\/ ?|; ?)?\}\}\}( ?\*\/)?/ conceal cchar=$
  au Syntax * syntax cluster FoldMarker contains=FoldMarkerStart,FoldMarkerStop

  " Apply to existing groups
  au Syntax * syntax cluster cCommentGroup add=@FoldMarker
  au Syntax * syntax cluster shCommentGroup add=@FoldMarker
  au Syntax * syntax cluster vimCommentGroup add=@FoldMarker
  au Syntax * syntax cluster dosiniComment add=@FoldMarker

  " Default coloring
  " hi default link FoldMarker Comment
  hi default link FoldMarker vimHiClear

  " Foldmarker preview {{{
  "
  " One-liner {{{ }}}
  "
  " }}}

augroup END

augroup latex_commands
    autocmd Filetype tex setl updatetime=1
    autocmd FileType tex let b:vimtex_main = 'master.tex'
augroup END

augroup goyo_commands
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
augroup END

augroup typescript_commands
    autocmd QuickFixCmdPost [^l]* nested cwindow
    autocmd QuickFixCmdPost l* nested lwindow
    set ballooneval
    autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
    autocmd FileType typescript nmap <buffer> <LocalLeader>e <Plug>(TsuquyomiRenameSymbol)
    autocmd FileType typescript nmap <buffer> <LocalLeader>E <Plug>(TsuquyomiRenameSymbolC)
    autocmd FileType typescript :set makeprg=tsc
augroup END

augroup omnisharp_commands
    autocmd!

    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
    " Builds can also run asynchronously with vim-dispatch installed
    autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
    " automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    " Automatically add new cs files to the nearest project on save
    autocmd BufWritePost *.cs call OmniSharp#AddToProject()

    "show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "The following commands are contextual, based on the current cursor position.

    autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
    "finds members in the current buffer
    autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
    " cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
    "navigate up by method/property/field
    autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr>
    "navigate down by method/property/field
    autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr>

augroup END

" vim:foldmethod=marker
