" VIM Configuration - Killian Kemps

set nocompatible              " be iMproved, required

" -- Display
set title                 " Update title of window or terminal
set number                " Display number of lines
set ruler                 " Display current position of cursor
set mouse=a               " Set mouse
set nowrap                " Do not wrap lines

set scrolloff=3           " Displays a minimum of 3 lines around the cursor

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
