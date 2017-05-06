""""""""""""
" ~/.vimrc "
""""""""""""

if &compatible
    set nocompatible
endif

set runtimepath^=$HOME/.vim
set runtimepath^=$HOME/.vim/after
set runtimepath^=/usr/share/vim/vimfiles/eclim

" Plug

call plug#begin('~/.vim/plugged')

if has('python') || has('python3')
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'Valloric/YouCompleteMe'
endif

Plug 'rust-lang/rust.vim'
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/a.vim'
Plug 'tpope/vim-dispatch'
Plug 'OrangeT/vim-csharp'
Plug 'bling/vim-bufferline'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'morhetz/gruvbox'
Plug 'baskerville/vim-sxhkdrc'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ervandew/supertab'
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'suan/vim-instant-markdown'
Plug 'nelstrom/vim-markdown-folding'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'paranoida/vim-airlineish'
Plug 'chrisbra/Colorizer'
Plug 'ap/vim-css-color'
Plug 'KabbAmine/vCoolor.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'amix/vim-zenroom2'
Plug 'junegunn/goyo.vim'
Plug 'rhysd/vim-grammarous'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf'
Plug 'dracula/vim'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'chrisbra/unicode.vim'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'lervag/vimtex'
Plug 'rhysd/unite.vim'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'easymotion/vim-easymotion'
Plug 'pangloss/vim-javascript'
Plug 'jceb/vim-orgmode'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-speeddating'
call plug#end()

" Source configurations
for g:rc in split(glob('$HOME/.vim/vimrc.d/*.vim'), '\n')
    exe 'source' rc
endfor
