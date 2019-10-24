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

" Autocomplete / Linting {
    Plug 'ycm-core/YouCompleteMe'
    let g:ycm_use_clangd = 0
" }


" plugins {
    " nerdtree {
        Plug 'scrooloose/nerdtree'
        
        let NERDTreeDirArrowExpandable = "+"
        let NERDTreeDirArrowCollapsible = "-"

        let NERDTreeShowHidden = 1
        let NERDTreeQuitOnOpen=1
    " }

    " Airline {
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

        let g:airline_theme='minimalist'
    " }

    " Syntax highlight {
        Plug 'octol/vim-cpp-enhanced-highlight'
        let g:cpp_class_scope_highlight = 1
        let g:cpp_member_variable_highlight = 1
        let g:cpp_class_decl_highlight = 1
        let g:cpp_experimental_simple_template_highlight = 1
        let g:cpp_concepts_highlight = 1
            
        Plug 'jeffkreeftmeijer/vim-dim'
        
        let g:load_doxygen_syntax=1
    " }
    
    Plug 'Townk/vim-autoclose'
" } 


" Shortcuts {
    map <C-n> :NERDTreeToggle<cr>

    map <C-l> :py3f /usr/share/clang/clang-format.py<cr>

    map gh :YcmCompleter GoToDeclaration<cr>
    map gs :YcmCompleter GoToDefinition<cr>
    map gi :YcmCompleter GoToInclude<cr>
" }


call plug#end()


colorscheme dim
