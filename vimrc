set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Surround 
Plugin 'tpope/vim-surround'

" Repeat for plugins
Plugin 'tpope/vim-repeat'

" Nerdtree
Plugin 'scrooloose/nerdtree'

" Nerd commenter
Plugin 'scrooloose/nerdcommenter'

" Python syntax
Plugin 'vim-python/python-syntax'

" Dracula theme
Plugin 'dracula/vim'

" Airline
Plugin 'vim-airline/vim-airline'

" Airline themes
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required

set number " sets line numbers
set relativenumber " show relative numbers

syntax on " turns the syntax on

" sets the color scheme to dracula
colorscheme dracula

" make tab expand to spaces
set expandtab
" number of columns an existing <TAB> will occupy
set tabstop=2
" when indenting with '>', use 2 columns width
set shiftwidth=2
" make pressing tab insert 2 columns
set softtabstop=2

" wrap text
set wrap
" wrap without breaking words
set linebreak
" screen line navigation
map <Up> gk
map <Down> gj

" searches by ignoring case only if all letters are small
set ignorecase smartcase

" powerline config
set encoding=utf-8
set laststatus=2

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Shows the search results as you type them
set incsearch

" Sets the cursor to remain in the middle of the page
set scrolloff=999

" Make vim remember a lot
set history=1000

" Remove showing mode as we are using powerline
set noshowmode

packadd! matchit
packadd! justify

" Remember history
set viminfo='1000,<1000,s10,h,/1000,@1000,:1000

" Show match bracket 
set showmatch
set matchtime=15

" make vim show the command thats being entered
set showcmd

" make jj as a replacement for Esc
inoremap jj <Esc>

" Make vim scrolling faster
set regexpengine=1
set nocursorline
set nocursorcolumn
let loaded_matchparen=1 

" makes delete key delete in insert mode
" set backspace=0
set backspace=indent,eol,start

" more comfortable splits
set splitbelow
set splitright

" Enable python syntax highlighting
let g:python_highlight_all = 1

" reloads any changes done to files outside vim
set autoread

filetype plugin on

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Unmapping the scrollkeys
map <ScrollWheelUp> <C-Y>
map <S-ScrollWheelUp> <C-U>
map <ScrollWheelDown> <C-E>
map <S-ScrollWheelDown> <C-D>

" Make vim detect that terminal is 256 colors for airline backgroud to work
set t_Co=256

" to make vim's background transparent
hi Normal guibg=NONE ctermbg=NONE

" Set airline theme to powerlineish
let g:airline_theme='powerlineish'

" Enable arrows in airline. Works only if your terminal font is powerline
" supporrted: https://github.com/powerline/fonts
" let g:airline_powerline_fonts = 1

" remapping splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
