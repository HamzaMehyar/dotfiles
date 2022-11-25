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

" Plugin 'psliwka/vim-smoothie'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'vim-airline/vim-airline'               " Nice status bar
Plugin 'vim-airline/vim-airline-themes'        " Themes for airline
Plugin 'ryanoasis/vim-devicons'
Plugin 'ntpeters/vim-better-whitespace'        " Tracks whitespace
Plugin 'Yggdroot/indentLine'                   " indents line
Plugin 'preservim/tagbar'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'     " Number toggling

"Plugin 'glepnir/galaxyline.nvim'
"Plugin 'jtratner/vim-flavored-markdown'        " Highlighting for Markdown snippets
let g:blamer_enabled = 1
" =====================================================================
"                          Windows
" =====================================================================

Plugin 'simeji/winresizer'

" =====================================================================
"                          Files and Search
" =====================================================================

Plugin 'ggreer/the_silver_searcher'     " Silverrrrrrrrrrrrr searcherrr :Ag
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'            " File structure tree
Plugin 'dbakker/vim-projectroot'        " sets project root to git init
Plugin 'dinhhuy258/vim-local-history'

" =====================================================================
"                          Syntax and linting
" =====================================================================

Plugin 'vim-scripts/Tabular'         " Line up text :Tab /=
Plugin 'dense-analysis/ale'          " syntax check
Plugin 'Chiel92/vim-autoformat'      " Format on save
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'SirVer/ultisnips'
" Plugin 'vim-syntastic/syntastic'

" =====================================================================
"                          AutoComplete and snippits
" =====================================================================

" Plugin 'https://gitlab.com/mixedCase/deoplete-omnisharp.git'
" Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }     " Auto Complete

Plugin 'Valloric/YouCompleteMe'                                     " Auto Complete
Plugin 'ervandew/supertab'                                          " tab to cycle autocomplete
Plugin 'honza/vim-snippets'                                         " Snippets are separated from the engine
Plugin 'shinglyu/vim-codespell' "language spell checker
"=====================================================================
"                          Ruby
" =====================================================================
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-utils/vim-ruby-fold'

" =====================================================================
"                          Clojure
" =====================================================================

Plugin 'guns/vim-clojure-static.git'
Plugin 'gberenfield/cljfold.vim' "provides folding for clojure
Plugin 'guns/vim-clojure-highlight.git'
Plugin 'venantius/vim-cljfmt' "clojure format tool
Plugin 'Olical/conjure'
Plugin 'snoe/clj-refactor.nvim'

Plugin 'venantius/vim-eastwood' "clojure linting
Plugin 'tpope/vim-fireplace.git'
" Plugin 'liquidz/vim-iced'
" Plugin 'dgrnbrg/redl'
" Plugin 'tpope/vim-leiningen.git'
" Plugin 'tpope/vim-dispatch.git'
" Plugin 'tpope/vim-salve.git'
" Plugin 'tpope/vim-sexp-mappings-for-regular-people'
" Plugin 'guns/vim-sexp'

" =====================================================================
"                          Numbers
" =====================================================================

Plugin 'glts/vim-magnum'     " Insert/delete {[( in pairs
" =====================================================================
"                          Pairs & Comments
" =====================================================================

Plugin 'jiangmiao/auto-pairs'     " Insert/delete {[( in pairs
Plugin 'vim-scripts/tComment'     " Commenting on lines
Plugin 'tpope/vim-surround'       " Modify surroundings with cs
Plugin 'tpope/vim-unimpaired'     " Complementary mapping pairs

" =====================================================================
"                          Git
" =====================================================================

Plugin 'APZelos/blamer.nvim'
Plugin 'tpope/vim-fugitive'         " Git wrapper
Plugin 'airblade/vim-gitgutter'     " Show git diff on the right

" =====================================================================
"                         HTML
" =====================================================================

Plugin 'vim-scripts/matchit.zip'     " jumping betwen keywords and tags
Plugin 'mattn/emmet-vim'             " Emmet support in vim [C-y + ,]

" =====================================================================
"                         End
" =====================================================================

call vundle#end()
filetype on
