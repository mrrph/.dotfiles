set nocompatible              " be iMproved, required
filetype off                  " required

" lines required by airline
set laststatus=2
set ttimeoutlen=50

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" lightline instead of airline or powerline
Plugin 'itchyny/lightline.vim'

" org mode attempt

" Plugin 'jceb/vim-orgmode'
" Plugin 'tpope/vim-speeddating'
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'godlygeek/tablular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ervandew/supertab'
" Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


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
syntax on
set hlsearch
set incsearch
set magic
set smarttab 
set ai
set si
set wrap
set encoding=utf-8
set number
let g:vim_markdown_folding_disabled = 1

" Code specific, maybe (gathered from some sort of python instructions)
let python_highlight_all = 1
set cursorline

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Add some code to execute scripts from within vim
" nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>


