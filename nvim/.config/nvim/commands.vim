" Abbreviations
cabbrev h vert help

command! W w
command! Wq wq
command! WQ wq
command! Q q

" Close buffer without closing split
command! Bd bp\|bd \#

" Search with ripgrep
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

