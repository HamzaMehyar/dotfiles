if &compatible
  set nocompatible
end

filetype off

call plug#begin()

Plug 'gmarik/Vundle.vim'

" =====================================================================
"                          Colors And Appearance
" =====================================================================
Plug 'tyrannicaltoucan/vim-quantum'          " Provides a set of utilities and enhancements for Vim.
Plug 'vim-airline/vim-airline'               " Nice status bar (tab line) at the bottom of the Vim window.
Plug 'vim-airline/vim-airline-themes'        " Themes for the Airline status bar, allowing customization.
Plug 'ryanoasis/vim-devicons'                " Displays file icons in Vim, making it easier to recognize file types.
Plug 'ntpeters/vim-better-whitespace'        " Helps track and manage whitespace in the text.
Plug 'Yggdroot/indentLine'                   " Shows vertical lines to indicate the indentation level in the code.
Plug 'preservim/tagbar'                      " Allows you to browse the tags (functions, classes, etc.) of the current file in a sidebar.
Plug 'jeffkreeftmeijer/vim-numbertoggle'     " Toggles line numbers in Vim, allowing you to show/hide line numbers.
Plug 'simeji/winresizer' " Adds an easy Resize mode

" =====================================================================
"                          Files and Search
" =====================================================================

Plug 'kien/ctrlp.vim'                  " Fuzzy file finder.
Plug 'scrooloose/nerdtree'             " File structure tree.
Plug 'dbakker/vim-projectroot'         " Sets project root to git init.
Plug 'dinhhuy258/vim-local-history'    " Local history for files.
Plug 'bogado/file-line'                " Allows using the format filename:linenumber, when opening vim

" =====================================================================
"                          Syntax and linting
" =====================================================================

Plug 'vim-scripts/matchit.zip'     " jumping betwen keywords and tags
Plug 'vim-scripts/Tabular'         " Line up text :Tab /=
Plug 'dense-analysis/ale'          " Linting Engine
Plug 'Chiel92/vim-autoformat'      " Format on save
Plug 'OmniSharp/omnisharp-vim'

" =====================================================================
"                          AutoComplete and snippits
" =====================================================================
Plug 'ervandew/supertab'           " tab to cycle autocomplete
" Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
" Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'shinglyu/vim-codespell'      " language spell checker
"=====================================================================
"                          Ruby
" =====================================================================
Plug 'vim-ruby/vim-ruby'

"=====================================================================
"                          Rust
" =====================================================================
Plug 'rust-lang/rust.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'

"=====================================================================
"                          Python
" =====================================================================

" =====================================================================
"                          Clojure
" =====================================================================

Plug 'guns/vim-clojure-static'
Plug 'gberenfield/cljfold.vim' "provides folding for clojure
Plug 'guns/vim-clojure-highlight'
Plug 'venantius/vim-cljfmt' "clojure format tool
Plug 'Olical/conjure'
Plug 'snoe/clj-refactor.nvim'
Plug 'clojure-vim/async-clj-omni'
Plug 'tpope/vim-fireplace'
Plug 'snoe/clj-refactor.nvim'
Plug 'clojure-emacs/refactor-nrepl'

" =====================================================================
"                          Pairs & Comments
" =====================================================================

Plug 'jiangmiao/auto-pairs'     " Insert/delete {[( in pairs
Plug 'vim-scripts/tComment'     " Commenting on lines
Plug 'tpope/vim-surround'       " Modify surroundings with cs

" =====================================================================
"                          Git
" =====================================================================

Plug 'APZelos/blamer.nvim'
Plug 'tpope/vim-fugitive'         " Git wrapper

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

call plug#end()
filetype on
