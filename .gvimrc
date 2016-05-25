let base16colorspace=256
colorscheme flatcolor
set guifont=Roboto\ Mono:h12,Inconsolata:h14,Monaco:h14
set background=dark
source ~/.vimrc

let NERDTreeQuitOnOpen = 0

function! g:LightScheme()
  set bg=light
  colorscheme soft-morning
endfunction

function! g:DarkScheme()
  set bg=dark
  colorscheme flatcolor
endfunction
