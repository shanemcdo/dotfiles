" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "lord"
hi Normal	ctermfg=cyan guifg=cyan			guibg=black
hi Comment	term=bold		ctermfg=DarkCyan		guifg=#80a0ff
hi Constant	term=underline	ctermfg=Magenta		guifg=Magenta
hi Special	term=bold		ctermfg=DarkMagenta	guifg=Red
hi Identifier term=underline	cterm=bold			ctermfg=Cyan guifg=#40ffff
hi Statement term=bold		ctermfg=LightRed gui=bold	guifg=#aa4444
hi PreProc	term=underline	ctermfg=lightmagenta	guifg=#ff80ff
hi Type	term=underline		ctermfg=blue	guifg=blue gui=bold
hi Function	term=bold		ctermfg=LightGreen guifg=#60ff60
hi Repeat	term=underline	ctermfg=White		guifg=white
hi Operator				ctermfg=Blue			guifg=Blue
hi Ignore				ctermfg=black		guifg=bg
hi Error	term=reverse ctermbg=Red ctermfg=White guibg=Red guifg=White
hi Todo	term=standout ctermbg=Yellow ctermfg=Black guifg=Black guibg=Yellow
hi Folded guifg=cyan guibg=#454545
hi PmenuSel guifg=Black

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special

" indent guides plugin
hi IndentGuidesOdd ctermbg=darkgrey guibg=#606060
hi IndentGuidesEven ctermbg=lightgrey guibg=white
