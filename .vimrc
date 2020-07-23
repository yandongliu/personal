"Colorscheme
if exists('$TMUX') 
    set term=screen-256color 
endif
set background=dark
colorscheme codedark

let mapleader = '\' "leader key
set nu "line number
set ai "auto indent
"tab management
if version >= 700
        map <F5> :tabnew<CR>
         map <F6> :tabclose<CR>
        map <C-N> gt
        map <C-P> gT
endif
synt on "syntax
set hlsearch "search
hi Search cterm=NONE ctermfg=black ctermbg=green 
"indent management
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab
set incsearch
set ignorecase
set ruler
set laststatus=2
" set paste
set pastetoggle=<F3>

set cursorline
hi CursorLine cterm=NONE ctermbg=black ctermfg=white

"set selected tab color
hi TabLineSel ctermfg=Green ctermbg=Black 

"per filetype settings
filetype plugin on
filetype indent on

autocmd FileType go nmap <F7> :GoRun %<CR>

"""Plugins"""
call pathogen#infect('~/.vim/sources_non_forked/{}')

"NERDTree
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<cr>
let g:NERDTreeWinPos = "right"

"BufExplorer
map <leader>b :BufExplorer<CR>

"Python specifics
function! SetupPython()
    "Here, you can have the final say on what is set.  So
    "fixup any settings you don't like.
    setlocal softtabstop=4
    setlocal tabstop=4
    setlocal shiftwidth=4
	nmap <F7> :!python3 %<CR>
endfunction
command! -bar SetupPython call SetupPython()
