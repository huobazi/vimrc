runtime! conf/*.vim

if has("gui_running")
  set guioptions-=T " 不显示工具条
  set background=light
else
  set background=dark
endif

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

try
  let g:solarized_termcolors=256
  colorscheme solarized 
catch  
endtry

    
