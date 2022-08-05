" https://github.com/junegunn/vim-plug
" Plugins
call plug#begin('~/local/share/nvim/plugged')
" Nerd Tree allow you to browse files throw vim.
" https://github.com/preservim/nerdtree.git
Plug 'preservim/nerdtree'
"" This adds icons for nerdtree
Plug 'ryanoasis/vim-devicons'
"" Syntax plugin 
"" https://github.com/vim-syntastic/syntastic.git
Plug 'vim-syntastic/syntastic'
"" LightLine is the status bar for vim
"" https://github.com/itchyny/lightline.vim.git
Plug 'itchyny/lightline.vim'
"" vim css color highlights the color for hex in vim files
"" https://github.com/ap/vim-css-color.git
"" Plug 'ap/vim-css-color'
"
"Plug 'rust-lang/rust.vim'
"
Plug 'arcticicestudio/nord-vim'


call plug#end()
colorscheme nord

" This is a CTRL-F keybinding to open NERD TREE
nmap <C-F> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeChDirMode=3
" ------------------------------------------------------------------------------------------------------
" VIM LightLine
" https://github.com/itchyny/lightline.vim/blob/master/colorscheme.md
" ------------------------------------------------------------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
" ------------------------------------------------------------------------------------------------------
" General Setup
" ------------------------------------------------------------------------------------------------------
nmap <C-t> :term<CR>
set list
set hidden
set smartcase " smartcase only matches when you specify a capital 
set ignorecase " otherwise ignore cases sensitivity.
set relativenumber "shows the distance from your line top and bottom
set expandtab
set shiftwidth=4
set tabstop=4
set number
set nowrap
set scrolloff=12
set sidescrolloff=12
set autoindent
set smartindent
"set termguicolors
set clipboard^=unnamed,unnamedplus
set shell=fish

syntax enable

set cursorline
set cursorcolumn
highlight CursorLine cterm=bold ctermbg=235
highlight CursorColumn cterm=bold ctermbg=235

set wildmode=longest,list,full

" remapping window movement keys to not include pressing w
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" remapping window exit key to not include pressing w
map <C-q> <C-w>q

map <C-S>left <C-w><
map <C-S>down <C-w>-
noremap <C-S>up :resize -5<cr>
noremap <C-S>right :vertical resize +5<cr>
