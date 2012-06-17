" 缩进
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

" 窗口切换快捷键

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

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

nmap <S-f> :CommandT<cr>
let g:fuf_previewHeight = 0

" NERDTree插件的快捷键
imap <silent> <F6> <esc>:NERDTreeToggle<CR>
nmap <silent> <F6> :NERDTreeToggle<CR>

" 类似windows 下的快捷键
map  <C-a> ggVG		  "全选
vmap <C-c> y	      "复制
vmap <C-x> d          "剪切
imap <C-v> <esc>pa    "粘贴

"加新行
nmap <S-CR> o<esc>
nmap <CR> o<esc>

" 撤销
noremap <C-Z> u
inoremap <C-Z> <C-O>u

" 重做
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>