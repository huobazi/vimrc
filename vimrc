if has("gui_running")
else
    set t_Co=256
endif
colorscheme desert          " 设定默认配色方案

runtime! conf/bundles.vim
runtime! conf/settings.vim
runtime! conf/mappings.vim

set ttyfast
try
    colorscheme molokai
    let g:molokai_original = 1
catch
endtry

" set highlight to 1000 ms
let g:highlightedyank_highlight_duration = 1000
highlight HighlightedyankRegion cterm=reverse gui=reverse

" 80字符边界线
if exists('+colorcolumn')
    set colorcolumn=79
    hi ColorColumn ctermbg=DarkRed guibg=DarkRed
else
    " Emulate
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+',-1)
endif

