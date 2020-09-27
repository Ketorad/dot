" Vim color file

" First remove all existing highlighting.
hi clear

let colors_name = "ketoradColors"

hi Normal guifg=Black guibg=white

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi IncSearch term=reverse cterm=reverse gui=reverse
hi ModeMsg term=bold cterm=bold gui=bold
hi VertSplit term=reverse cterm=reverse gui=reverse
hi Visual term=reverse cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
hi Cursor guibg=Green guifg=NONE
hi lCursor guibg=Cyan guifg=NONE
hi Directory term=bold ctermfg=DarkBlue guifg=Blue
hi LineNr term=underline ctermfg=Grey guifg=Brown
hi CursorLineNr term=NONE ctermfg=White
hi MoreMsg term=bold ctermfg=DarkYellow gui=bold guifg=SeaGreen
hi Question term=standout ctermfg=DarkGreen gui=bold guifg=SeaGreen
hi Search term=reverse ctermbg=Yellow ctermfg=NONE guibg=Yellow guifg=NONE
hi SpecialKey term=bold ctermfg=DarkGrey guifg=Blue
hi Title term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta
hi WarningMsg term=standout ctermfg=DarkRed guifg=Red
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Folded term=standout ctermbg=Grey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi FoldColumn term=standout ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi DiffAdd term=bold ctermbg=LightBlue guibg=LightBlue
hi DiffChange term=bold ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan

hi StatusLine	cterm=bold ctermbg=Blue ctermfg=Yellow guibg=gold guifg=blue
hi StatusLineNC	cterm=bold ctermbg=Blue ctermfg=Black  guibg=gold guifg=blue
hi NonText term=bold ctermfg=Blue gui=bold guifg=gray guibg=white
hi Cursor guibg=fg guifg=bg

" syntax highlighting
hi PreProc    term=underline cterm=NONE ctermfg=DarkMagenta  gui=NONE guifg=magenta3
hi Identifier term=underline cterm=NONE ctermfg=DarkCyan     gui=NONE guifg=cyan4
hi Comment    term=NONE      cterm=NONE ctermfg=Grey      gui=NONE guifg=red2
hi Constant   term=underline cterm=NONE ctermfg=DarkYellow    gui=NONE guifg=green3
hi Special    term=bold      cterm=NONE ctermfg=Yellow     gui=NONE guifg=deeppink
hi Statement  term=bold      cterm=bold ctermfg=Blue         gui=bold guifg=blue
hi Type	      term=underline cterm=NONE ctermfg=Blue         gui=bold guifg=blue 

if exists("syntax_on")
  let syntax_cmd = "enable"
  runtime syntax/syncolor.vim
  unlet syntax_cmd
endif

" vim: sw=2
