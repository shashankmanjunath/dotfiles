" Shashank Manjunath .vimrc
" Created May 22 2019

set nocompatible
filetype plugin indent on
syntax on

" Setting hybrid line numbers
set number relativenumber

" By default, set indent and shiftwidth are 4
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" On deleting expanded tab, delete 4 spaces
set softtabstop=4
" Setting command window height to 2 by default
set cmdheight=2

" For certain filetypes, use 2 spaces
autocmd Filetype h setlocal ts=2 sw=2 expandtab
autocmd Filetype c setlocal ts=2 sw=2 expandtab
autocmd Filetype cpp setlocal ts=2 sw=2 expandtab
autocmd Filetype cuda setlocal ts=2 sw=2 expandtab
autocmd Filetype tex setlocal ts=2 sw=2 expandtab
autocmd Filetype Markdown setlocal ts=2 sw=2 expandtab

" Line numbers
set number

call plug#begin()

" Git wrapper
Plug 'tpope/vim-fugitive'

" Git visual cues
" Plug 'airblade/vim-gitgutter'

" LaTeX handling
Plug 'lervag/vimtex'

" Autocomplete/Jump to definition
Plug 'ycm-core/YouCompleteMe'

" Syntax Checking
Plug 'dense-analysis/ale'

" Writing Documents
Plug 'junegunn/goyo.vim'

" Markdown Handling
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Utility
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'

" fzf setup
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Colorscheme
" Plug 'sjl/badwolf'
Plug 'dracula/vim', { 'name': 'dracula'  }

" Add all plugins before following line
call plug#end()
filetype plugin indent on

" Remapping Esc key to jk
inoremap jk <Esc>

" Setting up badwolf colorscheme
set background=dark
colorscheme dracula
" colorscheme badwolf
" colorscheme desert

" Ensuring that we are using 256 color terminal
let &t_Co=256

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

" Make gutters darker than the background
let g:badwolf_darkgutter = 1

" LaTeX handling
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

" Setting up lightline
set laststatus=2

" Remapping fzf commands
nnoremap <silent> <leader>r :Files<CR>

" Setting maximum textwidth
set tw=120

" Markdown writing
let g:vim_markdown_folding_disabled=1

" Markdown preview setup
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0

nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

" Git mappings
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gs :G<CR>

" Goyo
let g:goyo_width=120

" ALE
let g:ale_linters = {
\    'python': ['pylint']
\}
let g:ale_python_pylint_options = "--max-line-length=120"
