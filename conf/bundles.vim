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

Plugin 'JavaScript-syntax'
Plugin 'jQuery'
Plugin 'othree/html5.vim'

" Files explorers
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'

" Coding
Plugin 'junegunn/vim-easy-align'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'mattn/emmet-vim'
Plugin 'zxqfl/tabnine-vim'

" Snipmate
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

" JSON
Plugin 'elzr/vim-json'

" Dart
Plugin 'dart-lang/dart-vim-plugin'

" Flutter
Plugin 'thosakwe/vim-flutter'

" Golang
Plugin 'fatih/vim-go'

" Ruby
Plugin 'vim-ruby/vim-ruby'

" CoffeeScript
Plugin 'kchmck/vim-coffee-script'

" Solidity
Plugin 'tomlion/vim-solidity'

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
