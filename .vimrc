" do not use compatible mode
set nocp

" Use dark background
" set background=dark

" Ensure to use 256 colors in xterm
set t_Co=256

" Use color scheme
" colorscheme wombat256mod
colorscheme desert256

" Use <Leader> to '<space>' key
let mapleader = "\<space>"

noremap <Leader>e :quit<CR>
noremap <Leader>E :qa<CR>

" Alternate colorschemes
" colorscheme delek
" colorscheme desert
" colorscheme elflord
" colorscheme darkblue
" colorscheme slate
" colorscheme murphy

" Start pathogen to manage plugins and VIM runtime files
execute pathogen#infect()

" Configure ctrlp.vim
let g:ctrlp_max_height = 30

" Use c-Z key mapping to avoid conflict with Ratpoison mapping
let g:ctrlp_prompt_mappings = {'MarkToOpen()': ['<c-Z>']}
set wildignore+=*.pyc
set wildignore+=*build/*
set wildignore+=*dist/*
set wildignore+=*.egg-info/*
set wildignore+=*/coverage/*

syntax on

filetype on
filetype plugin indent on

" Set color for column
highlight ColorColumn ctermbg=7

" Normal backspace and mouse
set bs=2
set mouse=a

" Load Powerline plugin
set laststatus=2
set showtabline=2
set noshowmode
source ~/.vim/bundle/powerline/powerline/bindings/vim/plugin/powerline.vim

" Highlight white spaces
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/

" Write and then execute current open file
nmap <F3> :w<CR> :pyfile %<CR>

" Reload .vimrc file
nmap <C-F5> :source ~/.vimrc<CR>

" Format comments using 72 characters
nmap <F6> :set textwidth=72<CR>gqj:set textwidth=79<CR>

" Save file, update tags silently an refresh the screen
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
