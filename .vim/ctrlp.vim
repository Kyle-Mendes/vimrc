" let g:ctrlp_user_command = 'find %s -type f'
" let g:ctrlp_user_command = 'ack -f | ack %s'

let g:ctrlp_workin_path_mode = 'ra'
let g:ctrlp_root_markers = ['pakage.json']

" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules     " Ignore tmp, so, swp and zip files when searching
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
