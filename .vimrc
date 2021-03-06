"# :::::::::::::::[]::::::::::::: #
"# :::: /_> |U_U| || /_> /_> :::: #
"# :::: <=/ |T-T| || <=/ <=/ :::: #
"# ::::::::SHISS DOTFILES:::::::: #
"# https://github.com/gzygmanski: #
"# gzygmanski@hotmail.com:::::::: #

if has('python3')		"force python3 version before any other plugin can change that
endif

" vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'Chiel92/vim-autoformat'
Plugin 'gzygmanski/nord-vim'
Plugin 'posva/vim-vue'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'junegunn/fzf', { 'do': './install --bin' }
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'Yggdroot/indentLine'
Plugin 'ap/vim-css-color'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'

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

set nonu rnu                                  " Show line numbers
set nowrap
set nolinebreak                               " Break lines at word (requires Wrap lines)
" set showbreak=+++                           " Wrap-broken line prefix
" set textwidth=120                           " Line wrap (number of cols)
let &colorcolumn="".join(range(121,999),",")  " Visible line for line warp
set cursorline
set showmatch                                 " Highlight matching brace
set nohlsearch                                " Highlight all search results
set smartcase                                 " Enable smart-case search
set ignorecase                                " Always case-insensitive
set incsearch                                 " Searches for strings incrementally
set expandtab                                 " Use spaces instead of tabs
set autoindent                                " Auto-indent new lines
set smartindent                               " Enable smart-indent
set shiftwidth=2                              " Number of auto-indent spaces
set softtabstop=2                             " Number of spaces per Tab
set ruler                                     " Show row and column ruler information
set undolevels=1000                           " Number of undo levels
set backspace=indent,eol,start                " Backspace behaviour
set ttimeoutlen=10                            " fix pause when exiting INSERT mode
set updatetime=100                            " refresh rate
set autoread                                  " auto read file that haven't been edited by vim
set noswapfile                                " disable swap
set scrolloff=1                               " always show at least on line above/below the cursor
set sidescrolloff=5
set autoread

" scheme
syntax on
set rtp+=~/.vim/bundle/nord-vim
colorscheme nord
set background=dark
set fcs+=vert:│

" netrw
call vimfiler#custom#profile('default', 'context', {
    \ 'safe': 0,
    \ 'columns': '',
    \ })
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_tree_indentation = 2
let g:vimfiler_expand_jump_to_first_child = 0
let g:vimfiler_tree_opened_icon = "   "
let g:vimfiler_tree_closed_icon = "   "
let g:vimfiler_tree_leaf_icon = ''
let g:vimfiler_file_icon = '   '
let g:vimfiler_marked_file_icon = '  﫟 '
" let g:netrw_banner = 0
" let g:netrw_browse_split = 4
" let g:netrw_liststyle = 0
" let g:netrw_winsize = 30
" let g:netrw_sort_sequence = '[\/]$,*'

" autoformat
" au BufWrite * :Autoformat
noremap <F3> :Autoformat<CR>
" let g:formatdef_custom_js = '"eslint --parser=@babel/eslint-parser"'
let g:formatdef_custom_js = '"/home/shisam/node_modules/.bin/eslint"'
let g:formatters_javascript = ['custom_js']
let g:autoformat_verbosemode=1
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" indent guides
let g:indentLine_setColors = 1
let g:indentLine_char = '┊'
let g:indentLine_color_term = 8
let g:indentLine_bgcolor_term = 256

" statusline
let g:airline_section_y='%p%%'
let g:airline_section_z='%l:%c'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=0
let g:airline_theme='nord'
let g:airline#extensions#tabline#formatter='unique_tail_improved'
let g:airline#extensions#tabline#show_splits = 0
let airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#left_sep = '█'
let g:airline#extensions#tabline#left_alt_sep = '┊'
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_statusline_ontop=0
let g:airline_skip_empty_sections = 1

" emmet
let g:user_emmet_leader_key=','
" let emmet use jsx in js files
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

" snippets
let g:UltiSnipsExpandTrigger="<leader>e"
let g:UltiSnipsJumpForwardTrigger="<leader>n"
let g:UltiSnipsJumpBackwardTrigger="<leader>m"

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
nmap <C-n>          :VimFilerSplit -toggle -columns=''<CR>

" closing delimiter
inoremap <leader>a   <ESC>la
inoremap ((          ()<left>
inoremap {{          {}<left>
inoremap [[          []<left>
inoremap <<          <><left>
inoremap ""          ""<left>
inoremap ''          ''<left>
inoremap ``          ``<left>
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko

function! IsEmptyPair(str)
  for pair in split( &matchpairs, ',' ) + [ "''", '""', '``' ]
    if a:str == join( split( pair, ':' ),'' )
      return 1
    endif
  endfor
  return 0
endfunc

function! WithinEmptyPair()
  let cur = strpart( getline('.'), col('.')-2, 2 )
  return IsEmptyPair( cur )
endfunc

inoremap <expr> <BS>    WithinEmptyPair() ? "\<Right>\<BS>\<BS>"      : "\<BS>"
inoremap <expr> <CR>    WithinEmptyPair() ? "\<CR>\<CR>\<Up>"         : "\<CR>"
inoremap <expr> <Space> WithinEmptyPair() ? "\<Space>\<Space>\<Left>" : "\<Space>"

" copy/paste to/from primary
vmap <leader>y      "*y
vmap <leader>Y      "*Y
nmap <leader>p      "*p
nmap <leader>P      "*P
nmap <C-p>          :set paste!<CR>

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

function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()

" disable auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
