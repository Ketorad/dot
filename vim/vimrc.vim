set backspace=2		" Backspace deletes like most programs in insert mode
set nocompatible	" Use Vim settings, rather than Vi settings
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch 		" do incremental searching
set hlsearch		" highlight matches
set autowrite		" automaticly :write before running commands
set noswapfile
set cursorline

" Switch syntax highlighting on, when the terminal has colors
if(&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
	syntax on
endif

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78

" Autoindent
filetype plugin indent on

" Softtabs, 2 spaces
set tabstop=3
set shiftwidth=3
"set expandtab
"set autoindent

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Highlight line number of where cursor currently is
"hi CursorLineNr guifg=#050505

" Numbers
set number
set numberwidth=4

" Open new split panes to right and bottom, wich feels more natural
set splitbelow
set splitright

" YouCompleteMe
" Prevent preview window for autocomplete function to show
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_key_invoke_completion = '<C-Space>'
"let g:ycm_autoclose_preview_window_after_completion = '1'
filetype on

set completeopt-=preview
let g:ycm_add_preview_to_completeopt = '1'
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

highlight YcmErrorSection ctermbg=Red guibg=#ff0000

" Key mapping
map <F2> :NERDTree<CR>
map t :tabn<CR>
map T :tabp<CR>

nnoremap Q <nop>		" prevent ex mode
"nnoremap K <nop>		" prevent man pages for words under cursor
nnoremap J <C-d>
nnoremap K <C-u>

" Split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

inoremap {<CR> {<CR>}<C-O>k<C-O>A<cr>
inoremap {; {<CR>};<C-O>k<C-O>A<cr>

colo mycolors
