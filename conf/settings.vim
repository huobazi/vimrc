syntax on                   " 自动语法高亮
colorscheme desert          " 设定配色方案
filetype plugin indent on   " 根据文件格式载入插件和缩进

" 字典
"set dictionary+=~/.vim/dict/my_words
"set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" 字体
set guifont=monaco\ 9

set mouse=a          " 打开鼠标功能
set selection=exclusive
set selectmode=mouse,key

set tabstop=4        " 指标符宽度
set shiftwidth=4
set expandtab
set smarttab

" 编码   
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,ucs,latin1,euc-kr
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

set wildmenu                   " 打开命令行补全菜单
setlocal noswapfile            " 不要生成swap文件
set showmatch                  " 在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入
set matchtime=5                " 匹配括号高亮的时间（单位是十分之一秒）
set formatoptions+=mM          " 正确地处理中文字符的折行和拼接
set autoindent
set undolevels=100
set history=100                " history文件中需要记录的行数
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
set t_vb=                      " 置空错误铃声的终端代码
set showmatch                  " 插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2                " 短暂跳转到匹配括号的时间
set magic                      " 设置魔术
set hidden                     " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T              " 隐藏工具栏
set guioptions-=m              " 隐藏菜单栏
set smartindent                " 开启新行时使用智能自动缩进
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1                " 设定命令行的行数为 1
set foldenable                 " 开始折叠
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

" Powerline
let g:Powerline_symbols = 'unicode'

" NeoComplCache =============================================================
"
" Disable AutoComplPop. Comment out this line if AutoComplPop is not installed.
let g:acp_enableAtStartup = 0
" Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define file-type dependent dictionaries.
"let g:neocomplcache_dictionary_filetype_lists = {
    "\ 'default' : '',
    "\ 'vimshell' : $HOME.'/.vimshell_hist',
    "\ 'scheme' : $HOME.'/.gosh_completions'
    "\ }

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
imap <C-l>     <Plug>(neocomplcache_snippets_force_jump)
smap <C-l>     <Plug>(neocomplcache_snippets_force_jump)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)


" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 0

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,eruby,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Define keyword, for minor languages
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Enable heavy omni completion, which require computational power and may stall the vim. 
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" NeoSnippet ===========================================================
"
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'

" SuperTab like snippets behavior.
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"Zencoding 设置
"let g:user_zen_expandabbr_key='<c-e>'
let g:use_zen_complete_tag = 1

" Clipboard
set clipboard=unnamed

"快速生成tag文件
map <F3> :! ctags -R<CR>
map! <F3> <Esc>:! ctags -R<CR>

"双击时高亮
map <2-LeftMouse> *
map! <2-LeftMouse> <c-o>*

"Ctrl+鼠标左键跳转
map <C-LeftMouse> <C-]>
map! <C-LeftMouse> <Esc><C-]>
