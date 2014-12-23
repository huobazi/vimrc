syntax on                   " 自动语法高亮

let g:auto_save = 1         " Auto save

" When vimrc is edited, reload it
" copied from http://amix.dk/vim/vimrc.html
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" 根据文件格式载入插件和缩进
filetype plugin on
filetype indent on

" 字典
"set dictionary+=~/.vim/dict/my_words
"set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" 字体
set guifont=monaco\ 13

set mouse=a          " 打开鼠标功能
set selection=exclusive
set selectmode=mouse,key

set tabstop=4        " 指标符宽度
set shiftwidth=4
set expandtab
set smarttab

set ttimeoutlen=50
set lz

" 编码
set fileformat=unix
set fileformats=unix,dos,mac
set nobomb
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,ucs,latin1,euc-kr
set fileencoding=utf-8
scriptencoding utf-8

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

set list!                       " Display unprintable characters
set listchars=tab:▸\ ,trail:•,extends:»,precedes:«
set updatecount=100             " Write swap file to disk every 100 chars
set complete=.,w,b,u,U,t,i,d    " Do lots of scanning on tab completion

set et                         " tab 替换成空格
set wildmenu                   " 打开命令行补全菜单
setlocal noswapfile            " 不要生成swap文件
set showmatch                  " 在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入
set matchtime=5                " 匹配括号高亮的时间（单位是十分之一秒）
set formatoptions+=mM          " 正确地处理中文字符的折行和拼接
set autoindent
set undolevels=10000
set history=10000                " history文件中需要记录的行数
set nocompatible               " 关闭 vi 兼容模式
set number                     " 显示行号
set cursorline                 " 突出显示当前行
set ruler                      " 打开状态栏标尺
set shiftwidth=4               " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4              " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4                  " 设定 tab 长度为 4
set nobackup                   " 覆盖文件时不备份
set nowritebackup
set noswapfile                 " 不产生交换文件
set autochdir                  " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on      " 开启插件
set backupcopy=yes             " 设置备份时的行为为覆盖
set ignorecase smartcase       " 索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan                 " 禁止在搜索到文件两端时重新搜索
set incsearch                  " 输入搜索内容时就显示搜索结果
set hlsearch                   " 搜索时高亮显示被找到的文本
set noerrorbells               " 关闭错误信息响铃
set novisualbell               " 关闭使用可视响铃代替呼叫
set vb t_vb=                   " 置空错误铃声的终端代码
set showmatch                  " 插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2                " 短暂跳转到匹配括号的时间
set magic                      " 设置魔术
set hidden                     " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T              " 隐藏工具栏
set guioptions-=m              " 隐藏菜单栏
set guioptions-=r              " Removes right hand scroll bar
set go-=L                      " Removes left hand scroll bar
set smartindent                " 开启新行时使用智能自动缩进
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1                " 设定命令行的行数为 1
set foldenable                 " 开启折叠
set foldmethod=syntax          " 设置语法折叠
set foldcolumn=0               " 设置折叠区域的宽度
setlocal foldlevel=1           " 设置折叠层数为
set laststatus=2               " 显示状态栏 (默认值为 1, 无法显示状态栏)

autocmd FileType make     	set noexpandtab
autocmd FileType python   	set noexpandtab
autocmd FileType eruby  	set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc 	set tabstop=2 shiftwidth=2
autocmd FileType html 		set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee 	set tabstop=2 shiftwidth=2
autocmd FileType css        set tabstop=2 shiftwidth=2


" Ruby自动完成设置
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

au! BufRead,BufNewFile *.json setfiletype json
au! BufRead,BufNewFile *.hamlc set ft=haml
au! BufNewFile,BufRead *.mobile.erb let b:eruby_subtype='html'
au! BufRead,BufNewFile *.mobile.erb set filetype=eruby.html.javascript.javascript-jquery
au! BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au! BufRead,BufNewFile *.js set ft=javascript syntax=jquery
au! BufRead,BufNewFile *.html set ft=html.javascript.javascript-jquery
au! BufRead,BufNewFile *.scss set ft=css 
au! FileType html,javascript let g:javascript_enable_domhtmlcss = 1
au! BufRead,BufNewFile *.json setfiletype json

" Powerline
let g:Powerline_symbols = 'unicode'

" Enable omnicomplete {{{
au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType javascript,coffee setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType html setlocal omnifunc=htmlcomplete#CompleteTags
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
au FileType php setlocal omnifunc=phpcomplete#CompletePHP
au FileType c setlocal omnifunc=ccomplete#Complete
au FileType cpp setlocal omnifunc=omni#cpp#complete#Main
au FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
" }}}

" Console {{{
set t_Co=256
    colorscheme desert          " 设定默认配色方案
set ttyfast
" }}}


" Writes to the unnamed register also writes to the * and + registers. This
" makes it easy to interact with the system clipboard
if has ('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" CtrlP {{{
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
let g:ctrlp_open_multiple_files = 'v'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }
let g:ctrlp_jump_to_buffer = 2
let g:ctrlp_working_path_mode = 2
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_open_new_file = 1
let g:ctrlp_cache_dir = expand($VIMHOME."/tmp/ctrlp_cache")
let g:ctrlp_open_multi = '1t'
" }}}

" delimitMate {{{
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1
let g:delimitMate_excluded_ft = "mail,help"
au FileType * let b:delimitMate_autoclose = 1
" }}}


" Nerdtree {{{
"" Auto open nerd tree on startup
let g:nerdtree_tabs_open_on_gui_startup = 0
" Focus in the main content window
let g:nerdtree_tabs_focus_on_files = 1
" Make nerdtree look nice
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 36
let g:NERDTreeMouseMode = 3
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeChDirMode = 2
" }}}

" CoffeeScript {{{
au FileType coffee setlocal foldmethod=indent nofoldenable
au FileType coffee map <leader>r :CoffeeRun<cr>
au FileType coffee map <leader>c :CoffeeCompile watch vertical<cr>
au FileType coffee imap <leader>r <c-o>:CoffeeRun<cr>
au FileType coffee imap <leader>c <c-o>:CoffeeCompile watch vertical<cr>
" }}}

" Javascript {{{
if executable('node')
    " Run current file in node for quick evaluation
    func! s:RunInNode()
        w
        !node %
    endf
    au FileType javascript command! RunInNode call s:RunInNode()
    au FileType javascript map <leader>r :RunInNode<cr>
endif
" }}}

" Markdown {{{
autocmd BufNewFile,BufRead *.{md,mkd,mkdn,mark*} set filetype=markdown
" }}}

" Python {{{
let g:virtualenv_directory = expand($HOME."/ve")
let g:python_highlight_all = 1
let g:python_show_sync = 1
let g:python_print_as_function = 1
let g:pythonmode_enable_django = 1
let g:pythonmode_enable_rope = 0
let g:ropevim_vim_completion = 1
let g:ropevim_extended_complete = 1
au FileType python setlocal foldmethod=syntax
" }}}

" VimL {{{
au FileType vim nnoremap <leader>r :w<cr> <bar> :so %<cr>
" }}}
"
" Syntastic {{{
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['scss', 'slim'] }
" }}}
"
"
" JSON {{{
au! BufRead,BufNewFile *.json set filetype=json
autocmd FileType json set autoindent
autocmd FileType json set formatoptions=tcq2l
autocmd FileType json set textwidth=78 shiftwidth=2
autocmd FileType json set softtabstop=2 tabstop=8
autocmd FileType json set expandtab
autocmd FileType json set foldmethod=syntax
" }}}


vnoremap <silent> <Enter> :EasyAlign<cr>
