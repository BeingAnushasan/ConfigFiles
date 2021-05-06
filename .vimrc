syntax on
set title
set number
set nocompatible
set relativenumber
set smartindent
set noswapfile
set incsearch
set autoindent
set ruler
set background=dark
set mouse=nicr
set showmatch " show matching braces

set undofile
set undodir=/tmp

"256 color
set t_Co=256

"show tabs and spaces
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
set shiftwidth=4
set softtabstop=4
set tabstop=4

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

"bash-like-tab-completion-for-file-names
set wildmode=longest,list,full
set wildmenu

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
"set hlsearch " highlight search results
set incsearch " set incremental search, like modern browsers


"added plugins
call plug#begin('~/.vim/plugged')

" File tree
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'chrisbra/Colorizer'			" :ColorToggle  for showing color 
"Plug 'leafoftree/vim-vue-plugin'

" NerdTree configs
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize = 35
let NERDTreeQuitOnOpen=1
let NERDTreeChDirMode=2
"autocmd VimEnter * NERDTree  "Keep nerdtree open at start
map <C-n> :NERDTreeToggle<CR>
highlight! link NERDTreeFlags NERDTreeDir

"lightline colorful indicator config
set laststatus=2
"let g:lightline = {'colorscheme': 'darcula'}

let g:lightline = {
            \   'colorscheme': 'dracula',
        \ }

"devicons config
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true

call plug#end()

"copy and paste from anywhere
vnoremap <C-c> "+y
map <C-p> "+p

" Shortcutting split navigation
map <C-Left> <C-w>h
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Right> <C-w>l

"change tabs with ctrl+arrow
map <C-Right> :tabn<cr>
map <C-Left> :tabp<cr>
