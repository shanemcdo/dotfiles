" Vim filetype plugin
" Language:		Text
" Maintainer:		David Barnett <daviebdawg+vim@gmail.com>
" Last Change:		2019 Jan 10

if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

setlocal spell
setlocal wrap
setlocal linebreak

let b:undo_ftplugin = 'setlocal comments< commentstring<'

" We intentionally don't set formatoptions-=t since text should wrap as text.
" I added formatoptions-=t
setlocal fo-=t
setlocal fo-=c

" Pseudo comment leaders to indent bulleted lists with '-' and '*'.  And allow
" for Mail quoted text with '>'.
setlocal comments=fb:-,fb:*,n:>
setlocal commentstring=
