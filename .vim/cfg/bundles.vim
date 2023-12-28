if &compatible
  set nocompatible
end

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" =====================================================================
"                          Colors And Appearance
" =====================================================================
Plugin 'tyrannicaltoucan/vim-quantum'          " Provides a set of utilities and enhancements for Vim.
Plugin 'vim-airline/vim-airline'               " Nice status bar (tab line) at the bottom of the Vim window.
Plugin 'vim-airline/vim-airline-themes'        " Themes for the Airline status bar, allowing customization.
Plugin 'ryanoasis/vim-devicons'                " Displays file icons in Vim, making it easier to recognize file types.
Plugin 'ntpeters/vim-better-whitespace'        " Helps track and manage whitespace in the text.
Plugin 'Yggdroot/indentLine'                   " Shows vertical lines to indicate the indentation level in the code.
Plugin 'preservim/tagbar'                      " Allows you to browse the tags (functions, classes, etc.) of the current file in a sidebar.
Plugin 'jeffkreeftmeijer/vim-numbertoggle'     " Toggles line numbers in Vim, allowing you to show/hide line numbers.
Plugin 'simeji/winresizer' " Adds an easy Resize mode

" =====================================================================
"                          Files and Search
" =====================================================================

Plugin 'kien/ctrlp.vim'                  " Fuzzy file finder.
Plugin 'scrooloose/nerdtree'             " File structure tree.
Plugin 'dbakker/vim-projectroot'         " Sets project root to git init.
Plugin 'dinhhuy258/vim-local-history'    " Local history for files.
Plugin 'bogado/file-line'                " Allows using the format filename:linenumber, when opening vim

" =====================================================================
"                          Syntax and linting
" =====================================================================

Plugin 'vim-scripts/matchit.zip'     " jumping betwen keywords and tags
Plugin 'vim-scripts/Tabular'         " Line up text :Tab /=
Plugin 'dense-analysis/ale'          " Linting Engine
Plugin 'Chiel92/vim-autoformat'      " Format on save
Plugin 'OmniSharp/omnisharp-vim'

" =====================================================================
"                          AutoComplete and snippits
" =====================================================================
Plugin 'ervandew/supertab'           " tab to cycle autocomplete
Plugin 'shinglyu/vim-codespell'      " language spell checker
"=====================================================================
"                          Ruby
" =====================================================================
Plugin 'vim-ruby/vim-ruby'

"=====================================================================
"                          Rust
" =====================================================================
Plugin 'rust-lang/rust.vim'

" =====================================================================
"                          Clojure
" =====================================================================

Plugin 'guns/vim-clojure-static.git'
Plugin 'gberenfield/cljfold.vim' "provides folding for clojure
Plugin 'guns/vim-clojure-highlight.git'
Plugin 'venantius/vim-cljfmt' "clojure format tool
Plugin 'Olical/conjure'
Plugin 'snoe/clj-refactor.nvim'
Plugin 'clojure-vim/async-clj-omni'
Plugin 'tpope/vim-fireplace.git'

" =====================================================================
"                          Pairs & Comments
" =====================================================================

Plugin 'jiangmiao/auto-pairs'     " Insert/delete {[( in pairs
Plugin 'vim-scripts/tComment'     " Commenting on lines
Plugin 'tpope/vim-surround'       " Modify surroundings with cs

" =====================================================================
"                          Git
" =====================================================================

Plugin 'APZelos/blamer.nvim'
Plugin 'tpope/vim-fugitive'         " Git wrapper

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

call vundle#end()
filetype on
