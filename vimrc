"vi can die in a fire
set nocompatible

"Install https://github.com/VundleVim/Vundle.vim
"Run :PluginInstall afterwards
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'kien/ctrlp.vim'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'ElmCast/elm-vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'alx741/vim-hindent'
Plugin 'bling/vim-airline'
Plugin 'chr4/nginx.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'gabrielelana/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'hdima/python-syntax'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'lervag/vimtex'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'neomake/neomake'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'parsonsmatt/intero-neovim'
Plugin 'purescript-contrib/purescript-vim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'udalov/kotlin-vim'
Plugin 'vim-scripts/Vim-R-plugin'
Plugin 'vmchale/dhall-vim'
Plugin 'w0rp/ale'
Plugin 'zah/nim.vim'

call vundle#end()

syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

highlight Normal ctermbg=black

" Do let the mouse move the cursor
set mouse=a

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
"set scrolloff=3
"And 6char before edge of screen
"set sidescrolloff=6
"Highlight all search matches
set hlsearch
set smartcase
set incsearch
set infercase

"This can be annoying
" set autoindent
"But re-indent with the same thing
" set copyindent
" set preserveindent
set expandtab

"STOP IT
set nosmarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2

"Base code folding on the indent level, for Python
"set foldmethod=syntax
set foldmethod=indent
"Set ruler at 78 columns
set cc=78
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

"Zebra stripes for every 2 space tab
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

set statusline+=%f
set statusline+=%#warningmsg#
set statusline+=%*

" Add git status using Fugitive
set statusline+=%{FugitiveStatusline()}

" Stop Vim-R mode from inserting <- when _ is pressed. That's _SO_ annoying!
let vimrplugin_assign = 0

" Add dictionary completion
set dictionary+=/usr/share/dict/words

" ale settings
let g:ale_purescript_ls_config = {
		                             \  'purescript': {
		                             \    'addNpmPath': v:true,
		                             \    'buildCommand': 'pulp build --main Main --include src --to dist/example.js'
		                             \  }
		                             \}
let g:ale_set_balloons = 1
let g:ale_completion_enabled = 1
"let g:ale_cursor_detail = 1
let g:ale_lint_on_save = 1
let g:ale_open_list = 1

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" fzf 
set rtp+=/usr/local/opt/fzf

" vim fzf key-mappings
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>a :Ag<Space>
nmap <Leader>H :Helptags!<CR>
nmap <Leader>C :Commands<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>/ :History/<CR>
nmap <Leader>M :Maps<CR>
nmap <Leader>s :Filetypes<CR>

" vim-rhubarb
let g:github_enterprise_urls = ['https://github.source.internal.cba', 'https://github.ai.cba']

" haskell-vim
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
