" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"Bundles:
Bundle 'Align'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'hallison/vim-markdown'
Bundle 'hallettj/jslint.vim'

Bundle 'wincent/Command-T'
" cd ~/.vim/bundle/Command-T/ruby/ ; ruby extconf.rb ; make 
