"basic things
set number
set mouse=a
colorscheme default

"indentation things
set tabstop=4
filetype plugin indent on
set shiftwidth=4
set expandtab
set cindent

"don't destroy indents when pasting code
:set nopaste

"more natural splits
set splitbelow
set splitright

cmap w!! w !sudo tee % > /dev/null
