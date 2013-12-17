" @return [String] 'v' or ''
function! alpaca_window#util#smart_split_how() "{{{
  let s:proportion = exists('g:alpaca_window_max_height') && exists('g:alpaca_window_max_width')
        \ ? str2float(g:alpaca_window_max_height) / str2float(g:alpaca_window_max_width) : 0.5

  return (winwidth(0) * s:proportion > winheight(0)) ? 'v' : ''
endfunction"}}}

function! alpaca_window#util#get_smart_split_command(cmd) "{{{
  return alpaca_window#util#smart_split_how() . a:cmd
endfunction"}}}

function! alpaca_window#util#fold_buffer(when_focusing) "{{{
  if a:when_focusing
    execute 'silent resize' get(b:, '__buffer_winheight', 15)
    execute 'silent vertical resize' get(b:, '__buffer_winwidth', &columns)
    if exists('b:__buffer_winheight')
      unlet b:__buffer_winheight
      unlet b:__buffer_winwidth
    endif
  else
    if !exists('b:__buffer_winheight')
      let b:__buffer_winheight = winheight(winnr())
      let b:__buffer_winwidth = winwidth(winnr())
    endif
    silent resize 1
  endif
endfunction"}}}

function! alpaca_window#util#fold_buffer_automatically() "{{{
  autocmd WinLeave <buffer> silent call alpaca_window#util#fold_buffer(0)
  autocmd WinEnter <buffer> silent call alpaca_window#util#fold_buffer(1)
endfunction"}}}

function! s:get_script_variables() "{{{
  return s:
endfunction"}}}
