syntax on
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

"bash-like-tab-completion-for-file-names
set wildmode=longest,list,full
set wildmenu

"added plugins
call plug#begin('~/.vim/plugged')

" File tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
"Plug 'leafoftree/vim-vue-plugin'


" NerdTree configs
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize = 35
let NERDTreeQuitOnOpen=1
map <C-n> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree  "Keep nerdtree open at start
highlight! link NERDTreeFlags NERDTreeDir


"lightline colorful indicator config
set laststatus=2
let g:lightline = {'colorscheme': 'darcula'}

"devicons config
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true

call plug#end()

" Shortcutting split navigation
map <C-Left> <C-w>h
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Right> <C-w>l
