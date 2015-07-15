execute pathogen#infect()
syntax on
filetype plugin indent on
"folding
set foldmethod=indent

" I like autoindent
set ai

"fix indentation
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

"go stuff
let g:go_fmt_autosave = 0

"stuff for tabs
function! SetIndentSpaces()
        set tabstop=2
        set shiftwidth=2
        set expandtab
endfunction

function! SetIndentTabs()
        set tabstop=8
        set shiftwidth=8
        set noexpandtab
endfunction

autocmd BufEnter,BufRead *.go call SetIndentTabs() 
autocmd BufEnter,BufRead * call SetIndentSpaces()

"vim mouse support!
set ttyfast
set mouse=a
set ttymouse=xterm2

"vim-airline wants this to actually display something by default
:set laststatus=2

"slash l for line numbers
"slash o for paste mode
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>

"remap j and k because word-wrap
:nmap j gj
:nmap k gk

"changes to searching. smart highlighting etc
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap \q :nohlsearch<CR>

"map commands for working with multiple open files
"ctrl-e - go to last file
"ctrl-n - go to next file
"ctrl-p - go to previous file
:nmap <C-e> :e"<CR>
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>

"NERDTree toggle command
"\e = toggle
:nmap \e :NERDTreeToggle<CR>

"Solarized Colors
syntax enable
set background=dark
colorscheme solarized


