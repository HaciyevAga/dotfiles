"----------------- General Settings ----------------------- 
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175
set clipboard=unnamedplus
set splitbelow splitright
set backspace=indent,eol,start
set cursorline
set cursorcolumn
syntax on
set number
highlight Normal ctermbg=None
highlight LineNr ctermfg=Dark
hi LineNr ctermfg=8
set mouse=a
filetype plugin on
set path+=**
set wildmenu 
set wildmode=longest:list,full
set smarttab
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set history =1000
set expandtab
set showcmd
set cursorline
set incsearch

"------------------ Plugins -------------------------------

call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'deoplete-plugins/deoplete-clang'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/gruvbox-material'
Plug 'jiangmiao/auto-pairs'
Plug 'frazrepo/vim-rainbow'
Plug '907th/vim-auto-save'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'hzchirs/vim-material'

call plug#end()

"------------------ Colorschem settings --------------------
" Oceanic
let g:material_style='oceanic'
set background=dark
colorscheme vim-material


"------------------ Rainbow settings -----------------------

let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

"------------------ AutoSave Settings ---------------------

let g:auto_save = 1  
let g:auto_save_events = ["InsertLeave", "TextChanged", "CursorHoldI", "CompleteDone"]
"------------------ Vim airline settings--------------------

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='material'

"------------------ Mappings -------------------------------

let mapleader = "space"
map fe $
map fd 0 
map ffd gg
map ffe G
map fj }}
map fh {{
map cc :
map cf :wq<Enter>
map esc :<Esc>
map gc gq
map ss :w<Enter>
map / //

"------------------ Other Settings in File -----------------
"source ~/.vim/settings/theme.vim
source ~/.vim/settings/cocrc.vim
source ~/.config/nvim/cp.vim 

