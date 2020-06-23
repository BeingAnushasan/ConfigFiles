syntax on
set number
set relativenumber
set smartindent
set noswapfile
set incsearch


"added plugins
call plug#begin('~/.vim/plugged')

" File tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

map <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree  "Keep nerdtree open at start

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize = 40
let NERDTreeQuitOnOpen=1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
highlight! link NERDTreeFlags NERDTreeDir


" colorful indicator
Plug 'itchyny/lightline.vim'







call plug#end()

" Shortcutting split navigation
map <C-Left> <C-w>h
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Right> <C-w>l
