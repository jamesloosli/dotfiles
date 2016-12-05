execute pathogen#infect()
syntax on
filetype plugin indent on

"folding
set foldmethod=indent

"line numbers
set nu

"cursor highlighting thanks to @beppu
set cursorline
set cursorcolumn

" I like autoindent
set ai

"fix indentation
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

"go stuff
let g:go_fmt_autosave = 0

" enable filetype detection:
filetype on
filetype plugin on
"filetype indent on " file type based indentation

"vim mouse support!
set ttyfast
set mouse=a
set ttymouse=xterm2

"vim-airline wants this to actually display something by default
:set laststatus=2
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

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

"Syntax highlighting
au BufNewFile,BufRead *.jinja set ft=jinja
