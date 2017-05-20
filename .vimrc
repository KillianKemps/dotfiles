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
