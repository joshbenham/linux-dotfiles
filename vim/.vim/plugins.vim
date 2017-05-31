call plug#begin('~/.vim/plugged')

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

