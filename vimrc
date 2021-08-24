"vi can die in a fire
set nocompatible

"Install https://github.com/VundleVim/Vundle.vim
"Run :PluginInstall afterwards
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin 'vim-scripts/Vim-R-plugin'
" Plugin 'w0rp/ale'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'Shougo/deoplete.nvim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'benmills/vimux'
Plugin 'bling/vim-airline'
Plugin 'chr4/nginx.vim'
Plugin 'eigenfoo/stan-vim'
Plugin 'fenetikm/falcon'
Plugin 'godlygeek/tabular'
Plugin 'gu-fan/riv.vim'
Plugin 'hdima/python-syntax'
Plugin 'jeetsukumaran/vim-pythonsense'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'jvirtanen/vim-hcl'
Plugin 'kassio/neoterm'
Plugin 'leafgarland/typescript-vim'
Plugin 'lervag/vimtex'
Plugin 'luochen1990/rainbow'
Plugin 'mechatroner/rainbow_csv'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'memgraph/cypher.vim'
Plugin 'neomake/neomake'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'roxma/vim-tmux-clipboard'
Plugin 'scrooloose/nerdtree'
Plugin 'spolu/dwm.vim'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'zchee/deoplete-jedi'

call vundle#end()

set rtp+=/usr/local/opt/fzf

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
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

augroup pyconf
  au! * <buffer>
  au BufEnter,BufNew,BufRead *.py setlocal shiftwidth=4
augroup END

augroup markdown
  au! * <buffer>
  au BufEnter,BufNew,BufRead *.md setlocal syntax=pandoc-markdown
augroup END

augroup cypher
  au! * <buffer>
  au BufEnter,BufNew,BufRead *.cypher let g:neoterm_bracketed_paste=0
  au BufEnter,BufNew,BufRead *.cypher setlocal syntax=cypher
augroup END

set foldmethod=syntax
" set foldmethod=indent
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
colorscheme falcon
set termguicolors
"Let vim and seoul know the background colour
set background=dark
let g:indent_guides_auto_color = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 2

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
let g:falcon_airline = 1
let g:airline_theme = 'falcon'
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
"let g:ale_purescript_ls_config = {
"		                             \  'purescript': {
"		                             \    'addNpmPath': v:true,
"		                             \    'buildCommand': 'pulp build --main Main --include src --to dist/example.js'
"		                             \  }
"		                             \}
"let g:ale_set_balloons = 1
"let g:ale_completion_enabled = 1
""let g:ale_cursor_detail = 1
"let g:ale_lint_on_save = 1
"let g:ale_open_list = 1

" Use deoplete.
"let g:deoplete#enable_at_startup = 1

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
nmap <Leader>r :Rg<Space>
nmap <Leader>H :Helptags!<CR>
nmap <Leader>C :Commands<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>/ :History/<CR>
nmap <Leader>M :Maps<CR>
nmap <Leader>s :Filetypes<CR>

" vim-rhubarb
let g:github_enterprise_urls = ['https://github.source.internal.cba', 'https://github.ai.cba', ' https://vcs.cnsga.aws.prod.au.internal.cba']
" Neoterm config ====
let g:neoterm_repl_python='python3'
let g:neoterm_bracketed_paste=1
let g:neoterm_autoscroll=1
let g:neoterm_default_mod='vertical rightbelow'
let g:neoterm_autoinsert=1
nnoremap <LocalLeader>t :Tnew<cr>
nnoremap <LocalLeader>l :TREPLSendLine<cr>
" nnoremap <LocalLeader>l <Plug>(neoterm-repl-send-line)
vnoremap <LocalLeader>l :TREPLSendLine<cr>gv

" tnoremap <Esc> <C-\><C-n>
" tnoremap <C-j> <C-\><C-n><C-w>l
" tnoremap <C-k> <C-\><C-n><C-w>h
tnoremap <C-j> <C-w>l
tnoremap <C-k> <C-w>h
" ===

" Activate rainbow brackets
let g:rainbow_active = 1

noremap <Space> <Nop>
map <Space> <Leader>

let g:pymode_lint_ignore = 'E111,W0311'
let g:vim_markdown_folding_style_pythonic = 1
