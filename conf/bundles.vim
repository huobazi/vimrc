set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Files explorers 
Bundle 'L9'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'FuzzyFinder'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

" Coding 
Bundle 'Align'
Bundle 'Townk/vim-autoclose'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'

" Vim-snipmate https://github.com/garbas/vim-snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate'

" CoffeeScript
Bundle 'kchmck/vim-coffee-script'

" Markdown
Bundle 'hallison/vim-markdown'

" fcitx
Bundle 'vim-scripts/fcitx.vim'

" Powerline
Bundle 'Lokaltog/vim-powerline'

" ColorScheme
"Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on     " required!
