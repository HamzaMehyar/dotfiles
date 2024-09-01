if &compatible
  set nocompatible
end

filetype off

"======================================================================
"                          Conjure
" =====================================================================
let g:conjure#log#hud#height = 0.25
let g:conjure#log#hud#width = 0.6
let g:conjure#log#wrap = 7
let g:syntastic_clojure_checkers = ['eastwood']

" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option('keyword_patterns', {'clojure': '[\w!$%&*+/:<=>?@\^_~\-\.#]*'})
" let g:deoplete#auto_complete_start_length = 0
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
let g:formatters_ruby = ['rubocop']

" =====================================================================
"                         Coq
" =====================================================================
let g:coq_settings = { 'auto_start': 'shut-up' }

" =====================================================================
"                         Airline
" =====================================================================

let g:airline_theme="base16_colors"
let g:airline#extensions#tabline#enabled = 1

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
let NERDTreeHighlightCursorline = 1
let NERDTreeShowHidden          = 1
let NERDTreeMapActivateNode     = '<CR>'
"======================================================================
"                          Ruby on Rails
"======================================================================
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
let g:ruby_fold_lines_limit = 700

" =====================================================================
"                          vim local history
" =====================================================================
"
if !isdirectory($HOME."/.vim/.vim-undo-dir")
    call mkdir($HOME."/.vim/.vim-undo-dir", "", 0700)
endif

let g:local_history_path = $HOME."/.vim/.vim-undo-dir"
let g:local_history_max_changes = 3000
let g:local_history_new_change_delay = 30

filetype on

let g:ale_python_pylint_executable = $HOME."/anaconda3/bin/pylint"
let g:ale_python_flake8_executable = $HOME."/anaconda3/bin/flake8"
let g:ale_linters = {'python': ['pylint']}
