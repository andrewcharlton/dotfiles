Plug 'rust-lang/rust.vim'

let g:ale_linters['rust'] = ['rls']
let g:ale_fixers['rust'] = ['rustfmt']

let g:deoplete#sources#rust#racer_binary='$HOME/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='$RUST_SRC_PATH'

augroup Rust
    autocmd!

    autocmd Filetype rust nnoremap <silent> <localleader>b :Cbuild<CR>
    autocmd Filetype rust nnoremap <silent> <localleader>t :RustTest!<CR>
    autocmd Filetype rust nnoremap <silent> <localleader>T :RustTest<CR>
augroup End
