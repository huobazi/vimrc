
" Esc
imap JJ <esc>
imap jj <esc>

" 缩进
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

"加新行
nmap <S-CR> o<esc>
nmap <CR> o<esc>

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

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
" FuzzyFinder 
map <S-p>  :FufCoverageFile!<cr>
let g:fuf_previewHeight = 0
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(tmp|log|db/migrate|vendor)'
let g:fuf_enumeratingLimit = 5000
let g:fuf_coveragefile_prompt = '=>'

" NERDTree插件的快捷键
imap <silent> <F6> <esc>:NERDTreeToggle<CR>
nmap <silent> <F6> :NERDTreeToggle<CR>
