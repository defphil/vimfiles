set t_Co=8
syntax on
set linebreak
set wrap
set encoding=utf8
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set hidden
set viminfo=
set colorcolumn=
set timeoutlen=1000 ttimeoutlen=0
set laststatus=2
set backspace=indent,eol,start
set nowritebackup
set nobackup
set noswapfile
set mouse=a
set splitbelow
set splitright
set ruler
set showmatch
set nofoldenable
set hlsearch
set incsearch
set number
set ignorecase
set smartcase
set smarttab
"set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-45(%3l,%02c%)
set nocursorline
set synmaxcol=128
syntax sync minlines=256
"set nolazyredraw
set noeb vb t_vb=

set guioptions-=mrLtT
set guifont=Consolas:h10.5
let mapleader=","
set background=dark
colo monokai_pro

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" Switch to directory of opened file
nnoremap <leader>z :cd %:h<CR>

" C-x o
nnoremap <leader><leader> <C-W>w
nnoremap <C-\> :vsp<CR>

" Split movement
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Show hidden characters
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Fuck this mf
map Q <Nop>

" Yank till the end of line with Y
nnoremap Y y$

" Clear last search (,qs)
map <silent> <leader>qs <Esc>:noh<CR>

" Tab control
nnoremap <C-TAB> :tabnext<CR>
map <C-S-TAB> :tabprevious<CR>
map <C-W> :tabclose<CR>

" Buffer control
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>

" Search and replace word under cursor (,*)
nnoremap <leader>* :%s/\<<C-r><C-w>\>//<Left>
vnoremap <leader>* "hy:%s/\V<C-r>h//<left>

" GUI tabs not buffers
au BufAdd,BufNewFile * nested tab sball
