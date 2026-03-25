source $HOME/.vimrc_common

" OSC 52 package.
" :h osc52-install
" :h package-osc52
" :h osc52.txt
packadd osc52
set clipmethod+=osc52
let g:osc52_force_avail = v:true

" Highlight trailing whitespace.
"   \v            verymagic
"   (^|\S@<=)\s+  match whitespace extending back to the start of line or
"                 preceding non-whitespace
"   %#@1<!$       match to the end-of-line, but don't match if the cursor is
"                 at the end of the line.  Only look back 1 byte from the
"                 end-of-line (see :help /\@<!), rather than trying to match
"                 the cursor position everywhere on the line and rechecking
"                 for a match.
highlight def link TrailingWhitespace Todo
augroup trailing_whitespace
  autocmd!
  autocmd BufEnter,WinEnter * call matchadd('TrailingWhitespace', '\v(^|\S@<=)\s+%#@1<!$')
augroup END
