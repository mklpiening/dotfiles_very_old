call plug#begin('~/.config/nvim/plugged')


" General settings {
    set nocompatible

    set clipboard=unnamedplus
    set mouse=a

    set ignorecase
    set smartcase
    set hlsearch
    set incsearch

    set expandtab
    set tabstop=4
    set shiftwidth=4

    set rnu
" }


" Visual settings {
    set number
" }

" Autocomplete / Linting {
    Plug 'ycm-core/YouCompleteMe'
    let g:ycm_use_clangd = 0
    let g:ycm_add_preview_to_completeopt = 0
    let g:ycm_autoclose_preview_window_after_completion = 0
    let g:ycm_autoclose_preview_window_after_insertion = 0
" }


" plugins {
    " nerdtree {
        Plug 'scrooloose/nerdtree'
        
        let NERDTreeDirArrowExpandable = "+"
        let NERDTreeDirArrowCollapsible = "-"

        let NERDTreeShowHidden = 1
        let NERDTreeQuitOnOpen=1
    " }

    " Doxygen {
        Plug 'vim-scripts/DoxygenToolkit.vim'
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
   
    " Auto close {
        Plug 'Raimondi/delimitMate'
    "}

    " Seamless tmux navigation { 
        Plug 'christoomey/vim-tmux-navigator'
        
        let g:tmux_navigator_no_mappings = 1

        nnoremap <silent> <S-Left> :TmuxNavigateLeft<cr>
        nnoremap <silent> <S-Down> :TmuxNavigateDown<cr>
        nnoremap <silent> <S-Up> :TmuxNavigateUp<cr>
        nnoremap <silent> <S-Right> :TmuxNavigateRight<cr>
        nnoremap <silent> <S-\> :TmuxNavigatePrevious<cr>
    " }
" } 


" Shortcuts {
    map <C-n> :NERDTreeToggle<cr>

    map <C-p> :pclose<cr>
   
    function FormatFile()
        let l:lines="all"
        py3f /usr/share/clang/clang-format.py
    endfunction

    map <C-l> :py3f /usr/share/clang/clang-format.py<cr>
    map <C-K> :call FormatFile()<cr>

    map gh :YcmCompleter GoToDeclaration<cr>
    map gs :YcmCompleter GoToDefinition<cr>
    map gi :YcmCompleter GoToInclude<cr>
" }


call plug#end()


colorscheme dim
