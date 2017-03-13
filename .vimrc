let mapleader = '\' " leader key
set nu " line number
set ai " auto indent
" tab management
if version >= 700
        map <F5> :tabnew<CR>
        " map <F6> :tabclose<CR>
        map <C-N> gT
        map <C-P> gt
endif
synt on " syntax
set hlsearch " search
" highlight Search ctermbg=black ctermfg=white term=underline
" indent management
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set incsearch
set ignorecase
set ruler
set laststatus=2
set paste
" set completeopt=menu,longest,preview

" Colorscheme
if exists('$TMUX') 
    set term=screen-256color 
endif
set background=dark
colorscheme peaksea

" per filetype settings
filetype plugin on
filetype indent on

autocmd FileType go nmap <F8> :!go run %<CR>

""" Plugins """
call pathogen#infect('~/.vim/sources_non_forked/{}')

" NERDTree
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<cr>
let g:NERDTreeWinPos = "right"

" BufExplorer
map <leader>b :BufExplorer<CR>

" Python specifics
function! SetupPython()
    " Here, you can have the final say on what is set.  So
    " fixup any settings you don't like.
    setlocal softtabstop=4
    setlocal tabstop=4
    setlocal shiftwidth=4
	nmap <F7> :!python %<CR>
endfunction
command! -bar SetupPython call SetupPython()
