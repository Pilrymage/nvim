function! s:switchEditor(...) abort
    let count = a:1
    let direction = a:2
    for i in range(1, count ? count : 1)
        call VSCodeCall(direction ==# 'next' ? 'workbench.action.nextEditorInGroup' : 'workbench.action.previousEditorInGroup')
    endfor
endfunction


nnoremap <leader>tn <Cmd>call <SID>switchEditor(v:count, 'next')<CR>
xnoremap <leader>tn <Cmd>call <SID>switchEditor(v:count, 'next')<CR>
nnoremap <leader>tp <Cmd>call <SID>switchEditor(v:count, 'prev')<CR>
xnoremap <leader>tp <Cmd>call <SID>switchEditor(v:count, 'prev')<CR>