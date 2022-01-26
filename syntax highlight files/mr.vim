" Vim syntax file

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
" Greek Letters
syn keyword colors alfa beta gamma delta epsilon phi teta sigma omega psi chi rho pi xi

" matches
syn match math 'some regex for math (number or \\*)'



