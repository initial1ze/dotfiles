let g:asyncrun_open = 2
let g:cphdir = "/home/initial1ze/code/cf"
let g:cphlang = "cpp"
let g:cphborder = "floating"

function! Cpsession()
    if expand('%:p') == "/home/initial1ze/code/cf/main.cpp"
        cclose
    endif
endfunction

let g:asyncrun_status = "stopped"
function AutoCompile()
    if expand('%:p') == "/home/initial1ze/code/cf/main.cpp"
        AsyncTask file-build
    endif
endfunction

function! s:win_by_bufname(bufname)
	let bufmap = map(range(1, winnr('$')), '[bufname(winbufnr(v:val)), v:val]')
	let thewindow = filter(bufmap, 'v:val[0] =~ a:bufname')[0][1]
	execute thewindow 'wincmd w'
endfunction

command! -nargs=* WinGo call s:win_by_bufname(<q-args>)

function AsyncWrapper() 
    AsyncTask file-run
    call asyncrun#quickfix_toggle(2)
    call s:win_by_bufname("output")
    silent e!
    call s:win_by_bufname("error")
    silent e!
    call s:win_by_bufname("main.cpp")
    call asyncrun#quickfix_toggle(2)
endfunction


augroup cp
      autocmd VimLeavePre main.cpp call Cpsession()
      autocmd BufWritePost main.cpp call AutoCompile()
augroup END

" F10 to toggle quickfix window
nnoremap <silent> <F10> :call asyncrun#quickfix_toggle(2)<cr>
" Run the task
nnoremap <silent> <space>a :call AsyncWrapper()<cr>
nnoremap <silent> <space>c :AsyncTask file-build<cr>
