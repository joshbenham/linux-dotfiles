call plug#begin('~/.vim/plugged')

    "--------------------------------------------------------
    " Setup
    "--------------------------------------------------------

    " Always loaded plugins
    Plug 'airblade/vim-gitgutter'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-sleuth'
    Plug 'tpope/vim-vinegar'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Themes
    Plug 'ajh17/Spacegray.vim'
    Plug 'altercation/vim-colors-solarized'
    Plug 'dracula/vim'
    Plug 'whatyouhide/vim-gotham'

    " FZF installer and plugin
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
    Plug 'junegunn/fzf.vim'

    " Plugins loaded when they are needed
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()


"------------------------------------------------------------
" Setup
"------------------------------------------------------------

set t_Co=256 " Change the amount of colours in the palette
set background=dark
colorscheme dracula
set number " Enable line numbering
set mouse=a " Allow clicking to change cursor position
set nowrap " Disable line wrapping

let mapleader="," " Set , to be the new leader key
highlight LineNr ctermfg=gray


"------------------------------------------------------------
" Functionality
"------------------------------------------------------------

" Show the cursor line
set cursorline
highlight CursorLine cterm=none gui=none ctermbg=black guibg=black

" Show spaces as characters
set list
" set listchars+=space:.,tab:>-

" Show appended white space
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

" Remove appended white space on save
autocmd BufWritePre * :%s/\s\+$//e

" Set a column at 80 characters
set textwidth=0
if exists('&colorcolumn')
    highlight ColorColumn ctermbg=black
    set colorcolumn=80
endif

" Editing VIM
nmap <leader>ev :tabedit $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>


"------------------------------------------------------------
" Airline
"------------------------------------------------------------

let g:airline_theme='dracula'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1


"------------------------------------------------------------
" FZF
"------------------------------------------------------------

nnoremap <silent> <leader>p             :Files<CR>
nnoremap <silent> <leader>o             :Buffers<CR>


"------------------------------------------------------------
" Nerdtree
"------------------------------------------------------------

let NERDTreeShowHidden=1

nnoremap <silent> <leader>f             :NERDTreeToggle<CR>
nnoremap <silent> <leader>ff            :NERDTreeFind<CR>

