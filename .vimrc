"# :::::::::::::::[]::::::::::::: #
"# :::: /_> |U_U| || /_> /_> :::: #
"# :::: <=/ |T-T| || <=/ <=/ :::: #
"# ::::::::SHISS DOTFILES:::::::: #
"# https://github.com/gzygmanski: #
"# gzygmanski@hotmail.com:::::::: #

" vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'posva/vim-vue'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/fzf', { 'do': './install --bin' }
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ap/vim-css-color'
Plugin 'nikvdp/ejs-syntax'
Plugin 'jparise/vim-graphql'

call vundle#end()
filetype plugin indent on

" general
let mapleader=","
set nocompatible                              " compatibility with vi

" :find
set path+=**                                  " provides tab completion for file finder
set wildmenu                                  " display matched files when tab complete
set wildignore+=**/node_modules/**,**/__pycache__/**,*.pyc            " ignore node_modules in wildmenu
set hidden                                    " allow to switch buffers without writing changes

" netrw
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 0
let g:netrw_winsize = -25
let g:netrw_sort_sequence = '[\/]$,*'

set nonu rnu                                  " Show line numbers
set nowrap
" set linebreak                                 " Break lines at word (requires Wrap lines)
" set showbreak=+++                             " Wrap-broken line prefix
" set textwidth=120	                      " Line wrap (number of cols)
let &colorcolumn="".join(range(121,999),",")  " Visible line for line warp
set cursorline
set showmatch	                              " Highlight matching brace
set hlsearch                                  " Highlight all search results
set smartcase                                 " Enable smart-case search
set ignorecase                                " Always case-insensitive
set incsearch                                 " Searches for strings incrementally
set expandtab                                 " Use spaces instead of tabs
set autoindent                                " Auto-indent new lines
set smartindent                               " Enable smart-indent
set shiftwidth=2                              " Number of auto-indent spaces
set softtabstop=2                             " Number of spaces per Tab
set ruler	                              " Show row and column ruler information
set undolevels=1000	                      " Number of undo levels
set backspace=indent,eol,start	              " Backspace behaviour
set ttimeoutlen=10                            " fix pause when exiting INSERT mode
set updatetime=100                            " refresh rate
set autoread                                  " auto read file that haven't been edited by vim
set noswapfile

" scheme
syntax on
set rtp+=~/.vim/bundle/nord-vim
colorscheme nord
set background=dark
set fcs+=vert:│
" set fcs+=vert:▓
" set fcs+=vert:║

" indent guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=black   ctermbg=0

" statusline
let g:airline_section_y='%p%%'
let g:airline_section_z='%l:%c'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=0
let g:airline_theme='nord'
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_statusline_ontop=0
let g:airline_skip_empty_sections = 1

" emmet
let g:user_emmet_leader_key=','

" snippets
let g:UltiSnipsExpandTrigger="<leader>e"
let g:UltiSnipsJumpForwardTrigger="<leader>m"
let g:UltiSnipsJumpBackwardTrigger="<leader>n"

" fzf
let g:fzf_preview_window = ''
let $FZF_DEFAULT_OPTS='--reverse --no-color'

" quit, save and reload
nmap <leader>q      :q!<CR>
nmap <leader>Q      :bufdo q!<CR>
nmap <leader>w      :w<CR>
nmap <leader>r      :bufdo e!<CR>

" move linese up/down
nmap J              :m+<CR>
nmap K              :m-2<CR>

" fzf shortcuts/finder
map <C-f>           :Files<CR>
map <C-@>           :BLines<CR>
nmap <leader>f      :find<Space>
nmap <C-n>          :Vexplore<CR>

" closing parenheses
inoremap ((          ()<ESC>i
inoremap ""          ""<ESC>i
inoremap ''          ''<ESC>i
inoremap ``          ``<ESC>i
inoremap {{          {}<ESC>i
inoremap [[          []<ESC>i
inoremap <<          <><ESC>i
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko

" copy/paste to/from primary
vmap <leader>y      "*y
vmap <leader>Y      "*Y
nmap <leader>p      "*p
nmap <leader>P      "*P

" splits and tabs
nmap <leader>s   <C-W>s
nmap <leader>v   <C-W>v
map <C-J>           <C-W>j
map <C-K>           <C-W>k
map <C-H>           <C-W>h
map <C-L>           <C-W>l
nmap <S-L>          :tabnext<CR>
nmap <S-H>          :tabprevious<CR>
nmap <leader>N      :tabnew<CR>
nmap <leader>c      :tabclose<CR>

" trailing spaces
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
