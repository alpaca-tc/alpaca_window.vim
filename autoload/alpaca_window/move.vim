
function! alpaca_window#move#next_window_or_tab() "{{{
  if winnr() < winnr("$")
    wincmd w
  else
    tabnext
    1wincmd w
  endif
endfunction"}}}

function! alpaca_window#move#previous_window_or_tab() "{{{
  if winnr() > 1
    wincmd W
  else

    tabprevious
    execute winnr("$") . "wincmd w"
  endif
endfunction"}}}

function! alpaca_window#move#buffer_into_last_tab() "{{{
  let n = bufnr('%')
  if ( tabpagenr("$") != 1)
    q
  endif

  tablast

  exec alpaca_window#util#get_smart_split_command('new')
  execute 'buffer ' . n
endfunction"}}}
