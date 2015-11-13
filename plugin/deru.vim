"
" Name:        keymap selection file
" Maintainer:  Igor Lyubimov <mr_july@mail.ru>
" Version:     1.0
" Last Change: 2015-09-29T12:00:00-0500.
"
" Notes:
" the groff vim script from Alejandro López-Valencia <dradul@yahoo.com>
" was used as an example. See https://github.com/vim-scripts/groff-keymap
"
"

" allow user to prevent loading
" and prevent duplicate loading
if exists("loaded_deru") || &cp
  finish
endif
let loaded_deru = 1

scriptencoding = latin1

function ToggleKeyMap()
  if &keymap=~?"deru"
    exe "set keymap= | echo \"none\""
  else
    exe "set keymap=deru | echo \"deru\""
  endif
endfunction

inoremap <F9> <c-o>:call ToggleKeyMap()<cr>
noremap <F9> :call ToggleKeyMap()<cr>

"source <sfile>:p:h/deru_utf-8.vim
