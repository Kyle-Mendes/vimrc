" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l -g ""'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Ignore tmp, so, swp and zip files when searching
