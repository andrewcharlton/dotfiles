" Search
set ignorecase
set smartcase
set incsearch
set inccommand=nosplit
set nohlsearch
set wrapscan
set gdefault    " Replace all occurences on line by default

" Editing
set autoindent
set smartindent
set nojoinspaces

" Disable modeline
set modelines=0
set nomodeline

" Display another buffer when current buffer isn't saved.
set autowrite
set hidden

" Folding
set foldlevelstart=10
set foldmethod=indent
set foldnestmax=10

" Window options
set splitright
set splitbelow

" Swap / Backup dir
set nowritebackup
set nobackup
set noswapfile

" Default options
set backspace=indent,eol,start
set clipboard=unnamedplus
set confirm
set scrolloff=50

" Appearance
set background=dark
colorscheme nord
set termguicolors
set noshowmode
set nonumber
set signcolumn=yes

" Conceal
set conceallevel=2
set concealcursor="nic"

" Wrapping
set wrap
set lbr
let &showbreak = '» '
