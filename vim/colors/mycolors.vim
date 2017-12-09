hi clear

let g:colors_name = "mycolors"

hi Normal 			ctermfg=NONE 			ctermbg=NONE
hi Cursor 			ctermfg=NONE 			ctermbg=White
hi lCursor 			ctermfg=NONE 			ctermbg=Cyan

hi CursorLine 		ctermfg=NONE 			ctermbg=NONE 				cterm=NONE
hi CursorColumn 	ctermfg=White
hi LineNr 			ctermfg=Grey
hi CursorLineNr 	ctermfg=White

hi TabLine 			ctermfg=Black 			ctermbg=Grey
hi TabLineFill 	ctermfg=Grey			ctermbg=Grey
hi TabLineSel 		ctermfg=White 			ctermbg=Black

hi ErrorMsg 		ctermfg=White 			ctermbg=DarkRed
hi SpecialKey 		ctermfg=DarkGrey
hi EndOfBuffer 	ctermfg=Black 			ctermbg=NONE

syntax enable

" syntax highlighting
hi Comment 			ctermfg=DarkGrey

hi Constant 		ctermfg=Yellow
	hi String 			ctermfg=DarkRed
	hi Character 		ctermfg=DarkRed
"	hi Number 			ctermfg=NONE
"	hi Boolean			ctermfg=NONE
"	hi Float 			ctermfg=NONE
hi Identifier 		ctermfg=DarkCyan
	hi Function 		ctermfg=DarkCyan
hi Statement 		ctermfg=Blue
"	hi Conditional 	ctermfg=NONE
"	hi Repeat 			ctermfg=NONE
"	hi Label 			ctermfg=NONE
"	hi Operator 		ctermfg=NONE
"	hi Keyword 			ctermfg=NONE
"	hi Exception 		ctermfg=NONE
hi PreProc 			ctermfg=DarkGreen
"	hi Include 			ctermfg=NONE
"	hi Define 			ctermfg=NONE
"	hi Macro 			ctermfg=NONE
"	hi PreCondit 		ctermfg=NONE
hi Type 				ctermfg=Green
	hi StorageClass 	ctermfg=DarkMagenta
	hi Structure 		ctermfg=Brown
	hi Typedef 			ctermfg=Brown
hi Special 			ctermfg=DarkMagenta
"	hi SpecialChar 	ctermfg=NONE
"	hi Tag 				ctermfg=NONE
"	hi Delimiter 		ctermfg=NONE
"	hi SpecialComment ctermfg=NONE
"	hi Debug 			ctermfg=NONE
"hi Underlined 		ctermfg=NONE
"hi Ignore 			ctermfg=NONE
hi Error 			ctermfg=White 		ctermbg=Red
hi Todo 				ctermfg=Cyan
