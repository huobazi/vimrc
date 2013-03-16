" Leader
let mapleader = ","
let g:mapleader= ","

" 缩进
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

" 窗口切换
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l


" 停用上下左右的箭头
map <UP> <NOP>
map <DOWN> <NOP>
map <LEFT> <NOP>
map <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

" NERDTree的快捷键
imap <silent> <F6> <esc>:NERDTreeToggle<CR>
nmap <silent> <F6> :NERDTreeToggle<CR>

" 清除搜索结果 
noremap <silent><Leader>/ :nohls<CR>

" 空格/回车折叠代码
nnoremap <Enter> za
nnoremap <Space> za
vnoremap <Enter> za
vnoremap <Space> za

" 拷贝到行尾
nnoremap Y y$

" 快速退出
nnoremap <Leader>q :q<CR>

" 快速保存
noremap <Leader>w :w!<CR>:echo "Saving:" expand('%:p')<CR>

" sudo 快速保存 
cmap w!! w !sudo tee % >/dev/null

 "Tagbar 快捷键
nmap <F8> :TagbarToggle<CR>

"快速生成tag文件
map <F3> :! ctags -R --exclude=.git --exclude=log * <CR>
map! <F3> <Esc>:! ctags -R --exclude=.git --exclude=log * <CR>

"双击时高亮
map <2-LeftMouse> *
map! <2-LeftMouse> <c-o>*

"Ctrl+鼠标左键跳转
map <C-LeftMouse> <C-]>
map! <C-LeftMouse> <Esc><C-]>
