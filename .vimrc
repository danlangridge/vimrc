set t_Co=256

syntax on

execute pathogen#infect()


set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'


call vundle#end()            " required
filetype plugin indent on    " required



set background=dark
colorscheme solarized

"let g:solarized_termcolors=256

set backspace=2
set tabstop=4
set expandtab
set smartindent
set shiftwidth=4

set nobackup
set nowb
set noswapfile

" Mappings

nmap - :NERDTreeToggle<CR>


" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
