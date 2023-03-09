function! s:deleteCurrentFile() abort
  call VSCodeNotify('workbench.files.action.showActiveFileInExplorer')
  call VSCodeCall('deleteFile')
endfunction
function! s:renameFile() abort
  call VSCodeCall('revealInExplorer')
  call VSCodeCall('renameFile')
endfunction
nnoremap <space>ff <Cmd>call VSCodeNotify('file-browser.open')<CR>
nnoremap <space>fl <Cmd>call VSCodeNotify('workbench.action.editor.changeLanguageMode')<CR>
nnoremap <space>fn <Cmd>call VSCodeNotify('explorer.newFile')<CR>
nnoremap <space>fo <Cmd>call VSCodeNotify('explorer.openWith')<CR>
nnoremap <space>fr <Cmd>call VSCodeNotify('workbench.action.openRecent')<CR>
nnoremap <space>fs <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
nnoremap <space>fw <Cmd>call VSCodeNotify('workbench.action.files.showOpenedFileInNewWindow')<CR>
nnoremap <space>fD	<Cmd>call <SID>deleteCurrentFile()<CR>
nnoremap <space>fL <Cmd>call VSCodeNotify('revealFileInOS')<CR>
nnoremap <space>fR <Cmd> call <SID>renameFile()<CR>
nnoremap <space>fS <Cmd>call VSCodeNotify('workbench.action.files.saveAll')<CR>
nnoremap <space>fT <Cmd>call VSCodeNotify('workbench.files.action.showActiveFileInExplorer')<CR>
"  ␣ f e	+Emacs/VSpaceCode	bindings	N/A
source $HOME/.config/nvim/config/vscode/space/+f/emacs.vim
"  ␣ f i	+Indentation	bindings	N/A
source $HOME/.config/nvim/config/vscode/space/+f/indentation.vim
"  ␣ f y	+Yank	bindings	N/A
source $HOME/.config/nvim/config/vscode/space/+f/yank.vim