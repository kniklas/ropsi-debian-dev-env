" do not use compatible mode
set nocp

" Use dark background
set background=dark

" Use color scheme
colorscheme murphy

" Alternate colorschemes
" colorscheme delek
" colorscheme elflord
" colorscheme darkblue
" colorscheme slate
syntax on

filetype on
filetype plugin indent on

" Set color for column
highlight ColorColumn ctermbg=7

" Normal backspace and mouse
set bs=2
set mouse=a

" Format comments using 72 characters
nmap <F6> :set textwidth=72<CR>gqj:set textwidth=79<CR>

" Execute current open file
nmap <F3> :pyfile %<CR>

" Configuration for Plython (.py) files
autocmd BufReadPost *.py set textwidth=79
    	\ tabstop=8
    	\ shiftwidth=4
    	\ softtabstop=4
  	\ colorcolumn=80
    	\ expandtab
    	\ autoindent
    	\ hlsearch
  	\ number
    	\ ruler
