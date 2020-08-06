set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()

filetype plugin indent on
set number
set relativenumber

" nord-vim
colorscheme nord

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
