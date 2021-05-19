set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'flazz/vim-colorschemes' "nice colors!
Plugin 'Valloric/YouCompleteMe' "code completion
Plugin 'scrooloose/nerdtree' "dirs
Plugin 'tpope/vim-fugitive' "git!
Plugin 'tpope/vim-surround' "parantheses
Plugin 'powerline/powerline' "powerline!

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" color schemes!
"set term=screen-256color
syntax enable
set background=dark
colorscheme solarized

" give us nice EOL (end of line) characters
set list
set listchars=tab:\|\ 
",eol:¬

" powerline!
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

hi Normal ctermbg=none
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
filetype indent on
syntax on
set ignorecase
set smartcase

