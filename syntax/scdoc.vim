" Syntax file for scdoc files
" Maintainer: Greg Anders <greg@gpanders.com>
" Last Updated: 2019-10-24

if exists('b:current_syntax')
    finish
endif
let b:current_syntax = 'scdoc'

syntax match scdocFirstLineError "\%^.*$"
syntax match scdocFirstLineValid "\%^\w\+(\d\+)\%(\s\+\"[^"]*\"\%(\s\+\"[^"]*\"\)\=\)\=$"
syntax region scdocHeader start="^#\+" end="$" keepend
syntax match scdocBold "\*[^*]*\*"
syntax match scdocItalic "\<_.\{-}_\>"
syntax match scdocComment "^; .*$"
syntax match scdocCommentError "^;\S.*$"
syntax match scdocListMarker "^\s*-\%(\s\+\S\)\@="
syntax match scdocOrderedListMarker "^\s*\.\%(\s\+\S\)\@="
syntax match scdocIndentError "^[ ]\+"

hi link scdocFirstLineError Error
hi link scdocFirstLineValid Comment
hi link scdocComment Comment
hi link scdocCommentError Error
hi link scdocHeader Title
hi link scdocListMarker scdocOrderedListMarker
hi link scdocOrderedListMarker Statement
hi link scdocIndentError Error

hi scdocBold term=bold cterm=bold gui=bold
hi scdocItalic term=italic cterm=italic gui=italic
