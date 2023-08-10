if &compatible
  set nocompatible
end

filetype off


"======================================================================
"                          Global
" =====================================================================
let mapleader = ","
let g:mapleader = ","


"
" Folding
let g:ruby_fold_lines_limit = 700
"======================================================================
"                          Conjure
" =====================================================================
let g:conjure#log#hud#height = 0.25
let g:conjure#log#hud#width = 0.6
let g:conjure#log#wrap = 1
let g:syntastic_clojure_checkers = ['eastwood']

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('keyword_patterns', {'clojure': '[\w!$%&*+/:<=>?@\^_~\-\.#]*'})
"======================================================================
"                          ALE
" =====================================================================
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '!'

highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_cpp_gcc_options = ' -std=c++17 -Wno-unused -i system /usr/include/c++/10.2.0/ -I /usr/include/c++/10.2.0/ '
let g:ale_linters = {'clojure': ['clj-kondo']}

" =====================================================================
"                         AutoFormat
" =====================================================================
" au BufWrite * :Autoformat "AutoFormats on save
let g:formatters_ruby = ['rubocop']

" =====================================================================
"                         Syntastic
" =====================================================================
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_warning_symbol = '!'
" let g:syntastic_error_symbol = '✘'
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_clojure_checkers = ['eastwood']
" =====================================================================
"                         Airline
" =====================================================================

let g:airline_theme="base16_colors"
let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts            = 1


" =====================================================================
"                         Clojure Format CLJFMT
" =====================================================================
autocmd User FireplacePreConnect call fireplace#register_port_file(expand('~/.lein/repl-port'), '/tmp')
let g:clj_fmt_autosave = 0
let g:clj_fmt_config = '{:indentation? true, :remove-surrounding-whitespace? false, :remove-trailing-whitespace? true, :remove-consecutive-blank-lines? true, :insert-missing-whitespace? true, :align-associative? true}' ", :indents {#"^\w" [[:inner 0]], #".*" [[:inner 0]]}



"======================================================================
"                          Nerdtree
"======================================================================
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.meta$', '\~$']
let g:NERDTreeQuitOnOpen          = 1
let NERDChristmasTree           = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeShowHidden          = 1
let NERDTreeMapActivateNode     = '<CR>'


"======================================================================
"                          Ruby on Rails
"======================================================================
" rails.vim
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

"======================================================================
"                          Silver Searcher
"======================================================================
let &grepprg= 'ag --nogroup  --ignore ' . shellescape(".*html,.*haml,.*js,.*cljs,.*log,.*tag,*.o,*.obj,*~,*.pyc,.git/**,tags,cscope*")
let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" --ignore "*.html" --ignore "*.haml"'
let g:ctrlp_use_command = 0

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

"======================================================================
"                          UltiSnip
"======================================================================
let g:UltiSnipsEditSplit           = "vertical"
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
" let g:UltiSnipsUsePythonVersion    = 2.7


" =====================================================================
"                          vim local history
" =====================================================================
"
if !isdirectory($HOME."/.vim/.vim-undo-dir")
    call mkdir($HOME."/.vim/.vim-undo-dir", "", 0700)
endif

let g:local_history_path = $HOME."/.vim/.vim-undo-dir"
let g:local_history_max_changes = 100
let g:local_history_new_change_delay = 30

" =====================================================================
"                          YCM
" =====================================================================
"let g:ycm_global_ycm_extra_conf = '/root/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:deoplete#auto_complete_start_length = 0
"let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_popup = 1
let g:OmniSharp_popup_options = {
      \ 'winblend': 30,
      \ 'winhl': 'Normal:Normal'
      \}
let g:UltiSnipsSnippetDirectories=["UltiSnips", "UnitySnippets"]

" =====================================================================
"                          blamer
" =====================================================================
let g:blamer_enabled = 0

" =====================================================================
"                          End
" =====================================================================


" nnoremap <space> :NERDTreeToggle<CR>
filetype on

