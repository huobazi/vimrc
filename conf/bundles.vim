set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My vundle list

Plugin 'scrooloose/syntastic'
Plugin 'JavaScript-syntax'
Plugin 'jQuery'
Plugin 'othree/html5.vim'

" Files explorers
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'

" Coding
Plugin 'junegunn/vim-easy-align'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-expand-region'
Plugin 'mattn/emmet-vim'

" Snipmate
Plugin 'Shougo/neocomplcache.git'
Plugin 'Shougo/neosnippet.git'
Plugin 'honza/vim-snippets'

" JSON
Plugin 'elzr/vim-json'

" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" CoffeeScript
Plugin 'kchmck/vim-coffee-script'

" Markdown
Plugin 'hallison/vim-markdown'

" Slim
Plugin 'slim-template/vim-slim'

" Fcitx
Plugin 'vim-scripts/fcitx.vim'

" VimAirline
Plugin 'bling/vim-airline'

" ColorScheme
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
