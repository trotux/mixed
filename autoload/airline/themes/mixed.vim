" -----------------------------------------------------------------------------
" File: mixed.vim
" Description: Mixed color scheme for Airline
" Author: trotux <trotux@gmail.com>
" Source: https://github.com/trotux/mixed
" Last Modified: 30 May 2020
" -----------------------------------------------------------------------------

let g:airline#themes#mixed#palette = {}

function! airline#themes#mixed1#refresh()

  let M0 = airline#themes#get_highlight('Identifier')
  let accents_group = airline#themes#get_highlight('Special')
  let modified_group = [M0[0], '', M0[2], '', '']
  let warning_group = airline#themes#get_highlight2(['Normal', 'bg'], ['Question', 'fg'])
  let error_group = airline#themes#get_highlight2(['Normal', 'bg'], ['WarningMsg', 'fg'])

"  let s:N1 = airline#themes#get_highlight2(['Normal', 'bg'], ['MixedNormalGreen', 'fg'])
"  let s:N2 = airline#themes#get_highlight2(['StatusLineNC', 'bg'], ['Pmenu', 'bg'])
"  let s:N3 = airline#themes#get_highlight2(['StatusLineNC', 'bg'], ['CursorLine', 'bg'])
  let s:N1 = [ '#141413' , '#aeee00' , 232 , 154 ] " blackestgravel & lime
  let s:N2 = [ '#f4cf86' , '#45413b' , 222 , 238 ] " dirtyblonde    & deepgravel
  let s:N3 = [ '#8cffba' , '#242321' , 121 , 235 ] " saltwatertaffy & darkgravel
  let s:N4 = [ '#666462' , 241 ]                   " mediumgravel

  let g:airline#themes#mixed#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#mixed#palette.normal_modified = { 'airline_c': modified_group }
  let g:airline#themes#mixed#palette.normal.airline_warning = warning_group
  let g:airline#themes#mixed#palette.normal_modified.airline_warning = warning_group
  let g:airline#themes#mixed#palette.normal.airline_error = error_group
  let g:airline#themes#mixed#palette.normal_modified.airline_error = error_group



  "let s:I1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Identifier', 'fg'])
  "let s:I2 = s:N2
  "let s:I3 = airline#themes#get_highlight2(['Normal', 'fg'], ['Pmenu', 'bg'])
  let s:I1 = [ '#141413' , '#0a9dff' , 232 , 39  ] " blackestgravel & tardis
  let s:I2 = [ '#f4cf86' , '#005fff' , 222 , 27  ] " dirtyblonde    & facebook
  let s:I3 = [ '#0a9dff' , '#242321' , 39  , 235 ] " tardis         & darkgravel
  let g:airline#themes#mixed#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#mixed#palette.insert_modified = g:airline#themes#mixed#palette.normal_modified
  let g:airline#themes#mixed#palette.insert.airline_warning = g:airline#themes#mixed#palette.normal.airline_warning
  let g:airline#themes#mixed#palette.insert_modified.airline_warning = g:airline#themes#mixed#palette.normal_modified.airline_warning
  let g:airline#themes#mixed#palette.insert.airline_error = g:airline#themes#mixed#palette.normal.airline_error
  let g:airline#themes#mixed#palette.insert_modified.airline_error = g:airline#themes#mixed#palette.normal_modified.airline_error

  let s:R1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Structure', 'fg'])
  let s:R2 = s:I2
  let s:R3 = s:I3
  let g:airline#themes#mixed#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#mixed#palette.replace_modified = g:airline#themes#mixed#palette.normal_modified
  let g:airline#themes#mixed#palette.replace.airline_warning = g:airline#themes#mixed#palette.normal.airline_warning
  let g:airline#themes#mixed#palette.replace_modified.airline_warning = g:airline#themes#mixed#palette.normal_modified.airline_warning
  let g:airline#themes#mixed#palette.replace.airline_error = g:airline#themes#mixed#palette.normal.airline_error
  let g:airline#themes#mixed#palette.replace_modified.airline_error = g:airline#themes#mixed#palette.normal_modified.airline_error

  "let s:V1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Question', 'fg'])
  "let s:V2 = s:N2
  "let s:V3 = airline#themes#get_highlight2(['Normal', 'bg'], ['TabLine', 'fg'])
  let s:V1 = [ '#141413' , '#ffa724' , 232 , 214 ] " blackestgravel & orange
  let s:V2 = [ '#000000' , '#fade3e' , 16  , 221 ] " coal           & dalespale
  let s:V3 = [ '#000000' , '#b88853' , 16  , 137 ] " coal           & toffee
  let s:V4 = [ '#c7915b' , 173 ]                   " coffee
  let g:airline#themes#mixed#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#mixed#palette.visual_modified = { 'airline_c': [ s:V3[0], '', s:V3[2], '', '' ] }
  let g:airline#themes#mixed#palette.visual.airline_warning = g:airline#themes#mixed#palette.normal.airline_warning
  let g:airline#themes#mixed#palette.visual_modified.airline_warning = g:airline#themes#mixed#palette.normal_modified.airline_warning
  let g:airline#themes#mixed#palette.visual.airline_error = g:airline#themes#mixed#palette.normal.airline_error
  let g:airline#themes#mixed#palette.visual_modified.airline_error = g:airline#themes#mixed#palette.normal_modified.airline_error

"  let s:IA = airline#themes#get_highlight2(['TabLine', 'fg'], ['CursorLine', 'bg'])
  let s:IA = [ s:N3[1] , s:N2[1] , s:N3[3] , s:N2[3] , '' ]
  let g:airline#themes#mixed#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#mixed#palette.inactive_modified = { 'airline_c': modified_group }

  let g:airline#themes#mixed#palette.accents = { 'red': accents_group }

  let s:TF = airline#themes#get_highlight2(['Normal', 'bg'], ['Normal', 'bg'])
  let g:airline#themes#mixed#palette.tabline = {
    \ 'airline_tab':  s:N2,
    \ 'airline_tabsel':  s:N1,
    \ 'airline_tabtype':  s:V1,
    \ 'airline_tabfill':  s:TF,
    \ 'airline_tabhid':  s:IA,
    \ 'airline_tabmod':  s:I1
    \ }

endfunction

call airline#themes#mixed#refresh()

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
