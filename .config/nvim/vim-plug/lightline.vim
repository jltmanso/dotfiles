let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ],
      \             [ 'gutentags' ]
      \           ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'gutentags': 'gutentags#statusline'
      \ },
      \ }

augroup MyGutentagsStatusLineRefresher
            autocmd!
            autocmd User GutentagsUpdating call lightline#update()
            autocmd User GutentagsUpdated call lightline#update()
augroup END

