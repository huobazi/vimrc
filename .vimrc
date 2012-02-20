" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:

Bundle 'Align'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'hallison/vim-markdown'
Bundle 'hallettj/jslint.vim'

Bundle 'wincent/Command-T'
" cd ~/.vim/bundle/Command-T/ruby/ ; ruby extconf.rb ; make 

" 字体
set guifont=monaco\ 9

" history文件中需要记录的行数
set history=100
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"缺省不产生备份文件
set nobackup
set nowritebackup

" 不要生成swap文件
setlocal noswapfile

"语法高亮
syntax on

"打开命令行补全菜单
set wildmenu
"关闭响铃，闪屏
set vb t_vb= 
"显示行号
set nu 
"在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5
" 搜索时，输入的词句的逐字符高亮
set incsearch
" 不要闪烁
set novisualbell
"正确地处理中文字符的折行和拼接
set formatoptions+=mM
"文件 UTF-8 编码
set fileencodings=utf-8
"根据文件格式载入插件和缩进
filetype plugin indent on 
set autoindent

"打开鼠标功能
set mouse=a 

"指标符宽度
set tabstop=4 
set shiftwidth=4
set expandtab
set smarttab

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab
autocmd FileType eruby  set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc set tabstop=2 shiftwidth=2
autocmd FileType html set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee set tabstop=2 shiftwidth=2
au! BufRead,BufNewFile *.json setfiletype json 

" 快捷键
nmap <Up> <c-w>k
nmap <Down> <c-w>j
nmap <Right> <c-w>l
nmap <Left> <c-w>h

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

nmap <S-f> :CommandT<cr>
let g:fuf_previewHeight = 0


" NERDTree插件的快捷键
imap <silent> <F6> <esc>:NERDTreeToggle<CR>
nmap <silent> <F6> :NERDTreeToggle<CR>


" CTRL-C  复制
vnoremap <C-C> "+y
" CTRL-V 粘贴
map <C-V>	"+gP
cmap <C-V> <C-R>+
imap <C-V> <C-R>+

