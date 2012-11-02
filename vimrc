runtime! conf/*.vim

if has("gui_running")
    set guioptions-=T " 不显示工具条
    set background=light
else
    set t_Co=256
    set background=dark
endif

try
    let g:molokai_original = 1
    colorscheme molokai 
catch  
endtry


