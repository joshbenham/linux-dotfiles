call plug#begin('~/.vim/plugged')

    " ------- "
    "  Setup  "
    " ------- "

    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-sleuth'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()


" ------- "
"  Setup  "
" ------- "

set number " Enable line numbering
set mouse=a " Allow clicking to change cursor position
set nowrap " Disable line wrapping


" --------- "
"  Airline  "
" --------- "

let g:airline_theme='base16'
let g:airline_powerline_fonts=1
