" BRANBRANS'S VIMRC
"
" Learned from:
" https://justin.abrah.ms/vim/vim_and_python.html
" https://dougblack.io/words/a-good-vimrc.html
" https://github.com/amix/vimrc/tree/master/vimrcs

" Load pathogen
execute pathogen#infect()
execute pathogen#helptags()

" For ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" For Powerline
let g:powerline_pycmd="py3"
set laststatus =2

" Basic settings
set nocompatible 
set autoread            " rereads file if changed by outside program
syntax on               " always turn on syntax
filetype plugin indent on
set encoding=utf-8
set cursorline
set number              " set line number
"set relativenumber	    " shows relative line number
set autoindent          " matched indent when starting new line
set wildmenu            " menu that shows folders while typing
let mapleader = ","

" Converts all tabs into 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <F3> :nohlsearch<CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk
nnoremap <Down> g<Down>
nnoremap <Up> g<Up>

" Insert new line without going into insert mode using enter 
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Move through windows with ctrl+direction instead of ctrl+w then direction
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-Down> <C-W><Down>
map <C-Up> <C-W><Up>
map <C-Left> <C-W><Left>
map <C-Right> <C-W><Right>

" Vertical split into .vimrc for editing
nnoremap <leader>ev :sp $MYVIMRC<CR>
nnoremap <leader>ez :sp ~/.zshrc<CR>

" Quick saving and exiting
nmap <leader>w :w!<cr>
nmap <leader>wq :wq<cr>
nmap <leader>qa :qa!<cr>
nmap <leader>q :q!<cr>

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tt :tabnext<cr>

" Set word wrapping for text files
autocmd BufRead,BufNewFile *.md,*.tex,*.txt set linebreak

let python_highlight_all=1
