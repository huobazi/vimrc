set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Align'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kchmck/vim-coffee-script'
Bundle 'hallison/vim-markdown'
Bundle 'altercation/vim-colors-solarized'


filetype plugin indent on     " required!
