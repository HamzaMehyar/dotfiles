if &compatible
set nocompatible
end

filetype off



" =====================================================================
"                          Sets tab title as FileName
" =====================================================================

function! SetTerminalTitle()
  let titleString = expand('%:t')
  if len(titleString) > 0
  let &titlestring = expand('%:t')

  let args = "\033];".&titlestring."\007"
  let cmd = 'silent !echo -e "'.args.'"'
  execute cmd

  redraw!
  endif
  endfunction

autocmd BufEnter * call SetTerminalTitle()
  set title
" =====================================================================
"                           Persistant Undo
" =====================================================================
if !isdirectory("/tmp/.vim-undo-dir")
    call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile

" =====================================================================
"                           Appearance & Colour
" =====================================================================

colorscheme base16-default-dark

set termguicolors

set background=dark
set t_Co=256
" set term=screen-256color

set cursorline                                               " Highlight current cursor line
"set cursorcolumn                                             " Highlight current cursor column VERY LAGGY WHEN SCROLLING
set lazyredraw                                                " makes cursorline less laggy
hi CursorColumn cterm=NONE ctermbg=black                     " Set a vertical bar for the cursor

set hlsearch
set incsearch
hi Search ctermfg=green ctermbg=NONE cterm=underline         " Search results are coloured and underlined

" =====================================================================
"                              vim Settings
" =====================================================================

set clipboard=unnamed,unnamedplus
set shell=/bin/zsh
set sh=zsh
set noswapfile                                               " Don't create .swp files
set nobackup                                                 " Don't create <file>~ backup files
set showmatch                                                " Flashes matching brackets or parentheses
set history=50                                               " Just remember last 50 commands
set laststatus=2                                             " Always display the status line
set ruler                                                    " Show the cursor position all the time
set scrolloff=7                                              " Keep 7 lines at the top or bottom displayed while scrolling
set foldcolumn=0
set autoread                                                 " Refresh any unchanged files
set number                                                   " Show line numbers
set relativenumber                                           " Show relative line numbers
set showcmd                                                  " Display incomplete commands
set ignorecase                                               " Ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase
set backspace=2                                              " Backspace deletes like most programs in insert mode
set tabstop=2                                                " Tabs are always 2 spaces
set expandtab                                                " Expand tabs into spaces
set shiftwidth=2                                             " Reindent with 2 spaces (using <<)
set list                                                     " Show invisible chars
set listchars=""                                             " Reset listchars
set list listchars=tab:»·,trail:·                            " Set listchars for tabs and trailing spaces
set splitbelow                                               " Split panes to below
set splitright                                               " Split panes to right
set foldmethod=indent                                        " Folding performance
set foldlevelstart=999                                       " Only auto-fold if file > 999 levels
" set tags=tags                                                " Look for the ctags in the project directory.
set statusline=%<%f\ %h%m%r%=\ %-14.(%l,%c%V%)\ %P%#warningmsg#%{SyntasticStatuslineFlag()}%*
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}


let $TMPDIR = $HOME."/tmp" "makes temp in home
set noshelltemp
filetype plugin indent on

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  autocmd BufReadPost *
        \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md setlocal filetype=ghmarkdown
  autocmd BufRead,BufNewFile *.jflex setlocal filetype=java
  autocmd BufRead,BufNewFile *.cup setlocal filetype=java

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell

  " Automatically wrap at 72 characters and spell check git commit messages
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType gitcommit setlocal spell

  " Allow stylesheets to autocomplete hyphenated words
  autocmd FileType css,scss,sass setlocal iskeyword+=-
augroup END

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif




" =====================================================================
"                          End 
" =====================================================================


filetype on

