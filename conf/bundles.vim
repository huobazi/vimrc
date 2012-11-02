set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Files explorers 
Bundle 'scrooloose/nerdtree'
Bundle 'L9'
Bundle 'kien/ctrlp.vim'
Bundle 'FuzzyFinder'

" Coding 
Bundle 'Align'
Bundle 'Townk/vim-autoclose'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'

" Snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate'

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
