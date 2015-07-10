execute pathogen#infect()
syntax on
filetype plugin indent on
"folding
set foldmethod=indent

"fix indentation
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
autcmd BufRead,BufNewFile *.go
	\set noexpandtab 
:set expandtab tabstop=2 shiftwidth=2 softtabstop=2

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

