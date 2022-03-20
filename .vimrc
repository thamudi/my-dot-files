" Select your Leader key
let mapleader = "\<Space>"

call plug#begin('~/.vim/plugged')

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
Plug 'ayu-theme/ayu-vim' " theme
" VS Code like config
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Used for Javascript auto complete 
Plug 'jiangmiao/auto-pairs' " Auto paring the brackets, quotes ...etc   
Plug 'scrooloose/nerdtree' " Shows dir tree in the left panel
Plug 'Shougo/defx.nvim' " used for reading dir
Plug 'roxma/nvim-yarp' " dependency 
Plug 'roxma/vim-hug-neovim-rpc' " dependency
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips' " Dependency for vim react snippets 
Plug 'mlaursen/vim-react-snippets' " JS & TS snippets for developing React
call plug#end()

" Global Config

set spell spelllang=en_us 

packadd! doki-theme
syntax enable
set background=dark
let ayucolor="dark"
colorscheme ayu
" Key mapping for editor
nnoremap <C-s> :w<CR>
nnoremap <C-Q> :wq!<CR>
nnoremap <C-~> :terminal<CR>


" Nerd Tree Config
nmap <C-n> :NERDTreeToggle<CR>


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" coc confi

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
