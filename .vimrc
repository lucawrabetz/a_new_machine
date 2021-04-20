" Basic settings
set nocompatible
set number
set foldmethod=indent
set foldlevel=1
" set foldclose=all
syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set rtp+=/usr/local/opt/fzf

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

let g:airline#extensions#branch#enabled=1

" Directory for plugins to be downloaded to
call plug#begin('~/.vim/plugged')

" Declare Plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'stsewd/fzf-checkout.vim'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline' 
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
colorscheme gruvbox

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
" nnoremap <leader>gc :GCheckout<CR>

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1
Plug 'tpope/vim-fugitive' 
" Initialize plugins
call plug#end()
