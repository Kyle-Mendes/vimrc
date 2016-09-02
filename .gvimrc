source ~/.vimrc

let base16colorspace=256
colorscheme gruvbox
set guifont=Roboto\ Mono:h12,Inconsolata:h14,Monaco:h14
set background=dark

let NERDTreeQuitOnOpen = 0

function! g:LightScheme()
  set bg=light
  colorscheme gruvbox
endfunction

function! g:DarkScheme()
  set bg=dark
  colorscheme gruvbox
endfunction
