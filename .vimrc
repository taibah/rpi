let python_highlight_all=1
syntax on
set encoding=utf-8
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
set splitbelow
set splitright
map <F7> : tabp
map <F8> : tabn
set nocompatible " be iMproved
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"""""""""""""""""""""""""""""""""""
filetype off " required!
set rtp+=~/.vim/bundle/Vundle.vim            
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'
" My Bundles here:
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
" non github repos
Plugin 'git://git.wincent.com/command-t.git'
" Scala
Plugin 'derekwyatt/vim-scala'
" C++ http://www.youtube.com/watch?v=uTqnQEuUSL4
Plugin 'vim-scripts/AutoCpp'
"""" Syntax highliting
" Many langusges
Plugin 'scrooloose/syntastic'
" Python
Plugin 'nvie/vim-flake8'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/#lets-make-an-ide
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" File browsing tree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
call vundle#end()
"""""""""""""""""""""""""""""""""""


filetype plugin indent on " required!
"
" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" Side file browsing tree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Powerline setup
set laststatus=2
set term=xterm-256color
set termencoding=utf-8
let g:Powerline_symbols = 'fancy'

"""""""""""""""""""" PYTHON STUFF """"""""""""""""""""
" indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
" avoid extraneous whitespace
" define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
" then the match 
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

