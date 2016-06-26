
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
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
"set sts=4
set incsearch
set ignorecase
"set ruler
set laststatus=2
set paste
set completeopt=menu,longest,preview
set ignorecase
colorscheme monokai
" colorscheme solarized
execute pathogen#infect()
filetype plugin indent on
"let g:solarized_termcolors=256
"set background=dark
"colorscheme solarized


nmap <Left> <C-W><
nmap <Right> <C-W>>
"nmap <Up> <C-W>-
"nmap <Down> <C-W>+

"nmap <F7> :TlistToggle<CR>
map <leader><C-n> :NERDTreeToggle<CR>
map <leader><C-f> :NERDTreeFind<cr>
let g:ctrlp_map = '<leader><c-p>'
let g:ctrlp_cmd = 'CtrlP'

au FileType py nmap <F6> :!python %<CR>
au FileType go nmap <F6> :!go run %<CR>

