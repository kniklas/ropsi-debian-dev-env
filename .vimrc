" do not use compatible mode
set nocp

" Use dark background
set background=dark

" Use color scheme
colorscheme desert

" Alternate colorschemes
" colorscheme delek
" colorscheme elflord
" colorscheme darkblue
" colorscheme slate
" colorscheme murphy

" Start pathogen to manage plugins and VIM runtime files
execute pathogen#infect()

syntax on

filetype on
filetype plugin indent on

" Set color for column
highlight ColorColumn ctermbg=7

" Normal backspace and mouse
set bs=2
set mouse=a

" Highlight white spaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Write and then execute current open file
nmap <F3> :w<CR> :pyfile %<CR>

" Reload .vimrc file
nmap <C-F5> :source ~/.vimrc<CR>

" Format comments using 72 characters
nmap <F6> :set textwidth=72<CR>gqj:set textwidth=79<CR>

" Save file, update tags silently and refresh the screen
" nmap <M-s> :w<CR> :silent !ctags *.py<CR><C-l>
nmap <M-s> :w<CR> !ctags *.py<CR><CR>

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
