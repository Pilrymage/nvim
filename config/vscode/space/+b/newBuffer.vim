function! s:newSplit(...)
  let direction = a:1
  if (direction == 'up')
    call VSCodeNotify('workbench.action.splitEditorUp')
  else 
    if (direction == 'down')
     call VSCodeNotify('workbench.action.splitEditorDown') 
    else 
      if (direction == 'left')
       call VSCodeNotify('workbench.action.splitEditorLeft') 
      else 
        if (direction == 'right')
          call VSCodeNotify('workbench.action.splitEditorRight')
          
        endif
      endif
    endif
  endif
  call VSCodeNotify('workbench.action.files.newUntitledFile')
  call VSCodeNotify('workbench.action.closeOtherEditors')
  endfunction
  

nnoremap <space>bMu <Cmd>call <SID>newSplit('up')<CR>
nnoremap <space>bMe <Cmd>call <SID>newSplit('down')<CR>
nnoremap <space>bMn <Cmd>call <SID>newSplit('left')<CR>
nnoremap <space>bMi <Cmd>call <SID>newSplit('right')<CR>
nnoremap <space>bMm <Cmd>call VSCodeNotify('workbench.action.files.newUntitledFile')<CR>