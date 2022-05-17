set nocompatible
set encoding=utf-8
set spelllang=en_gb

" =====================================================================
"                                Hamza's vim settings
" =====================================================================
"
" =====================================================================
"                                Plugins
" =====================================================================

if filereadable(expand("~/.vim/cfg/bundles.vim"))
  source ~/.vim/cfg/bundles.vim
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
