" VIM Configuration - Killian Kemps

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'JarrodCTaylor/vim-256-color-schemes'
Plugin 'w0ng/vim-hybrid'
Plugin 'qpkorr/vim-bufkill'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-fugitive'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'rust-lang/rust.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" -- Affichage
set title                 " Met a jour le titre de votre fenetre ou de
                          " votre terminal
set number                " Affiche le numero des lignes
set ruler                 " Affiche la position actuelle du curseur
set mouse=a               " Set mouse
set nowrap

set scrolloff=3           " Affiche un minimum de 3 lignes autour du curseur
                          " (pour le scroll)

set relativenumber        " Set relative numbering around cursor instead of
                          " absolute

" Convert tabs to spaces
set expandtab

" Set 4 spaces for Python files only
autocmd FileType * set tabstop=2|set shiftwidth=2
autocmd FileType python set tabstop=4|set shiftwidth=4

" Convenient mapping to switch tab/indent settings
nmap <leader>2 :set tabstop=2<cr>:set shiftwidth=2<cr>:set softtabstop=2<cr>
nmap <leader>4 :set tabstop=4<cr>:set shiftwidth=4<cr>:set softtabstop=4<cr>

" highlight tabs and trailing spaces
set list listchars=tab:→\ ,trail:·

" Change background of column 81
set colorcolumn=81

set statusline=%F%m%=%r%h%w%{fugitive#statusline()}\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [LINE=%l]\ [Col=%v]\ [%p%%]
set laststatus=2                    " Show the status line all the time

" Airline configuration for smarter tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'

" -- Recherche
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

" Add automatically a newline at end of file
set eol

set encoding=utf-8                  " allow extended digraphs
" Active la coloration syntaxique
syntax enable

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

" Set Theme for Vim
let &t_Co=256
colorscheme hybrid

set guifont=DejaVu\ Sans\ Mono\ 10
set antialias

" Vim ultisnips snippets configuration
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Remap UltiSnips because of a conflict with a remapping below
let g:UltiSnipsExpandTrigger = '<f5>'

" Use Eslint as Javascript checker
let g:syntastic_javascript_checkers = ['eslint']

" Redefinition of map leader
"let mapleader = ","
let mapleader = "\<Space>"

" Allow to use ;; as Escape key alternative
":imap ;; <Esc>
":map ;; <Esc>

" [,t ] Toggle NERDTree
map <leader>t :NERDTreeToggle<CR>

" Map Ctrl+P to open CtrlP fuzzy finder
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Remap split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap shifting text shortcuts to keep visual selection
vnoremap > >gv
vnoremap < <gv
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Remap Tab and Shift+Tab to allow shifting text in normal mode
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_

" Remap Shift+tab to allow inverse shifting in insert mode
inoremap <S-Tab> <C-D>

" Remap incrementation for compatibility with Tmux config
nnoremap <C-s> <C-a>

" Check PEP8 every time a Python file is written
" disabled: autocmd BufWritePost *.py call Flake8()

" Remap pasting from 0 register
noremap <Leader>p "0p
noremap <Leader>P "0P
vnoremap <Leader>p "0p

" Remap deleting to blackhole register
noremap <Leader>d "_d
