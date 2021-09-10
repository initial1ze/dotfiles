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
