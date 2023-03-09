function s:saveAllandClose() abort
  call VSCodeNotify('workbench.action.files.saveAll')
  call VSCodeNotify('workbench.action.closeWindow')
endfunction
nnoremap <space>qf <Cmd>call VSCodeNotify('workbench.action.closeWindow')<CR>
nnoremap <space>qq <Cmd>call VSCodeNotify('workbench.action.closeWindow')<CR>
nnoremap <space>qr <Cmd>call VSCodeNotify('workbench.action.reloadWindow')<CR>
nnoremap <space>qS <Cmd>call <SID>saveAllandClose()<CR>

nnoremap <space>qQ <Cmd>call VSCodeNotify('workbench.action.quit')<CR>
nnoremap <space>qR <Cmd>call VSCodeNotify('workbench.action.reloadWindowWithExtensionsDisabled')<CR>
