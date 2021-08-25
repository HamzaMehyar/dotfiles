if &compatible
set nocompatible
end

filetype off


"======================================================================
"                          Global
" =====================================================================
let mapleader = ","
let g:mapleader = ","





"======================================================================
"                          ALE
" =====================================================================

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '!'

highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_cpp_gcc_options = ' -std=c++17 -Wno-unused -i system /usr/include/c++/10.2.0/ -I /usr/include/c++/10.2.0/ '


" =====================================================================
"                         AutoFormat
" =====================================================================
"  au BufWrite * :Autoformat "AutoFormats on save



" =====================================================================
"                         Airline
" =====================================================================

let g:airline_theme="base16_colors"
let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts            = 1


" =====================================================================
"                         Clojure Format CLJFMT
" =====================================================================

let g:clj_fmt_autosave = 1
"let g:clj_fmt_config = '{:indentation? true, :remove-surrounding-whitespace? false, :remove-trailing-whitespace? true, :remove-consecutive-blank-lines? true, :insert-missing-whitespace? true, :align-associative? true}' ", :indents {#"^\w" [[:inner 0]], #".*" [[:inner 0]]}
"


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
let &grepprg= 'ag --nogroup  --ignore ' . shellescape(".*log,.*tag,*.o,*.obj,*~,*.pyc,.git/**,tags,cscope*")
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
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
"                          End 
" =====================================================================


filetype on

