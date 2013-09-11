set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'scrooloose/syntastic'
Bundle 'JavaScript-syntax'
Bundle 'jQuery'
Bundle 'othree/html5.vim'

" Files explorers
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'

" Coding
Bundle 'junegunn/vim-easy-align'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/HTML-AutoCloseTag'
Bundle 'tpope/vim-surround'
Bundle 'terryma/vim-expand-region'
Bundle 'mattn/emmet-vim'

" Snipmate
Bundle 'Shougo/neocomplcache.git'
Bundle 'Shougo/neosnippet.git'
Bundle 'honza/vim-snippets'

" JSON
Bundle 'elzr/vim-json'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

" CoffeeScript
Bundle 'kchmck/vim-coffee-script'

" Markdown
Bundle 'hallison/vim-markdown'

" Slim
Bundle 'slim-template/vim-slim'

" Fcitx
Bundle 'vim-scripts/fcitx.vim'

" VimAirline
Bundle 'bling/vim-airline'

" ColorScheme
Bundle 'tomasr/molokai'

filetype plugin indent on     " required!
