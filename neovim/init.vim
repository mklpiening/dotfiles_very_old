call plug#begin('~/.config/nvim/plugged')


" General settings {
    set clipboard=unnamedplus
    set mouse=a

    set ignorecase
    set smartcase
    set hlsearch
    set incsearch

    set expandtab
    set tabstop=4
    set shiftwidth=4
" }


" Visual settings {
    set number
" }


" plugins {
    Plug 'scrooloose/nerdtree'

    " Autocompletion
        Plug 'Shougo/deoplete.nvim'
        Plug 'zchee/deoplete-clang'
        
        let g:deoplete#enable_at_startup = 1
    " }

" } 


" Shortcuts {
    map <C-n> :NERDTreeToggle<CR>
" }


call plug#end()
