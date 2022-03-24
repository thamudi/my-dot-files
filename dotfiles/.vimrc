" Select your Leader key
let mapleader = "\<Space>"

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vimrc'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'rottencandy/vimkubectl' " manage Kubernetes from vim
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'} 
Plug 'kevinhui/vim-docker-tools'
Plug 'w0rp/ale' " Async lint engine, a syntax checking and semantic error
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'overcache/NeoSolarized' " Solarized theme
Plug 'ctrlpvim/ctrlp.vim'
" VS Code like config
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Used for Javascript auto complete 
Plug 'jiangmiao/auto-pairs' " Auto paring the brackets, quotes ...etc   
Plug 'scrooloose/nerdtree' " Shows dir tree in the left panel
Plug 'unkiwii/vim-nerdtree-sync'
Plug 'Shougo/defx.nvim' " used for reading dir
Plug 'roxma/nvim-yarp' " dependency 
Plug 'roxma/vim-hug-neovim-rpc' " dependency
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips' " Dependency for vim react snippets 
Plug 'mlaursen/vim-react-snippets' " JS & TS snippets for developing React
Plug 'junegunn/vim-emoji'
Plug 'scrooloose/nerdcommenter'

call plug#end()

" Global Config

set spell spelllang=en_us 

packadd! doki-theme
syntax enable
set completefunc=emoji#complete
set background=dark
" Key mapping for editor
nnoremap <C-s> :w<CR>
nnoremap <C-Q> :wq!<CR>
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

let g:neosolarized_termtrans=1
set background=dark
colorscheme NeoSolarized

" Nerd Tree Config
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['^node_modules$']
map <leader>r :NERDTreeFind<cr>
" NERD COMMENT POWER!
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" ctrlp config
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

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
