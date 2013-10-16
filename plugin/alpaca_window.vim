"=============================================================================
" FILE: alpaca_window.vim
" AUTHOR: Ishii Hiroyuki <alprhcp666@gmail.com>
" Last Modified: 2013-10-16
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
"=============================================================================
if exists('g:loaded_alpaca_window')
  finish
endif
let g:loaded_alpaca_window = 1

let s:save_cpo = &cpo
set cpo&vim

let g:alpaca_window_use_default_mappings = get(g:, 'alpaca_window_use_default_mappings', 1)
let g:alpaca_window_default_filetype = get(g:, 'alpaca_window_default_filetype', '')

nnoremap <silent> <Plug>(alpaca_window_new)
      \ :call alpaca_window#open_buffer('new')<CR>
nnoremap <silent> <Plug>(alpaca_window_smart_new)
      \ :call alpaca_window#open_buffer(alpaca_window#util#get_smart_split_command('new'))<CR>
nnoremap <silent> <Plug>(alpaca_window_tabnew)
      \ :call alpaca_window#open_buffer('tabnew')<CR>

nnoremap <silent> <Plug>(alpaca_window_move_next_window_or_tab)
      \ :call alpaca_window#move#next_window_or_tab()<CR>
nnoremap <silent> <Plug>(alpaca_window_move_previous_window_or_tab)
      \ :call alpaca_window#move#previous_window_or_tab()<CR>
nnoremap <silent> <Plug>(alpaca_window_move_buffer_into_last_tab)
      \ :call alpaca_window#move#buffer_into_last_tab()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
