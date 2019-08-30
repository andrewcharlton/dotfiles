call plug#begin('$HOME/.local/share/nvim/plugged')

" Appearance
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'rbgrouleff/bclose.vim'

" Search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Autocomplete
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Linting
Plug 'w0rp/ale'

" Language Server

" Variables that need to be initialised before sourcing language files
let g:ale_linters = {}
let g:ale_fixers = {}
let g:ale_pattern_options = {}
let g:LanguageClient_serverCommands = {}

" Language Specific
source $XDG_CONFIG_HOME/nvim/go.vim
source $XDG_CONFIG_HOME/nvim/html.vim
source $XDG_CONFIG_HOME/nvim/json.vim
source $XDG_CONFIG_HOME/nvim/python.vim
source $XDG_CONFIG_HOME/nvim/rust.vim
source $XDG_CONFIG_HOME/nvim/typescript.vim
source $XDG_CONFIG_HOME/nvim/yaml.vim

call plug#end()

source $XDG_CONFIG_HOME/nvim/settings.vim
source $XDG_CONFIG_HOME/nvim/commands.vim
source $XDG_CONFIG_HOME/nvim/mappings.vim

" Terminal
augroup terminal
    autocmd!
    autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
augroup end

" Nord
let g:nord_comment_brightness=1

" Airline
let g:airline_theme='nord'
let g:airline_left_sep=''
let g:airline_right_sep=''
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_extensions = ['branch']
let g:airline_section_b = ''
let g:airline_section_x = ''
let g:airline_section_y = airline#section#create(['branch'])
let g:airline_section_z = airline#section#create(['tagbar', 'filetype'])

" Ranger
let g:ranger_replace_netrw = 1

" Nerdtree
let g:NERDTreeHighlightCursorLine=0
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1

" Fzf
let g:fzf_layout = { 'down': '10' }
augroup fzf
    " Hides additional terminal line
    autocmd!
    autocmd  FileType fzf set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2
augroup end
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'Normal'],
  \ 'bg+':     ['bg', 'Normal'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Normal'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Autocompletion

" Snippets
let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }

" Git
let g:gitgutter_map_keys = 0
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

" Ale
let g:ale_fix_on_save = 1
let g:ale_list_window_size=5
let g:ale_sign_info = 'ℹ'
let g:ale_sign_warning = '⚠'
let g:ale_sign_error = '✖'
let g:ale_sign_style_warning = '⚠'
let g:ale_sign_style_error = '✖'
let g:ale_set_quickfix = 1

" Goyo
let g:goyo_width = 120

