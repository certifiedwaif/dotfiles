"vi can die in a fire
set nocompatible

"Install https://github.com/VundleVim/Vundle.vim
"Run :PluginInstall afterwards
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'ElmCast/elm-vim'
Plugin 'FrigoEU/psc-ide-vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'chr4/nginx.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'gabrielelana/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/seoul256.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'lervag/vimtex'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'mileszs/ack.vim'
Plugin 'mrk21/yaml-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'purescript-contrib/purescript-vim'
Plugin 'python-mode/python-mode'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'udalov/kotlin-vim'
Plugin 'vim-scripts/Vim-R-plugin'
Plugin 'vim-syntastic/syntastic'
Plugin 'zah/nim.vim'

call vundle#end()

syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

highlight Normal ctermbg=black

" Do let the mouse move the cursor
set mouse=a
" This makes copy and paste work
"set mouse=c

"Colourful colours
set nostartofline
"Allow multiple buffers to be open
set hidden
"Show mode
set showcmd
"Relative line numbers
set relativenumber
"Absolutely line number
set number
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
set expandtab
"STOP IT
set nosmarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"Base code folding on the indent level, for Python
"set foldmethod=syntax
set foldmethod=indent
"Set ruler at 80 columns
set cc=80
"Make all yanks go to the system clipboard
"set clipboard+=unnamedplus
"Use syntax to set the folding method
let r_syntax_folding = 1

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
"inoremap <C-h> <C-\><C-N><C-w>h
"inoremap <C-j> <C-\><C-N><C-w>j
"inoremap <C-k> <C-\><C-N><C-w>k
"inoremap <C-l> <C-\><C-N><C-w>l
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

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

" Syntastic YAML
let g:syntastic_yaml_checkers = ['yamllint']

" Add git status using Fugitive
set statusline+=%{FugitiveStatusline()}

" Stop Vim-R mode from inserting <- when _ is pressed. That's _SO_ annoying!
let vimrplugin_assign = 0

" Add dictionary completion
set dictionary+=/usr/share/dict/words
