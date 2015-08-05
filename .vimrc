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

" Easier movement through the windows
" Use <c-j> instead of <c-w>j, etc.
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Navigate through the tabs
map <Leader>N <esc>:tabprevious<CR>
map <Leader>n <esc>:tabnext<CR>

" Start pathogen to manage plugins and VIM runtime files
execute pathogen#infect()

" Configure NERDTree
" " Run with <leader>t and close the window is last empty window has NERD tree
nmap <leader>t :NERDTree<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")) &&
(b:NERDTreeType == "primary") | q | endif

" Configure ctrlp.vim
let g:ctrlp_max_height = 30

" If the CTRL-P help does not work execute this command:
" helptags ~/.vim/bundle/ctrlp.vim/doc

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
