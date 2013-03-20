" @return [String] 'v' or ''
function! alpaca_window#util#smart_split_how()
  return ( winwidth(0) > winheight(0) * 2 )? 'v' : ''
endfunction

function! alpaca_window#util#get_smart_split_command(cmd)
  return alpaca_window#util#smart_split_how() . a:cmd
endfunction
