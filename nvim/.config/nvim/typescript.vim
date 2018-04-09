Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript'

let g:ale_linters['typescript'] = ['tslint', 'prettier', 'tsserver']
let g:ale_fixers['typescript'] = ['tslint', 'prettier']

let g:ale_pattern_options['node_modules'] = { 'ale_enabled': 0 }

let g:LanguageClient_serverCommands['typescript'] = ['typescript-language-server', '--stdio']

" Run jest for current file. Assumes test file will be named *.test.ts*
function! Jest()
    if expand("%")=~#"test.ts*"
        :split | terminal yarn test "%"
    elseif expand("%")=~#".ts*"
        let filename = substitute(expand("%"), "\.ts", ".test.ts", "")
        exec ":split | terminal yarn test \"".filename."\""
    endif
endfunction

augroup typescript
    autocmd!
    autocmd BufNewFile *.tsx  0r ~/.config/nvim/templates/skeleton.tsx
    autocmd BufNewFile *.test.tsx 0r ~/.config/nvim/templates/skeleton.test.tsx
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript

    autocmd Filetype typescript nnoremap <silent> <localleader>t :<C-U>call Jest()<CR>
augroup END



