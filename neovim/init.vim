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
    " nerdtree {
        Plug 'scrooloose/nerdtree'
        
        let NERDTreeDirArrowExpandable = "+"
        let NERDTreeDirArrowCollapsible = "-"

        let NERDTreeShowHidden = 1
    " }

    " Autocompletion {
        Plug 'Shougo/deoplete.nvim'
        Plug 'zchee/deoplete-clang'
        
        let g:deoplete#enable_at_startup = 1
    " }

" } 


" Shortcuts {
    map <C-n> :NERDTreeToggle<CR>

    map <C-I> :py3f /usr/share/clang/clang-format.py<cr>
    map <C-i> :%py3f /usr/share/clang/clang-format.py<cr>
" }


call plug#end()
