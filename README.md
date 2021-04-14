# vim-scdoc

Vim runtime files for [`scdoc`](https://git.sr.ht/~sircmpwn/scdoc).

## Configuration

By default, formatting characters for bold and underline will be concealed if
your version of Vim supports the `conceal` feature (i.e. `has('conceal')`
returns 1). If you don't want this, add the following to
`~/.vim/after/ftplugin/scdoc.vim`:

```vim
setlocal conceallevel=0
```
