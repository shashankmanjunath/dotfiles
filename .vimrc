" Shashank Manjunath .vimrc
" Created May 22 2019

set nocompatible
filetype plugin indent on
syntax on

" Setting hybrid line numbers
set number relativenumber

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Line numbers
set number

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git handling
Plugin 'airblade/vim-gitgutter'

" LaTeX handling
Plugin 'xuhdev/vim-latex-live-preview'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/goyo.vim'

" Colorscheme
Plugin 'sjl/badwolf'

" Add all plugins before following line
call vundle#end()
filetype plugin indent on

" Remapping Esc key to jk
inoremap jk <Esc>

" Setting up badwolf colorscheme
set background=dark
colorscheme badwolf

" Search as characters are entered, and highlight matches
set incsearch
set hlsearch

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Visual autocomplete for command menu
set wildmenu

" Mapping open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Add spaces after comment deliniters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Allow commmenting and inverting empy lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Adding line at 120 characters
set colorcolumn=120

" Turning off swap files
set noswapfile
set nobackup
set nowb

" Automatically refresh after buffer is changed externally
set autoread

" badwolf setings
" Make tab line darker than the background
let g:badwolf_tabline = 0

" Make gutters darker than the background
let g:badwolf_darkgutter = 1

