"# :::::::::::::::[]::::::::::::: #
"# :::: /_> |U_U| || /_> /_> :::: #
"# :::: <=/ |T-T| || <=/ <=/ :::: #
"# ::::::::SHISS DOTFILES:::::::: #
"# https://github.com/gzygmanski: #
"# gzygmanski@hotmail.com:::::::: #

call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'gzygmanski/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'mattn/emmet-vim'
Plug 'mlaursen/vim-react-snippets'
Plug 'vimwiki/vimwiki'

call plug#end()

"# :::::::::::::::::::::::::::::: #
"# ::::::::BASIC SETUP::::::::::: #
"# :::::::::::::::::::::::::::::: #
" general
let mapleader=","
set nocompatible                              " compatibility with vi

" :find
set path+=**                                  " provides tab completion for file finder
set wildmenu                                  " display matched files when tab complete
set wildignore+=**/node_modules/**,**/__pycache__/**,*.pyc
set hidden                                    " allow to switch buffers without writing changes
set nonu rnu                                  " Show line numbers
set nowrap
set nolinebreak                               " Break lines at word (requires Wrap lines)
" set showbreak=+++                           " Wrap-broken line prefix
" set textwidth=120                           " Line wrap (number of cols)
" let &colorcolumn="".join(range(121,999),",")  " Visible line for line warp
set colorcolumn=121
set signcolumn=yes                            " Column for linter errors
highlight 2 ctermfg=red ctermbg=white
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
set noruler                                   " Show row and column ruler information
set undolevels=1000                           " Number of undo levels
set backspace=indent,eol,start                " Backspace behaviour
set ttimeoutlen=10                            " fix pause when exiting INSERT mode
set updatetime=200                            " refresh rate
set autoread                                  " auto read file that haven't been edited by vim
set noswapfile                                " disable swap
set scrolloff=8                               " always show at least on line above/below the cursor
set sidescrolloff=5
set autoread


"# :::::::::::::::::::::::::::::: #
"# ::::::::SCHEME SETUP:::::::::: #
"# :::::::::::::::::::::::::::::: #
syntax on
set rtp+=~/.vim/bundle/nord-vim
colorscheme nord
set background=dark
set fcs+=vert:│

"# :::::::::::::::::::::::::::::: #
"# ::::::::PLUGIN VARIABLES:::::: #
"# :::::::::::::::::::::::::::::: #
" indent guides
let g:indentLine_enabled = 0
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
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_statusline_ontop=0
let g:airline_skip_empty_sections = 1

" vimfiler
call vimfiler#custom#profile('default', 'context', {
    \ 'safe': 0,
    \ 'columns': '',
    \ })
" let g:vimfiler_as_default_explorer = 1
let g:vimfiler_tree_indentation = 2
let g:vimfiler_expand_jump_to_first_child = 0
let g:vimfiler_tree_opened_icon = "   "
let g:vimfiler_tree_closed_icon = "   "
let g:vimfiler_tree_leaf_icon = ''
let g:vimfiler_file_icon = '   '
let g:vimfiler_marked_file_icon = '  﫟 '

" Explorer
let g:coc_explorer_global_presets = {
\   'tab': {
\     'position': 'tab',
\   },
\ }

" fzf
let g:fzf_layout = { 'down': '30%' }
let g:fzf_preview_window = ''
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" emmet
let g:user_emmet_install_global = 0
let g:user_emmet_mode='in'
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

" snippets
imap ,e <Plug>(coc-snippets-expand)
let g:coc_snippet_next = ',n'
let g:coc_snippet_prev = ',k'

"# :::::::::::::::::::::::::::::: #
"# ::::::::KEY BINDINGS:::::::::: #
"# :::::::::::::::::::::::::::::: #
" quit, save and reload
nmap ,q      :q!<CR>
nmap ,Q      :qa!<CR>
nmap ,w      :w<CR>
nmap ,r      :bufdo e!<CR>

" fzf/finder/explorer
nmap <C-f>           :Files<CR>
nmap <leader>l       :BLines<CR>
nmap <leader>F       :find<Space>
nmap <silent> <C-n>           :CocCommand explorer<CR>
" nmap <C-n>           :VimFilerSplit -toggle -force-hide -winwidth=35 -columns=''<CR>
" nmap <C-n>           :VimFilerSplit -toggle -winwidth=35 -columns="" -direction="left"<CR>

" move linese up/down
nmap K              :m-2<CR>
nmap J              :m+<CR>
nmap til            :IndentLinesToggle<CR>

" closing delimiter
inoremap ,a          <ESC>la
inoremap ((          ()<left>
inoremap {{          {}<left>
inoremap [[          []<left>
inoremap <<          <><left>
inoremap ""          ""<left>
inoremap ''          ''<left>
inoremap ``          ``<left>
inoremap ```         ```<CR>```<Esc>ko
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko
inoremap <expr> <BS>    WithinEmptyPair() ? "\<Right>\<BS>\<BS>"      : "\<BS>"
inoremap <expr> <CR>    WithinEmptyPair() ? "\<CR>\<CR>\<Up>"         : "\<CR>"
inoremap <expr> <Space> WithinEmptyPair() ? "\<Space>\<Space>\<Left>" : "\<Space>"

" copy/paste to/from primary
vmap <leader>y      "*y
vmap <leader>Y      "*Y
nmap <leader>yy     "*yy
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
nnoremap <Tab>      <C-W>w
nmap mt             <C-W>T
nmap me             <C-W>=
nmap mj             <C-W>J
nmap mk             <C-W>K
nmap mh             <C-W>H
nmap ml             <C-W>L
nmap <S-L>          :tabnext<CR>
nmap <S-H>          :tabprevious<CR>
nmap <leader>N      :tabnew<CR>
nmap <leader>c      :tabclose<CR>

" coc utilities
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <leader>prn :CocSearch <C-R>=expand("<cword>")

"# :::::::::::::::::::::::::::::: #
"# ::::::::FUNCTIONS::::::::::::: #
"# :::::::::::::::::::::::::::::: #
function! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction

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

function! s:DisableFileExplorer()
    au! FileExplorer
endfunction

function! s:OpenDirHere(dir)
    if isdirectory(a:dir)
	exec "silent CocCommand explorer " . a:dir
    endif
endfunction

"# :::::::::::::::::::::::::::::: #
"# ::::::::AUTOCOMMANDS:::::::::: #
"# :::::::::::::::::::::::::::::: #
" enable emmet only in specified files
autocmd FileType html,css,javascriptreact,typescriptreact EmmetInstall
" disable auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufWritePre * :call TrimWhiteSpace()
" Taken from vim-easytree plugin, and changed to use coc-explorer
augroup CocExplorerDefault
    autocmd VimEnter * call <SID>DisableFileExplorer()
    autocmd VimEnter * call <SID>OpenDirHere(expand('<amatch>'))
    autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
augroup end
