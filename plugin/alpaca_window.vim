"{{{
if exists('g:alpaca_window_loaded')
  finish
endif
let g:alpaca_window_loaded = 1


let s:save_cpo = &cpo
set cpo&vim
"}}}

" XXX いらんくね
if !exists('g:alpaca_window_default_mappings') "{{{
  let g:alpaca_window_default_mappings = 1
endif"}}}

if !exists('g:alpaca_window_default_filetype')
  let g:alpaca_window_default_filetype = ''
endif

" 新しいbufferを生成
nnoremap <silent> <Plug>(alpaca_window_new)
      \ :call alpaca_window#open_buffer('new')<CR>
nnoremap <silent> <Plug>(alpaca_window_smart_new)
      \ :call alpaca_window#open_buffer(alpaca_window#util#get_smart_split_command('new'))<CR>
nnoremap <silent> <Plug>(alpaca_window_tabnew)
      \ :call alpaca_window#open_buffer('tabnew')<CR>

" windowの移動
nnoremap <silent> <Plug>(alpaca_window_move_next_window_or_tab)
      \ :call alpaca_window#move#next_window_or_tab()<CR>
nnoremap <silent> <Plug>(alpaca_window_move_previous_window_or_tab)
      \ :call alpaca_window#move#previous_window_or_tab()<CR>
nnoremap <silent> <Plug>(alpaca_window_move_buffer_into_last_tab)
      \ :call alpaca_window#move#buffer_into_last_tab()<CR>

"{{{
let &cpo = s:save_cpo
unlet s:save_cpo
"}}}
