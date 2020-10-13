syntax on
set linebreak
set wrap
set encoding=utf8
set shell=/bin/bash
set shiftwidth=2
set shortmess+=I
set tabstop=2
set expandtab
set hidden
set viminfo+=n~/.vim/viminfo
set colorcolumn=80
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
set nonumber
set ignorecase
set smartcase
set smarttab
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%)
set nocursorline
set synmaxcol=128
syntax sync minlines=256
set nolazyredraw
let mapleader=","
set guioptions-=mrLtT
set guifont=Consolas:h11
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap <leader>z :cd %:h<CR>
nnoremap <C-\> :vsp<CR>
nnoremap <leader><leader> <C-W>w
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
" Show hidden characters
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>
map Q <Nop>
" Yank till the end of line with Y
nnoremap Y y$
" Clear last search (,qs)
map <silent> <leader>qs <Esc>:noh<CR>
" Reindent buffer
map <leader>q gg=G<CR>
" Search and replace word under cursor (,*)
nnoremap <leader>* :%s/\<<C-r><C-w>\>//<Left>
vnoremap <leader>* "hy:%s/\V<C-r>h//<left>
" Strip trailing whitespace (,ss)
function! StripWhitespace () "
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

set background=dark
colo monokai_pro
