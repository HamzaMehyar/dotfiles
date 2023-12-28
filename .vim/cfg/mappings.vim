if &compatible
  set nocompatible
end

filetype off

" CtrlP + Ctags
nnoremap <leader>. :CtrlP<cr>

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

nmap j gj
nmap k gk
map <C-s> ct_

map <F3> :NERDTreeFind<CR>
map <Tab> :NERDTreeToggle<CR>

map <C-n> :Autoformat<CR>

vmap <C-c> "+y

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

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

"Conjure
map <leader>k :let g:conjure#log#hud#height+=0.1<cr>
map <leader>i :let g:conjure#log#hud#height-=0.1<cr>
map <leader>j :let g:conjure#log#hud#width+=0.1<cr>
map <leader>l :let g:conjure#log#hud#width-=0.1<cr>

let mapleader = ","
let g:mapleader = ","


filetype on
