"vi can die in a fire
set nocompatible
filetype off

"Install https://github.com/VundleVim/Vundle.vim
"Run :PluginInstall afterwards
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/seoul256.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'vim-syntastic/syntastic'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'python-mode/python-mode'
Plugin 'zah/nim.vim'
Plugin 'lervag/vimtex'
Plugin 'jalvesaq/Nvim-R'
Plugin 'udalov/kotlin-vim'

call vundle#end()

filetype plugin indent on

highlight Normal ctermbg=black

" Do let the mouse move the cursor
" This makes copy and paste work
set mouse=a

"Colourful colours
syntax on
set nostartofline
"Allow multiple buffers to be open
set hidden
"Show mode
set showcmd
"Relative line numbers
set relativenumber
"Show position
set ruler
"Start scroling 3 lines before bottom
set scrolloff=3
"And 6char before edge of screen
set sidescrolloff=6
"Highlight all search matches
set hlsearch
set smartcase
set incsearch
set infercase

"This can be annoying
set autoindent
"But re-indent with the same thing
set copyindent
set preserveindent
set noexpandtab
"STOP IT
set nosmarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"Base code folding on the indent level, for Python
set foldmethod=indent
"Set ruler at 80 columns
set cc=80
"Make all yanks go to the system clipboard
"set clipboard+=unnamedplus
"Use syntax to set the folding method
set foldmethod=syntax

"Show special characters for whitespaces
set list
"These may not copy correctly and may need to be re-typed
"Tabs are extremely visual now
set listchars=tab:→\ ,eol:¬
"let g:seoul256_background = 235
"Seoul is the best colour, xterm configuration optional but nice
colorscheme seoul256
"Let vim and seoul know the background colour
set background=dark
let g:indent_guides_auto_color = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:idnent_guides_guide_size = 4
"Zebra stripes for every 4 space tab
hi IdentGuidesOdd  guibg=red   ctermbg=235
hi IdentGuidesEven guibg=green ctermbg=237

set laststatus=2
set showtabline=2
set ttimeoutlen=50
"Airline is powerline without the python
"The colorufl surrounds
let g:airline#extensions#tabline#enabled = 1
"Requires HACK font (Hack has powerline added to it)
let g:airline_powerline_fonts = 1
"Noshowmode shows it
set noshowmode

" Make files update when they change outside vim
set autoread

"Remap keys to make moving between windows easier
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Syntastic settings
set statusline+=%f
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic python
let g:syntastic_python_checkers = ['flake8', 'mypy']

" Syntastic C++
let g:syntastic_cpp_include_dirs= ['/Library/Frameworks/R.framework/Resources/include','/Library/Frameworks/R.framework/Versions/3.5/Resources/library/Rcpp/include','/Library/Frameworks/R.framework/Versions/3.5/Resources/library/RcppEigen/include','/Library/Frameworks/R.framework/Versions/3.5/Resources/library/RcppGSL/include','/Library/Frameworks/R.framework/Versions/3.5/Resources/library/BH/include','/Library/Frameworks/R.framework/Versions/3.5/Resources/library/appell/include']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'


" Add git status using Fugitive
set statusline+=%{FugitiveStatusline()}
