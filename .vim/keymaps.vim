let mapleader = ','
imap jj <esc>

nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

nmap <C-\> :vsp<cr>

"============ PLUGIN SECTIONS =============="

" - FZF Plugin -----------------------
fun! FzfOmniFiles()
    let is_git = system('git status')
    if v:shell_error
	:Files
    else
	:GitGiles --exclude-standard --other
    endif
endfun

nnoremap <C-p> :call FzfOmniFiles()<cr>

" - NERDTree Plugin ------------------
map <C-K><C-B> :NERDTreeToggle<cr>
