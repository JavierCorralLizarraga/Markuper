" Vim syntax file
" Language: Celestia Star Catalogs
" Maintainer: Kevin Lauder
" Latest Revision: 26 April 2008

if exists("b:current_syntax")
  finish
endif

" keywords
" syn keyword syntaxElementKeyword keyword1 keyword2 nextgroup=syntaxElement2
"
" matches
" syn match syntaxElementMatch 'regexp' contains=syntaxElement1 nextgroup=syntaxElement2 skipwhite

" regions
" syn region syntaxElementRegion start='x' end='y'


" keywords
syn keyword colors BLUE YELLOW RED GREEN ORANGE VIOLET
syn keyword symbols - nextgroup=math skipwhite 

" matches
syn match math 'some regex for math (number or \\*)'



