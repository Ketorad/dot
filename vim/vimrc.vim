syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number relativenumber
set scrolloff=10

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_preview = 1

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :Lexplore<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>pf :e #<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
