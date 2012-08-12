" Leader
let mapleader = ","
let g:mapleader= ","

" Esc
imap JJ <esc>
imap jj <esc>
imap KK <esc>
imap kk <esc>

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

" 插入模式下的移动
"inoremap <A-h> <Left>
"inoremap <A-j> <Down>
"inoremap <A-k> <Up>
"inoremap <A-l> <Right>

" 停用上下左右的箭头
map <UP> <NOP>
map <DOWN> <NOP>
map <LEFT> <NOP>
map <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

" FuzzyFinder的快捷键和设置 
map <S-p>  :FufCoverageFile!<cr>
let g:fuf_previewHeight = 0
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(tmp|log|db/migrate|vendor)'
let g:fuf_enumeratingLimit = 5000
let g:fuf_coveragefile_prompt = '=>'

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
