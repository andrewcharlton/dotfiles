Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go', { 'do': 'make'}

let g:go_fmt_command = 'goimports'

let g:ale_linters['go'] = ['gofmt', 'gometalinter']
let g:ale_go_gometalinter_options = '--fast'

let g:LanguageClient_serverCommands['go'] = ['go-langserver']

augroup Go
    autocmd!
    autocmd Filetype go nnoremap <silent> <localleader>b :GoBuild<CR>
    autocmd Filetype go nnoremap <silent> <localleader>i :GoInstall<CR>

    autocmd Filetype go nnoremap <silent> <localleader>t :GoTest!<CR>
    autocmd Filetype go nnoremap <silent> <localleader>T :GoTestFunc!<CR>
    autocmd Filetype go nnoremap <silent> <localleader>c :GoCoverageToggle!<CR>
    autocmd Filetype go nnoremap <silent> <localleader>C :GoCoverageBrowser!<CR>

    " Override language server rename
    autocmd Filetype go nnoremap <localleader>r :GoRename
augroup End


