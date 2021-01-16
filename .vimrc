set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'

Plugin 'sainnhe/artify.vim'
Plugin 'itchyny/vim-gitbranch'
Plugin 'macthecadillac/lightline-gitdiff'
Plugin 'maximbaz/lightline-ale'
Plugin 'albertomontesg/lightline-asyncrun'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim' 
Plugin 'justinmk/vim-sneak'


" Plugin of lightline
Plugin 'itchyny/lightline.vim'

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


"General config
set number
set laststatus=2
set noshowmode
" Enable relative line numbers
set relativenumber

"Setting for searching
" Incrementally search while typing
 set incsearch
" " Use smart case for searching
 set ignorecase
 set smartcase
" " Highlight searches
 set hlsearch
" " Use <C-L> to clear the highlighting of :set hlsearch.
 if maparg('<C-L>', 'n') ==# ''
   nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
 endif

 "Setting for fzf searching
 
" Jump to specific file
 nnoremap <C-P> :Files<cr>
" Search in file
 nnoremap <C-F> :BLines<cr>
" Search whole project
 nnoremap \ :Rg<space>
