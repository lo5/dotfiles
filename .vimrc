" To reload this dotfile, run :so %
"

set nocompatible
filetype off

" -----------------------------------------------------------------------------
" Plugins
"

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'jpalardy/vim-slime'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chriskempson/base16-vim'
Plug 'kchmck/vim-coffee-script'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'ziglang/zig.vim'
call plug#end()

let $FZF_DEFAULT_COMMAND = 'fdfind --type f'

" -----------------------------------------------------------------------------
" Basics
"

filetype plugin indent on
syntax enable
set exrc
set clipboard=unnamed
let mapleader = "\<Space>" 
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

set background=dark
set novisualbell
set encoding=utf-8
set modelines=0
set scrolloff=3
set autoread " automatically reload changed files
au CursorHold,CursorHoldI,FocusGained,BufEnter * checktime " trigger autoread
set autoindent
set showmode
set showcmd
set hidden " allow switching between modified buffers
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set number
set laststatus=2
set history=1000
set guioptions-=T  "remove toolbar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set wrap
set textwidth=0
set wrapmargin=0
set formatoptions=qrn1
set colorcolumn=101
highlight ColorColumn ctermbg=0


" -----------------------------------------------------------------------------
" Search
"

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch


" -----------------------------------------------------------------------------
" Keys
"

imap jj <Esc>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>D :bd!<CR>
nnoremap <leader>o :Files<CR>
nnoremap <leader>h :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>W :wa<CR>
nnoremap <leader>m :make<CR>
nnoremap <leader>v <C-W>v
nnoremap <leader>s <C-W>s
nnoremap <leader>x <C-W>c
nnoremap <leader>t :SlimeSend<CR>
vnoremap <leader>y "+yy
nnoremap <leader>p "+p
nmap <leader>c :noh<CR>

" Execute line under cursor
nnoremap <leader>z yy@"

" Fast window switching
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" Automatically jump to end of text you pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

set gdefault

" Kill help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>


" Cycle through quickfix 
nnoremap <F2> :cprev<CR> :norm! zz<CR>
nnoremap <F3> :cnext<CR> :norm! zz<CR>
nnoremap <F5> m'A<C-R>="# ".strftime('%Y-%m-%dT%H:%M:%S')<CR><Esc>``
" nnoremap <kMultiply> :cc<CR> :norm! zz<CR>
nnoremap <F10> :copen<CR>
nnoremap <F9> :cclose<CR>

" Repeat last colon command
nnoremap , @:

" Force .md files to markdown, not modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" vim-slime
let g:slime_target = "tmux"

