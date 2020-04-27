"# :::::::::::::::[]::::::::::::: #
"# :::: /_> |U_U| || /_> /_> :::: #
"# :::: <=/ |T-T| || <=/ <=/ :::: #
"# ::::::::SHISS DOTFILES:::::::: #
"# https://github.com/gzygmanski: #
"# gzygmanski@hotmail.com:::::::: #

" General
let mapleader=","
inoremap <silent>,, <Esc>/<++><CR>:nohl<CR>4xa
noremap <silent>,, <Esc>/<++><CR>:nohl<CR>4xa
noremap <silent>,l ggvG$:s/<++>//g<CR>:nohl<CR><C-o><C-o>
set nocompatible " compatibility with vi"

" :find"
set path+=** " provides tab completion for file finder"
set wildmenu " display matched files when tab complete"


set number relativenumber " Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
" set textwidth=100	" Line wrap (number of cols)
set colorcolumn=101      " Visible line for line warp
set showmatch	" Highlight matching brace
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally

set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
" set shiftwidth=2	" Number of auto-indent spaces
" set smartindent	" Enable smart-indent
" set smarttab	" Enable smart-tabs
set softtabstop=2	" Number of spaces per Tab

" Advanced
set ruler	" Show row and column ruler information
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

set ttimeoutlen=10 " fix pause when exiting INSERT mode

" Scheme
syntax on
set rtp+=~/.vim/bundle/nord-vim
colorscheme nord

set nocompatible              " be iMproved, required
filetype off                  " required

" statusline
let g:airline_section_y='%p%%'
let g:airline_section_z='%l:%c'

let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=0
let g:airline_theme='nord'
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_statusline_ontop=0
let g:airline_skip_empty_sections = 1

let g:user_emmet_leader_key=','
" let g:user_emmet_mode='n'    "only enable normal mode functions.

let g:UltiSnipsExpandTrigger="<leader>."
let g:UltiSnipsJumpForwardTrigger="<leader>n"
let g:UltiSnipsJumpBackwardTrigger="<leader>p"

let g:vimtex_view_general_viewer = 'zathura'

autocmd StdinReadPre * let s:std_in=1


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'arcticicestudio/nord-vim'
Plugin 'posva/vim-vue'

Plugin 'valloric/youcompleteme'
" Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'

Plugin 'junegunn/fzf', { 'do': './install --bin' }
Plugin 'junegunn/fzf.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-commentary'

Plugin 'lervag/vimtex'

call vundle#end()            " required

" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on


""" Custom maps

nmap q              :q!<CR>
nmap <leader>w      :w<CR>

nmap J              :m+<CR>
nmap K              :m-2<CR>

map <C-f>           :Files<CR>
map <C-@>           :BLines<CR>

inoremap ((          ()<++><ESC>4hi
inoremap ""          ""<++><ESC>4hi
inoremap ''          ''<++><ESC>4hi
inoremap {{          {}<++><ESC>4hi
inoremap [[          []<++><ESC>4hi
inoremap <<          <><++><ESC>4hi
inoremap <leader>e  <Esc>F<lyeo</<Esc>pa><Esc>O<Tab>
inoremap <leader>E  <Esc>F<lyeA</<Esc>pa>
inoremap {<CR> {<CR>}<Esc>ko<tab>
inoremap [<CR> [<CR>]<Esc>ko<tab>
inoremap (<CR> (<CR>)<Esc>ko<tab>

nmap <leader>f      :find<Space>
inoremap <leader>.  <C-n>" copy/paste from primary

" copy/paste to/from primary
vmap <leader>y      "*y
vmap <leader>Y      "*Y

nmap <leader>p      "*p
nmap <leader>P      "*P

" tabs

map <C-J>           <C-W>j
map <C-K>           <C-W>k
map <C-H>           <C-W>h
map <C-L>           <C-W>l

nmap <Tab>          :tabnext<CR>
nmap <leader>b      :tabprevious<CR>
nmap <leader>n      :tabnew<CR>
nmap <leader>c      :tabclose<CR>
nnoremap <C-l>      :nohl<CR><C-l>:echo "Search Cleared"<CR>

" vimtex

nmap <leader>ll     <plug>(vimtex-compile)
nmap <leader>lv     <plug>(vimtex-view)

" Trailing spaces"
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()
