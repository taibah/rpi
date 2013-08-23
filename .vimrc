syntax on
set expandtab                                                                    
set tabstop=4                                                                    
set shiftwidth=4                                                                 
set autoindent                                                                   
set smartindent   
set number
set spell
setlocal spell spelllang=en_us
set cc=81
set nospell
map <F7> : tabp
map <F8> : tabn
set nocompatible               " be iMproved
filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " Scala
 Bundle 'derekwyatt/vim-scala'
 " C++ http://www.youtube.com/watch?v=uTqnQEuUSL4
 Bundle 'vim-scripts/AutoCpp'
 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

