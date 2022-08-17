if &compatible
  set nocompatible
end

filetype off

" CtrlP + Ctags
nnoremap <leader>. :CtrlPCurFile<cr>

" splits movement
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-w>l

"disable ex mode
:nnoremap gQ <Nop>
" Exit insert mode
imap jj <esc>
nnoremap q: <nop>
nnoremap Q <nop>

"Help with moving between wrapped lines
nmap j gj
nmap k gk
map <C-s> ct_

" hamza_ram
" NERDTree
" map <C-n> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>

map <C-n> :Autoformat<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

" RSpec
"map <Leader>t :call RunCurrentSpecFile()<CR>
"map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>l :call RunLastSpec()<CR>
"map <Leader>a :call RunAllSpecs()<CR>

" Silver Searcherrrrr
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap \ :Ag<SPACE>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

inoremap <silent> <PageUp> <Nop>
inoremap <silent> <PageDown> <Nop>
nnoremap <silent> <PageUp> <Nop>
nnoremap <silent> <PageDown> <Nop>
" tComment
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>
" travel between splits using alt shift arrows
nnoremap <silent> <C-S-Right> <c-w>l
nnoremap <silent> <C-S-Left> <c-w>h
nnoremap <silent> <C-S-Up> <c-w>k
nnoremap <silent> <C-S-Down> <c-w>j
let maplocalleader = " "

"maps upper-case for save quit and update
:command W update
:command X x
command! Q q


"easy mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"noremap <Down>  jzz

" StripWhitespace
map ,,, :StripWhitespace<CR>

"g to help with numbering increase
nnoremap g<C-A> :<C-U>s/[01]\+/\=printf('%0'.len(submatch(0)).'s',magnum#Int(submatch(0),2).Add(magnum#Int(v:count1)).String(2))/<CR>
" Map space for search
" nnoremap <space> /
filetype on
