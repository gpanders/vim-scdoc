" scdoc filetype plugin
" Maintainer: Greg Anders <greg@gpanders.com>
" Last Updated: 2019-10-24

" Only do this when not done yet for this buffer
if exists('b:did_ftplugin')
    finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

setlocal comments=b:;
setlocal commentstring=;%s
setlocal formatoptions+=t
setlocal noexpandtab
setlocal shiftwidth=8
setlocal softtabstop=8
setlocal textwidth=80
setlocal conceallevel=2

let b:undo_ftplugin = 'setl com< cms< fo< et< sw< sts< tw< cole<'
