syntax on                   " 自动语法高亮
colorscheme desert          " 设定配色方案
filetype plugin indent on   " 根据文件格式载入插件和缩进

" 字典
set dictionary+=~/.vim/dict/my_words
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" 字体
set guifont=monaco\ 9
set mouse=a          " 打开鼠标功能
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

" 设置在状态行显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 

autocmd FileType make     	set noexpandtab
autocmd FileType python   	set noexpandtab
autocmd FileType eruby  	set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc 	set tabstop=2 shiftwidth=2
autocmd FileType html 		set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee 	set tabstop=2 shiftwidth=2

" Ruby自动完成设置
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

au! BufRead,BufNewFile *.json setfiletype json 

" 80字符边界线
if exists('+colorcolumn')
    set colorcolumn=80
else
    " Emulate
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+',-1)
endif
