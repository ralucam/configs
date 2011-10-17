set background=dark

" for displaying only
set tabstop=8

" expand each tab as softtabstop spaces
set expandtab

" used for indent/reindent
set shiftwidth=4

" tabs will be treated as 8 spaces
set softtabstop=4

set cindent

set hlsearch
syntax on
set showmatch
set nocompatible
set backspace=indent,eol,start

"syntax match Tab /\t/
hi Tab cterm=underline

" tab options explained: http://tedlogan.com/techblog3.html

"au BufNewFile,BufRead *.cc,*.c,*.h,*.cpp,*.hpp set cindent
map q !}fmt
map S :w<enter>:!ispell % <enter>:e!<enter><enter>

" Highlighting whitespaces at end of line (without cursor)
highlight WhiteSpaceEOL ctermbg=red guibg=red
match WhiteSpaceEOL /\s\+\%#\@!$/
set ignorecase
set smartcase
set laststatus=2

map <C-S-]> gt
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
