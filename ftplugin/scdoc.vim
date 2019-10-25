" scdoc filetype plugin
" Maintainer: Greg Anders <greg@gpanders.com>
" Last Updated: 2019-10-24

setlocal comments=b:;
setlocal commentstring=;%s
setlocal formatoptions+=t
setlocal noexpandtab
setlocal shiftwidth=8
setlocal softtabstop=8
setlocal textwidth=80

compiler scdoc

let b:undo_ftplugin = 'setl com< cms< fo< et< sw< sts< tw<'
