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

" Coding 
Bundle 'Align'
Bundle 'Valloric/YouCompleteMe'

" Nasty bugs happen if I have the vim-autoclose plugin installed
" Use the delimitMate plugin instead. It does the same thing without conflicting with YCM.
Bundle 'Raimondi/delimitMate'

Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/HTML-AutoCloseTag'
Bundle 'ZenCoding.vim'
Bundle 'surround.vim'

" Snipmate
Bundle 'SirVer/ultisnips'
Bundle "honza/snipmate-snippets"

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

" CoffeeScript
Bundle 'kchmck/vim-coffee-script'

" Markdown
Bundle 'hallison/vim-markdown'

" Fcitx
Bundle 'vim-scripts/fcitx.vim'

" Powerline
Bundle 'Lokaltog/vim-powerline'

" ColorScheme
Bundle 'tomasr/molokai'


filetype plugin indent on     " required!
