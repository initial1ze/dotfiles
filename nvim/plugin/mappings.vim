" Substitute word under the cursor
" Forward Substitution
nnoremap c* /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn
" Backward Substitution
nnoremap c# ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN

" Delete word under the cursor
" Forward Deletion
nnoremap d* /\<<C-r>=expand('<cword>')<CR>\>\C<CR>``dgn
" Backward Deletion
nnoremap d# ?\<<C-r>=expand('<cword>')<CR>\>\C<CR>``dgN

" Move to beginning/end of a line
nnoremap H ^
nnoremap L $

" Indent what you just pasted
nnoremap <leader>< V`]<
nnoremap <leader>> V`]>

" Save and Quit
nnoremap <space>w :w<cr>
nnoremap <space>q :qall<cr>

" Jump to matching pair
nnoremap Q %

" Use Ctrl+j and Crtl+k to move blocks
" nnoremap <space>j :m .+1<CR>==
" nnoremap <space>k :m .-2<CR>==
" inoremap <space>j <Esc>:m .+1<CR>==gi
" inoremap <space>k <Esc>:m .-2<CR>==gi
" vnoremap <space>j :m '>+1<CR>gv=gv
" vnoremap <space>k :m '<-2<CR>gv=gv
