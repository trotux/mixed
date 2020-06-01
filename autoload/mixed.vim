" -----------------------------------------------------------------------------
" File: mixed.vim
" Description: Mixed color scheme for Vim
" Author: trotux <trotux@gmail.com>
" Source: https://github.com/trotux/mixed
" Last Modified: 30 May 2020
" -----------------------------------------------------------------------------

function! mixed#invert_signs_toggle()
  if g:mixed_invert_signs == 0
    let g:mixed_invert_signs=1
  else
    let g:mixed_invert_signs=0
  endif

  colorscheme mixed
endfunction

" Search Highlighting {{{

function! mixed#hls_show()
  set hlsearch
  call mixedHlsShowCursor()
endfunction

function! mixed#hls_hide()
  set nohlsearch
  call mixedHlsHideCursor()
endfunction

function! mixed#hls_toggle()
  if &hlsearch
    call mixed#hls_hide()
  else
    call mixed#hls_show()
  endif
endfunction

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
