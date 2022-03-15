" Select your Leader key
let mapleader = "\<Space>"

call plug#begin()

Plug 'sheerun/vimrc'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'rottencandy/vimkubectl'
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'} 
Plug 'kevinhui/vim-docker-tools'
Plug 'w0rp/ale'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
call plug#end()
colorscheme ayu
