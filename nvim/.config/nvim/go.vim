Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go', { 'do': 'make'}

let g:go_fmt_command = 'goimports'

let g:ale_linters['go'] = ['gofmt', 'golint', 'gopls', 'govet']

augroup Go
    autocmd!

    " Switch between implementation and test files
    autocmd Filetype go nnoremap <silent> <localleader>a :GoAlternate<CR>

    autocmd Filetype go nnoremap <silent> <localleader>b :GoBuild<CR>

    autocmd Filetype go nnoremap <silent> <localleader>d :GoDef<CR>
    autocmd Filetype go nnoremap <silent> <localleader>dt :GoDefType<CR>


    autocmd Filetype go nnoremap <silent> <localleader>e :GoIfErr<CR>

    autocmd Filetype go nnoremap <silent> <localleader>i :GoInfo<CR>
    autocmd Filetype go nnoremap <silent> <localleader>k :GoKeyify<CR>

    autocmd Filetype go nnoremap <localleader>r :GoRename

    autocmd Filetype go nnoremap <silent> <localleader>o <Plug>(go-doc-split)

    autocmd Filetype go nnoremap <silent> <localleader>t :GoTest!<CR>
    autocmd Filetype go nnoremap <silent> <localleader>tf :GoTestFunc!<CR>
    autocmd Filetype go nnoremap <silent> <localleader>tc :GoCoverageToggle!<CR>

    autocmd Filetype go nnoremap <silent> <localleader>u :GoCallers<CR>
augroup End


