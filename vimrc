runtime! conf/*.vim

if has("gui_running")
  set guioptions-=T " 不显示工具条
  set background=light
else
  set t_Co=256
  set background=dark
endif

try
  let g:solarized_termcolors=256
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
  let g:solarized_contrast="high"
  let g:solarized_visibility="high"
  colorscheme solarized 
catch  
endtry

    
