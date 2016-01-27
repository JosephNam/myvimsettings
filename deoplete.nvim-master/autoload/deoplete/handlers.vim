"=============================================================================
" FILE: handlers.vim
" AUTHOR: Shougo Matsushita <Shougo.Matsu at gmail.com>
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

function! deoplete#handlers#_init() abort "{{{
  augroup deoplete
    autocmd InsertLeave * call s:on_insert_leave()
  augroup END

  for event in ['TextChangedI', 'InsertEnter']
    execute 'autocmd deoplete' event '*'
          \ 'call s:completion_begin("' . event . '")'
  endfor
endfunction"}}}

function! s:completion_begin(event) abort "{{{
  call rpcnotify(g:deoplete#_channel_id, 'completion_begin',
          \  deoplete#init#_context(a:event, []))
endfunction"}}}

function! s:on_insert_leave() abort "{{{
  let g:deoplete#_context = {}
endfunction"}}}

" vim: foldmethod=marker