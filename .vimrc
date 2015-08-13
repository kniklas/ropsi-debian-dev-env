" do not use compatible mode
set nocp

" Automatically release .vimrc file upon save
autocmd! bufwritepost .vimrc source %

" Use dark background
" set background=dark

" Highlight white spaces
" NOTE: this must be run before syntax highlight command!
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/

" Start pathogen to manage plugins and VIM runtime files
" Pathogen load
execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype off
filetype plugin indent on

" Ensure to use 256 colors in xterm
set t_Co=256

" Use color scheme
colorscheme wombat256
"colorscheme desert256

" Alternate 16 color colorschemes
" delek desert elflord darkblue slate murphy

" Use <Leader> to '<space>' key
let mapleader = "\<space>"

noremap <Leader>e :quit<CR>
noremap <Leader>E :qa<CR>
noremap <Leader>Q :qa!<CR>

" Delete Buffer
map <Leader>d <esc>:bd<CR>

" Map sorting to s key
vnoremap <Leader>s :sort<CR>

" Easier movement through the windows
" Use <c-j> instead of <c-w>j, etc.
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Easier indentation of code
vnoremap < <gv
vnoremap > >gv

" Navigate through the tabs
map <Leader>m <esc>:tabnext<CR>
map <Leader>M <esc>:tabprevious<CR>

" Navigate through the buffers
map <Leader>n <esc>:bn<CR>
map <Leader>N <esc>:bp<CR>

" Configure Python-mode
"map <Leader>g :call RopeGotoDefinition()<CR>
let g:pymode_python = 'python3'
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
" Go to definition
let g:pymode_rope_goto_definition_bind = '<leader>g'
let g:pymode_rope_goto_definition_cmd = 'new'
" Completion
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_autoimport = 1
"let g:pymode_lint_ignore = "W,E"
let g:pymode_indent = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_folding = 1
" NOTE: consult VIM manuals for folding commands! `:help fold-commands`
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_virtualenv = 1
" Disabled configuration - probably outdated
"let ropevim_enable_shortcuts = 1
"let g:pymode_rope_goto_def_newwin = "vnew"

" Configure NERDTree
" Run with <leader>t and close the window is last empty window has NERD tree
nmap <leader>t :NERDTree<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")) && (b:NERDTreeType == "primary") | q | endif

" Configure ctrlp.vim
let g:ctrlp_max_height = 30

" Use c-Z key mapping to avoid conflict with Ratpoison mapping
let g:ctrlp_prompt_mappings = {'MarkToOpen()': ['<c-Z>']}
set wildignore+=*.pyc
set wildignore+=*build/*
set wildignore+=*dist/*
set wildignore+=*.egg-info/*
set wildignore+=*/coverage/*

" Use ACK.VIM
nmap <leader>a <Esc>:Ack!

" Set color for column
"highlight ColorColumn ctermbg=7

" Normal backspace and mouse
set bs=2
set mouse=a

" Load Powerline plugin
set laststatus=2
set showtabline=2
set noshowmode
source ~/.vim/bundle/powerline/powerline/bindings/vim/plugin/powerline.vim

" Easier formatting of paragraphs
" Note the `nmap Q` replace Ex mode entry from Normal mode
vmap Q gq
nmap Q gqap 

" Write and then execute current open file
"nmap <F3> :w<CR> :pyfile %<CR>

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
    	\ expandtab
    	\ autoindent
    	\ hlsearch
  	\ number
    	\ ruler
          "\ colorcolumn=80
