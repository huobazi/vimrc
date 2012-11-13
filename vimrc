runtime! conf/*.vim

if has("gui_running")
    set guioptions-=T " 不显示工具条
    set background=light
else
    set t_Co=256
    set background=dark
endif

" 配色
try
    let g:molokai_original = 1
    colorscheme molokai 

catch  
endtry

" 80字符边界线
if exists('+colorcolumn')
    set colorcolumn=81
    hi ColorColumn ctermbg=DarkRed guibg=DarkRed
else
    " Emulate
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+',-1)
endif


