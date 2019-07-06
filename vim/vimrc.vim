"colorscheme 0x7A69_dark
"colorscheme space-vim-dark
"colorscheme molokai
"colorscheme adventurous
"colorscheme MountainDew
colorscheme ketoradColors
"colorscheme random

set backspace=2		" Backspace deletes like most programs in insert mode
set nocompatible	" Use Vim settings, rather than Vi settings
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch 		" do incremental searching
set hlsearch		" highlight matches
set autowrite		" automaticly :write before running commands
set noswapfile
set nocursorline

" Switch syntax highlighting on, when the terminal has colors
if(&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
	syntax on
endif

" Set background outside range to get transparency.
hi Normal ctermbg=NONE

" For all text files set 'textwidth' to X(78) characters.
autocmd FileType text setlocal textwidth=110

" Autoindent
"filetype plugin indent on
filetype plugin on

" Tabs
set noexpandtab
set shiftround
set smartindent
set autoindent

set tabstop=3
set shiftwidth=3

" Display extra whitespace
"set list listchars=tab:»·,trail:·
set list listchars=tab:»·,trail:·

" Highlight line number of where cursor currently is
"hi CursorLineNr guifg=#050505

" Numbers
set number relativenumber
"set number
set numberwidth=4

" Open new split panes to right and bottom, wich feels more natural
set splitbelow
set splitright

" Key mapping
map <F2> :NERDTree<CR>
map <F6> :setlocal spell! spelllang=en<CR>
map t :tabn<CR>
map T :tabp<CR>
inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

nnoremap Q <nop>		" prevent ex mode
"nnoremap K <nop>		" prevent man pages for words under cursor
nnoremap J <C-d>zz
nnoremap K <C-u>zz

" Normal navigation
nnoremap j jzz
nnoremap k kzz

" Split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Clear search
nnoremap /<CR> :let @/=""<cr>

" Autocomplete curly brackets
inoremap {<CR> {<CR>}<C-O>k<C-O>A<cr>
inoremap {; {<CR>};<C-O>k<C-O>A<cr>

" Copy and Paste
vnoremap <C-c> "*y :let @+=@*<CR>
"map <C-v> "+P

" HTML filetype mappings
autocmd FileType html,php call SetHtmlOptions()
function SetHtmlOptions()
	nnoremap <F3> ggO<!DOCTYPE html><CR><html lang="<++>"><CR><Tab><head><CR><Tab><meta charset="UTF-8"><CR><meta name="description" content="<++>"><CR><meta name="viewport" content="width=device-width, initial-scale=1.0"><CR><meta http-equiv="X-UA-Compatible" content="ie=edge"><CR><!--<link rel="stylesheet" type="text/css" href="">--><CR><!--<script type="text/javascript" src=""></script>--><CR><title><++></title><CR><BS></head><CR><body><CR></body><CR><BS></html><Esc>gg0
	inoremap ;i <em></em><Space><++><Esc>FeT>i
	inoremap ;b <b></b><Space><++><Esc>FbT>i
	inoremap ;p <p></p><Space><++><Esc>FpT>i
endfunction
set autoindent
