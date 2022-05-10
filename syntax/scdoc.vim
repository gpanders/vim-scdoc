" Syntax file for scdoc files
" Maintainer: Gregory Anders <contact@gpanders.com>
" Last Updated: 2022-05-09

if exists('b:current_syntax')
    finish
endif
let b:current_syntax = 'scdoc'

syntax match scdocFirstLineError "\%^.*$"
syntax match scdocFirstLineValid "\%^\S\+(\d[0-9A-Za-z]*)\%(\s\+\"[^"]*\"\%(\s\+\"[^"]*\"\)\=\)\=$"

syntax region scdocCommentError start="^;\S" end="$" keepend
syntax region scdocComment start="^; " end="$" keepend

syntax region scdocHeaderError start="^#\{3,}" end="$" keepend
syntax region scdocHeader start="^#\{1,2}" end="$" keepend

syntax match scdocIndentError "^[ ]\+"

syntax match scdocLineBreak "++$"

syntax region scdocOrderedListItem matchgroup=scdocOrderedListMarker start="^\z(\s*\)\." skip="^\z1  .*$" end="^" contains=ALLBUT,scdocIndentError
syntax region scdocListItem matchgroup=scdocListMarker start="^\z(\s*\)-" skip="^\z1  .*$" end="^" contains=ALLBUT,scdocIndentError

syntax match scdocTableStartMarker "^[\[|\]][\[\-\]]"
syntax match scdocTableMarker "^[|:][\[\-\] ]"

syntax region scdocBold concealends matchgroup=scdocBoldDelimiter start="\\\@<!\*" end="\\\@<!\*"
syntax region scdocUnderline concealends matchgroup=scdocUnderlineDelimiter start="\<\\\@<!_" end="\\\@<!_\>"
syntax region scdocPre matchgroup=scdocPreDelimiter start="^\t*```" end="^\t*```"

hi link scdocFirstLineValid     Comment
hi link scdocComment            Comment
hi link scdocHeader             Title
hi link scdocOrderedListMarker  Statement
hi link scdocListMarker         scdocOrderedListMarker
hi link scdocLineBreak          Special
hi link scdocTableMarker        Statement
hi link scdocTableStartMarker   scdocTableMarker

hi link scdocFirstLineError     Error
hi link scdocCommentError       Error
hi link scdocHeaderError        Error
hi link scdocIndentError        Error

hi link scdocPreDelimiter       Delimiter

hi scdocBold term=bold cterm=bold gui=bold
hi scdocUnderline term=underline cterm=underline gui=underline
hi link scdocBoldDelimiter scdocBold
hi link scdocUnderlineDelimiter scdocUnderline
