set nu
set ai
if version >= 700
	map <F5> :tabnew<CR>
	map <F6> :tabclose<CR>
	map <C-P> gT
	map <C-N> gt
endif
synt on
set hlsearch
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
"set sts=4
set incsearch
set ignorecase
set ruler
set paste
set completeopt=menu,longest,preview 
set ignorecase 
colorscheme elflord 


nmap <Left> <C-W><
nmap <Right> <C-W>>
nmap <Up> <C-W>-
nmap <Down> <C-W>+

nmap <F7> :TlistToggle<CR>
nmap <F6> :!python %<CR>
