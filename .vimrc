set nocompatible " be iMproved, required
filetype off     " required
set showmode
set visualbell
set autoread

" ~~~ Seach ~~~
set incsearch
set hlsearch
set ignorecase
set smartcase

" ================ Turn Off Swap Files ==============

set noswapfile  "Disables pesky swap files.  Some people might like this.
set nobackup    "Don't save 'before edit' copies
set nowb        "Don't automatically write backups

" ================ Scrolling & Cursor =================
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
set tags=./tags;~/Sites
let g:easytags_dynamic_files = 1
set lazyredraw
set ttyfast


" ~~~VUNDLE ~~~
" Load VIM plugins with Vundle. We save all plugins to ~/.vim/bundle/
" Make sure that Vundle.vim is installed in ~/.vim/bundle/Vundle.vim
" To install new plugins run :PluginInstall
" https://github.com/gmarik/Vundle.vim

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()            " Starts vundle, so all plugins are ready.

" Vundle should manage itself
Plugin 'gmarik/Vundle.vim'

source ~/.vim/vundles.vim      " Source our vundle config to grab all of our installed plugins

call vundle#end()
filetype plugin indent on       " Turns on the ability to set indentation level per filetype (.php, .js, etc)
set expandtab!
set autoindent                  " Newlines start at the same indentation level

" ~~~ END VUNDLE ~~~

" ~~~ Controls ~~~
" Rebinding leader key to space
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

noremap <leader>, :noh <cr>     " Holding space and hitting comma will turn off highlighting
noremap <leader>C :ColorToggle <cr> " Holding space and hitting Shift+C will toggle color in files with color values
nnoremap <F5> :GundoToggle<CR>      " F5 will open up Gundo (gui undo)
let g:user_emmet_leader_key='<C-F>'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"
" let g:user_emmet_expandabbr_key = '<Tab>'
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" let g:user_emmet_install_global = 0
" autocmd FileType html,php,css EmmetInstall
"
set rtp+=~/.fzf " A fuzyz finder written in Go (https://github.com/junegunn/fzf)

" Using Control + Vim navigation switched between panes and splits
map <C-j> <C-W>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" ============ NERDTree =============
let NERDTreeQuitOnOpen=0             " NERDTree will stay open after opening a file.
let NERDTreeShowHidden=1             " NERDTree will show dotfiles
let g:nerdtreE_tabs_focus_on_files=1 " Support for gui NERDTree

"Hitting CMD + 1 - 7 will switch to that tab. For use in gvim.
map <silent> <D-1> :tabn 1<cr>
map <silent> <D-2> :tabn 2<cr>
map <silent> <D-3> :tabn 3<cr>
map <silent> <D-4> :tabn 4<cr>
map <silent> <D-5> :tabn 5<cr>
map <silent> <D-6> :tabn 6<cr>
map <silent> <D-7> :tabn 7<cr>


" ============ Syntax ===============
syntax on                                    " Detect syntax and style / color accordingly.
set statusline+=%#warningmsg#                " Adding errors to our status line
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1            " Show where errors are
let g:syntastic_check_on_open = 0            " Don't check when we first open a file
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers=['']           " Don't check HTML files.  It doesn't like angular, so there's a million errors

" ============ Languages ===============
filetype plugin on                           " Autodetect filetype
set formatoptions+=r                         " Hitting 'enter' after a commented line will keep commenting
set formatoptions-=o                         " Hittin o or O in normal mode won't keep commenting

" General
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>       " Bindings for running tests
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Javascript uses tab characters to indent, tabs are 4 characters wide
autocmd Filetype javascript setlocal expandtab! tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype js setlocal expandtab! tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype json setlocal expandtab! tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype typescript setlocal expandtab! tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype ts setlocal expandtab! tabstop=4 shiftwidth=4 softtabstop=4
let g:syntastic_javascript_checkers = ['eslint']

nmap <leader>j :JsDoc <CR>
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_access_descriptions=2
let g:jsdoc_underscore_private=1

" PHP
autocmd Filetype php setlocal expandtab! tabstop=4 shiftwidth=4 softtabstop=4

nnoremap <Leader>u <C-O>:call PhpInsertUse()<CR>   " Hitting LEADER u will import classes automatically
noremap <Leader>u :call PhpInsertUse()<CR>

nnoremap <Leader>e <C-O>:call PhpExpandClass()<CR> " Hitting LEADER e will expand classes automatically
noremap <Leader>e :call PhpExpandClass()<CR>

" SCSS
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype scss setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype sass setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
" HTML
autocmd Filetype html setlocal expandtab! tabstop=4 shiftwidth=4 softtabstop=4






" ~~~ Theme ~~~
" use 256 colors in terminal
if !has("gui_running")
  set t_Co=256
  " set term=screen-256color
endif

set t_ut=                                    " Fix for bg color in tmux and other terminals
let base16colorspace=256
colorscheme flatcolor                        " Set the colorscheme to 'flatcolor'
let g:flatcolor_asphaltbg=0                  " Customization for the flat colorscheme
let g:flatcolor_termcolors=16
set background=dark                          " Use dark bg.  Set to light for light colorschemes.
set number                                   " Show line numebrs
set relativenumber                           " Show relative number of lines from the current line
set foldcolumn=1                             " Show folds in the side bar
set nofoldenable                             " Folds are disabled by default
set linebreak nolist                         " line breaks happen on words, not in the middle of words
set bri                                      " Line breaks wrap better
set briopt=shift:4, sbr:↳\                   " Stylize our line breaks a little
set list lcs=trail:·,tab:¦\                  " show trailing spaces and all tab characters

fun! StripTrailingWhitespace()               " Removes trailing whitespace on file save
  " Don't strip on these filetypes
  if &ft =~ 'vim\|conf'
    " return
  endif
  %s/\s\+$//e
endfun

function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction


au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"

" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

autocmd BufWritePre * call StripTrailingWhitespace() " Call our whitespace function

source ~/.vim/lightline-config.vim                   " Add lightline
source ~/.vim/tagbar.vim                             " Tagbar configuration

