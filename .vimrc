" Basic Commmands
set number
syntax on
set tabstop=4
set softtabstop=4
" set autoindent
set expandtab

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Nerdtree settings

" Python settings

" Directory for plugins to be downloaded to
call plug#begin('~/.vim/plugged')

" Declare Plugins
"Plug 'preservim/nerdtree'
"Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plug 'sainnhe/everforest'
"Plug 'sheerun/vim-polyglot'

" Initialize plugins
call plug#end()
