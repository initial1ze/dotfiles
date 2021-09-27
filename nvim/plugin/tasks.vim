let g:asyncrun_open = 2

function! Cpsession()
    if expand('%:p') == "/home/initial1ze/Code/CF/main.cpp"
        cclose
        mks!
    endif
endfunction

let g:asyncrun_status = "stopped"
function AutoCompile()
    if expand('%:p') == "/home/initial1ze/Code/CF/main.cpp"
        AsyncTask file-build
    endif
endfunction

function AsyncWrapper() 
    AsyncTask file-run
    call asyncrun#quickfix_toggle(2)
    wincmd l 
    2wincmd j
    silent e! output
    wincmd k 
    2wincmd l
    silent e! error
    3wincmd h
    call asyncrun#quickfix_toggle(2)
endfunction

function InputHandler() 
    if getcwd() == "/home/initial1ze/Code/CF"
        w
        call AsyncWrapper() 
        wincmd l
        2wincmd k
   endif
endfunction

function Move(timer)
        wincmd l
        2wincmd k
        silent e! input
        wincmd h
endfunction

function GetInput()
    if getcwd() == "/home/initial1ze/Code/CF"
        AsyncRun ./parse.py
        call timer_start(10000, 'Move')
   endif
endfunction

augroup cp
      autocmd VimLeavePre main.cpp call Cpsession()
      autocmd BufWritePost main.cpp call AutoCompile()
      autocmd BufWritePost,InsertLeave input call InputHandler()
augroup END

" F10 to toggle quickfix window
nnoremap <silent> <F10> :call asyncrun#quickfix_toggle(2)<cr>
" Source Session
nnoremap <silent> <space>s :source Session.vim<cr>
" Run the task
nnoremap <silent> <F6> :call AsyncWrapper()<cr>
" Fetch TestCases
nnoremap <silent> <F7> :call GetInput()<cr>
