" VIM Configuration - Killian Kemps

set nocompatible              " be iMproved, required

" -- Plugins

" Specify a directory for plugins (for Vim: ~/.vim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Hybrid theme
Plug 'w0ng/vim-hybrid'

" Plugin for NerdTree sidebar with lazy loading on use
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin for WakaTime Dashboard
Plug 'wakatime/vim-wakatime'

" Initialize plugin system
call plug#end()

" -- Display
set title                 " Update title of window or terminal
set number                " Display number of lines
set ruler                 " Display current position of cursor
set mouse=a               " Set mouse
set nowrap                " Do not wrap lines

set scrolloff=3           " Displays a minimum of 3 lines around the cursor

" Enable Vim theme
let &t_Co=256
set background=dark
colorscheme hybrid

" Neovim specific
if !has('nvim')
  set antialias
  " For Tmux
  set term=screen-256color
endif

" Convert tabs to spaces
set expandtab

" Set 4 spaces for Python files only
autocmd FileType * set tabstop=2|set shiftwidth=2
autocmd FileType python set tabstop=4|set shiftwidth=4

" Highlight tabs and trailing spaces
set list listchars=tab:→\ ,trail:·

" Change background of column 81
set colorcolumn=81

" Add automatically a newline at end of file
set eol

" -- Search
set ignorecase            " Ignore la casse lors d'une recherche
set smartcase             " Si une recherche contient une majuscule,
                          " re-active la sensibilite a la casse
set incsearch             " Surligne les resultats de recherche pendant la
                          " saisie
set hlsearch              " Surligne les resultats de recherche

" -- Beep
set visualbell            " Empeche Vim de beeper
set noerrorbells          " Empeche Vim de beepe

" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start

" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden

set wildmenu                        " Enhanced command line completion.
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.xpm,*.pyc,*.pyo

set encoding=utf-8                  " Allow extended digraphs
syntax enable                       " Enable syntax color

set nobackup                        " Don't make a backup before overwriting a file.
set nowritebackup                   " And again.
set noswapfile                      " Use an SCM instead of swap files
set undolevels=1000                 " use many levels of undo

set completeopt=menuone,menu,longest,preview " use a popup for completion

" Open new splits to the right
set splitright

" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l’indentation
filetype on
filetype plugin on
filetype indent on

" Redefinition of map leader
let mapleader = "\<Space>"

" Remap pasting from 0 register
noremap <Leader>p "0p
noremap <Leader>P "0P
vnoremap <Leader>p "0p

" Remap split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap Shift+tab to allow inverse shifting in insert mode
inoremap <S-Tab> <C-D>

" Remap incrementation for compatibility with Tmux config
nnoremap <C-s> <C-a>

" -- Plugins configuration

" [,t ] Toggle NERDTree
map <leader>t :NERDTreeToggle<CR>
