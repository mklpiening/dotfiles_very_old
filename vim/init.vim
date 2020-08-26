" Plugins {
    call plug#begin('~/.vim/plugged')
 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'scrooloose/nerdtree'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'vim-scripts/DoxygenToolkit.vim'
    Plug 'rhysd/vim-clang-format'
 
    " Syntax highlighting {
        "Plug 'jackguo380/vim-lsp-cxx-highlight'
        Plug 'vim-python/python-syntax'
        Plug 'sirtaj/vim-openscad'

        Plug 'octol/vim-cpp-enhanced-highlight'
    " }
    
    " Auto close {
        Plug 'Raimondi/delimitMate'
    " }

    " Status Bar {
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
    " }

    Plug 'terryma/vim-smooth-scroll'

    Plug 'noahfrederick/vim-noctu'
    
    Plug 'wincent/command-t', {
    \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
    \ }

    " Plug 'ryanoasis/vim-devicons'
    set encoding=UTF-8

    call plug#end()
" }

" General settings {
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
    colorscheme noctu
    
    set number

    " Current Line {
        set cursorline
        :hi CursorLine   cterm=bold
        :hi CursorLineNr cterm=bold ctermfg=black ctermbg=white
        :hi LineNr       ctermfg=grey
    " }

    " Syntax highlighting {
        " python {
            let g:python_highlight_all = 1
        " }

        " c++ {
            let g:cpp_class_scope_highlight = 1
            let g:cpp_member_variable_highlight = 1
        " }
    " }

    " Status Bar {
       let g:airline_theme='base16'
    " }
    
    autocmd VimLeave * call system("xsel -ib", getreg('+'))
" }

" Clang format {
    let g:clang_format#detect_style_file = 1
" }

" Autocomplete / Linting {
    " if hidden is not set, TextEdit might fail.
    set hidden

    " Some servers have issues with backup files, see #649
    set nobackup
    set nowritebackup

    " You will have bad experience for diagnostic messages when it's default 4000.
    set updatetime=300

    " don't give |ins-completion-menu| messages.
    set shortmess+=c

    " always show signcolumns
    set signcolumn=yes

    " Use tab for trigger completion with characters ahead and navigate.
    " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
    inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " Use <c-space> to trigger completion.
    inoremap <silent><expr> <C-space> coc#refresh()
    nnoremap <silent><expr> <C-space> coc#refresh()

    " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
    " Coc only does snippet and additional edit on confirm.
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

    " Remap keys for gotos
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    " Use K to show documentation in preview window
    nnoremap <silent> K :call <SID>show_documentation()<CR>

    function! s:show_documentation()
      if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
      else
        call CocAction('doHover')
      endif
    endfunction

    " Highlight symbol under cursor on CursorHold
    autocmd CursorHold * silent call CocActionAsync('highlight')

    " Remap for rename current word
    nmap <leader>rn <Plug>(coc-rename)

    augroup mygroup
      autocmd!
      " Setup formatexpr specified filetype(s).
      autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
      " Update signature help on jump placeholder
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end

    " Remap for do codeAction of current line
    nmap <leader>ac  <Plug>(coc-codeaction)
    " Fix autofix problem of current line
    nmap <leader>qf  <Plug>(coc-fix-current)

    " Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
    nmap <silent> <TAB> <Plug>(coc-range-select)
    xmap <silent> <TAB> <Plug>(coc-range-select)
    xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

    " Use `:Format` to format current buffer
    command! -nargs=0 Format :call CocAction('format')

    " Use `:Fold` to fold current buffer
    command! -nargs=? Fold :call     CocAction('fold', <f-args>)

    " use `:OR` for organize import of current buffer
    command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

    " Add status line support, for integration with other plugin, checkout `:h coc-status`
    set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
    
    " keep delimitMate enables
    imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<Plug>delimitMateCR"
" }

" Nerdtree {
    let NERDTreeDirArrowExpandable = "+"
    let NERDTreeDirArrowCollapsible = "-"

    let NERDTreeShowHidden = 1
    let NERDTreeQuitOnOpen=1
" }

" Seamless tmux navigation {
    let g:tmux_navigator_no_mappings = 1

    nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
    nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
    nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
    nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
   nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>
" }

" Shortcuts {
    " Nerdtree {
        map <C-n> :NERDTreeToggle<cr>
    " }

    " YouCompleteMe {
        map <C-p> :pclose<cr>

        map gh :YcmCompleter GoToDeclaration<cr>
        map gs :YcmCompleter GoToDefinition<cr>
        map gi :YcmCompleter GoToInclude<cr>
    " }
 
    " ClangFormat {
        map <C-S-i> :ClangFormat<cr>
    " }

    " map r R

    " Copy to unnamedplus register {
        " the default register stays unchanged to not 
        " override register when deleting text 

        noremap y "+y
        noremap yy "+yy

        noremap p "+p 
        noremap P "+P 

        noremap x "+x 
    " }
    
    " Smooth Scrolling {  
        noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 5, 2)<cr>
        noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 5, 2)<cr>
        noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 5, 4)<cr>
        noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 5, 4)<cr>
    " }
" }
