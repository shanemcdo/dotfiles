" Vim filetype plugin file
" Language:	C
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2017 Sep 28

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

nnoremap <buffer> <F5> :wa<cr>:!make test<cr>
nnoremap <buffer> <s-F5> :wa<cr>:!make clean test<cr>
nnoremap <buffer> <F6> :wa<cr>:!ccrun "%"<cr>
nnoremap <buffer> <s-F6> :wa<cr>:!ccrun *.c<cr>

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" Using line continuation here.
let s:cpo_save = &cpo
set cpo-=C

let b:undo_ftplugin = "setl fo< com< ofu< | if has('vms') | setl isk< | endif"

" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal fo-=t fo+=croql

" Set completion with CTRL-X CTRL-O to autoloaded function.
if exists('&ofu')
  setlocal ofu=ccomplete#Complete
endif

" Set 'comments' to format dashed lists in comments.
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://

" In VMS C keywords contain '$' characters.
if has("vms")
  setlocal iskeyword+=$
endif

" When the matchit plugin is loaded, this makes the % command skip parens and
" braces in comments properly.
let b:match_words = '^\s*#\s*if\(\|def\|ndef\)\>:^\s*#\s*elif\>:^\s*#\s*else\>:^\s*#\s*endif\>'
let b:match_skip = 's:comment\|string\|character\|special'

" Win32 can filter files in the browse dialog
if (has("gui_win32") || has("gui_gtk")) && !exists("b:browsefilter")
  if &ft == "cpp"
    let b:browsefilter = "C++ Source Files (*.cpp *.c++)\t*.cpp;*.c++\n" .
	  \ "C Header Files (*.h)\t*.h\n" .
	  \ "C Source Files (*.c)\t*.c\n" .
	  \ "All Files (*.*)\t*.*\n"
  elseif &ft == "ch"
    let b:browsefilter = "Ch Source Files (*.ch *.chf)\t*.ch;*.chf\n" .
	  \ "C Header Files (*.h)\t*.h\n" .
	  \ "C Source Files (*.c)\t*.c\n" .
	  \ "All Files (*.*)\t*.*\n"
  else
    let b:browsefilter = "C Source Files (*.c)\t*.c\n" .
	  \ "C Header Files (*.h)\t*.h\n" .
	  \ "Ch Source Files (*.ch *.chf)\t*.ch;*.chf\n" .
	  \ "C++ Source Files (*.cpp *.c++)\t*.cpp;*.c++\n" .
	  \ "All Files (*.*)\t*.*\n"
  endif
endif

let &cpo = s:cpo_save
unlet s:cpo_save
