" ==============================================================================
"                           General Mappings
" ==============================================================================
let mapleader = ","

" Movement
nnoremap j gj
nnoremap k gk
nnoremap H ^
nnoremap L $

" Windows
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" Buffers
nnoremap <silent> <leader>, :bprev<CR>
nnoremap <silent> <leader>. :bnext<CR>
nnoremap <silent> <leader>b :Buffers<CR>

" Files
nnoremap <silent> <leader>p :Files<CR>
nnoremap <silent> <C-P> :Files<CR>

" Appearance
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>l :set number!<CR>
nnoremap <silent> <leader>y :Goyo<CR>

" Search - centre on goto
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
nnoremap <leader>r :%s/\<<C-r><C-w>\>/

" Commenting
nnoremap <silent> <leader>c :Commentary<CR>
vnoremap <silent> <leader>c :Commentary<CR>

" ALE
nnoremap <silent> <leader>[ :ALEPreviousWrap<CR>
nnoremap <silent> <leader>] :ALENextWrap<CR>

" Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gd :Gvdiff<CR>

" Autocomplete with tab
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Misc
nnoremap <silent> <leader>e :FZF ~/.config/nvim<CR>
nnoremap <silent> <leader>s :source $MYVIMRC<CR>

" Show highlight group
map <silent> <leader>h :echo synIDattr(synID(line("."),col("."),1),"name")<CR>

" ==============================================================================
"                           Language Specific
" ==============================================================================

let maplocalleader = "\\"

" Language Server
nmap <silent> <localleader>d <Plug>(coc-definition)
nmap <silent> <localleader>y <Plug>(coc-type-definition)
nmap <silent> <localleader>i <Plug>(coc-implementation)
nmap <silent> <localleader>f <Plug>(coc-rename)
nmap <silent> <localleader>u <Plug>(coc-references)


