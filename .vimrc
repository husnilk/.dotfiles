set nocompatible
set backspace=indent,eol,start  		"Backspace seperti di editor lainnya.

so ~/.vim/plugins.vim 
so ~/.vim/keymaps.vim

" ----- Appearance -------------- "
syntax enable
colorscheme atom-dark-256
set t_CO=256

set guifont=Fira_Code:h17
set number
set linespace=12

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guioptions-=e

if has('gui_macvim')
	macmenu &File.Print key=<nop>
	set macligatures
endif

" ----- Split Management -------- "
set splitbelow
set splitright

" ----- Search Configuration ---- "
set hlsearch
set incsearch

" ----- Vim-Airline ------------- "
let g:airline#extension#tabline#enabled = 1
let g:airline#extension#tabline#formatter = 'unique_tail_improved'

" ----- NERDTree ---------------- "
let NERDTreeHijackNetrw = 0

"---- Auto Commands ---- "
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END 
