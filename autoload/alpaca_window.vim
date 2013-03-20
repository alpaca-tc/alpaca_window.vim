function! s:get_default_filetype() "{{{
  if exists('g:alpaca_window_default_filetype')
    return g:alpaca_window_default_filetype
  endif
endfunction"}}}

" smart_close"{{{
function! alpaca_window#smart_close() "{{{
  if winnr('$') != 1 |close| endif
endfunction "}}}

function! alpaca_window#set_smart_close() "{{{
  autocmd BufEnter <buffer> call alpaca_window#smart_close()
endfunction"}}}
"}}}

" 新しいバッファを開くときに、g:alpaca_window_default_filetypeか同じファイルタイプで開く
" 正味、global変数使って、BufEnterで実装した方が圧倒的にコード少ない..。
function! alpaca_window#open_buffer(command) "{{{
  let old_ft = &ft

  " set filetype
  let buffer_filetype = empty(old_ft)? s:get_default_filetype() : old_ft

  execute a:command
  let &ft=buffer_filetype
endfunction"}}}
