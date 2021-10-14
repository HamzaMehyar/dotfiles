set nocompatible
set encoding=utf-8
set spelllang=en_gb
" =====================================================================
"                                Vundle
" =====================================================================

if filereadable(expand("~/.vim/cfg/bundles.vim"))
  source ~/.vim/cfg/bundles.vim
endif

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" =====================================================================
"                            Vim Settings 
" =====================================================================

if filereadable(expand("~/.vim/cfg/vimsettings.vim"))
  source ~/.vim/cfg/vimsettings.vim
endif

" =====================================================================
"                            Plugin Options
" =====================================================================

if filereadable(expand("~/.vim/cfg/options.vim"))
  source ~/.vim/cfg/options.vim
endif

" =====================================================================
"                              Mappings
" =====================================================================

if filereadable(expand("~/.vim/cfg/mappings.vim"))
  source ~/.vim/cfg/mappings.vim
endif
