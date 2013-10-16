function! s:get_default_filetype() "{{{
  return get(g:, 'alpaca_window_default_filetype', '')
endfunction"}}}

" smart_close"{{{
function! alpaca_window#smart_close() "{{{
  if (winnr('$') == 1) | quit | endif
endfunction "}}}

function! alpaca_window#set_smart_close() "{{{
  augroup AlpacaWindowSmartClose
    autocmd BufEnter <buffer> call alpaca_window#smart_close()
  augroup END
endfunction"}}}
"}}}

function! alpaca_window#open_buffer(command) "{{{
  let old_filetype = &filetype
  let filetype = empty(old_filetype) ? s:get_default_filetype() : old_filetype
  execute a:command
  let &filetype = filetype
endfunction"}}}
