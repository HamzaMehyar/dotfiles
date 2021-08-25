if &compatible
set nocompatible
end

filetype off

" CtrlP + Ctags
nnoremap <leader>. :CtrlPTag<cr>

" splits movement
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-w>l

" Exit insert mode
imap jj <esc>

" Help with moving between wrapped lines
nmap j gj
nmap k gk

" NERDTree
map <C-n> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>

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

" tComment
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>
" travel between splits using alt shift arrows
nnoremap <silent> <C-S-Right> <c-w>l
nnoremap <silent> <C-S-Left> <c-w>h
nnoremap <silent> <C-S-Up> <c-w>k
nnoremap <silent> <C-S-Down> <c-w>j


"maps upper-case for save quit and update
:command W update
:command X x
command! Q q


"noremap <Down>  jzz

" StripWhitespace
map ,,, :StripWhitespace<CR>

filetype on
