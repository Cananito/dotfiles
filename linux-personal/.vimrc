" man page plugin.
runtime! ftplugin/man.vim

source $HOME/.vimrc_common

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

" notebooks settings.
augroup notebooks_max_line_length
  autocmd!
  autocmd BufRead,BufNewFile */notebooks/*.txt setlocal textwidth=80
augroup END

" Command to pull notebooks changes.
function! s:pullnotebooks()
  let result = system('cd ~/repos/notebooks && git pull')
  if expand('%:p') != ''
    e %
  endif
  echom 'Pulled latest notebooks changes.'
endfunction
command! -bang PullNotebooks :call <SID>pullnotebooks()

" Command to commit and push notebooks changes.
function! s:pushnotebooks()
  let message_id = reltimestr(reltime())
  let result = system('cd ~/repos/notebooks && git add . && git commit -m "' . message_id . '" && git push')
  echom 'Pushed latest notebooks changes.'
endfunction
command! -bang PushNotebooks :call <SID>pushnotebooks()
