Plug 'zchee/deoplete-jedi'

let g:ale_linters['python'] = ['flake8', 'pylint', 'pycodestyle']
let g:ale_fixers['python'] = ['autopep8']
let g:ale_python_pylint_change_directory = 0

let g:LanguageClient_serverCommands['python'] = ['pyls']
