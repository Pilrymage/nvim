let codeConf = '$HOME/.config/nvim/config/vscode/space/'

function! s:lastBuffer() abort
  call VSCodeNotify('workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup')
  call VSCodeCall('list.select')
endfunction

function! s:searchInProject() abort
  call VSCodeNotify('editor.action.addSelectionToNextFindMatch')
  call VSCodeNotify('workbench.action.findInFiles')
  call VSCodeNotify('search.action.focusSearchList')
endfunction

exec 'source' . expand(codeConf) . 'major.vim'
exec 'source' . expand(codeConf) . '+tasks.vim'
exec 'source' . expand(codeConf) . '+buffers.vim'
exec 'source' . expand(codeConf) . '+compile.vim'
exec 'source' . expand(codeConf) . '+debug.vim'
exec 'source' . expand(codeConf) . '+errors.vim'
exec 'source' . expand(codeConf) . '+file.vim'
exec 'source' . expand(codeConf) . '+git.vim'
exec 'source' . expand(codeConf) . '+help.vim'
exec 'source' . expand(codeConf) . '+insert.vim'
exec 'source' . expand(codeConf) . '+jump.vim'
exec 'source' . expand(codeConf) . '+layouts.vim'
exec 'source' . expand(codeConf) . '+project.vim'
exec 'source' . expand(codeConf) . '+quit.vim'
exec 'source' . expand(codeConf) . '+resume.vim'
exec 'source' . expand(codeConf) . '+search.vim'
exec 'source' . expand(codeConf) . '+window.vim'
exec 'source' . expand(codeConf) . '+text.vim'
exec 'source' . expand(codeConf) . '+diff.vim'
exec 'source' . expand(codeConf) . '+frame.vim'
exec 'source' . expand(codeConf) . '+show.vim'
exec 'source' . expand(codeConf) . '+uitoggles.vim'
nnoremap <leader><leader> <Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>
nnoremap <leader><Tab> <Cmd>call <SID>lastBuffer()<CR>
nnoremap <leader>! <Cmd>call VSCodeNotify('workbench.action.terminal.focus')<CR>
nnoremap <leader>\" <Cmd>call VSCodeNotify('workbench.action.terminal.openNativeConsole')<CR>
nnoremap <leader>\' <Cmd>call VSCodeNotify('workbench.action.terminal.focus')<CR>
nnoremap <leader>* <Cmd>call <SID>searchInProject()<CR>
"  nnoremap <leader>/ <Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>
"  nnoremap <leader> <Cmd>call VSCodeNotify('search.action.focusSearchList')<CR>
nnoremap <leader>/ <Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>
nnoremap <leader>0 <Cmd>call VSCodeNotify('workbench.files.action.focusFilesExplorer')<CR>
nnoremap <leader>1 <Cmd>call VSCodeNotify('workbench.action.focusFirstEditorGroup')<CR>
nnoremap <leader>2 <Cmd>call VSCodeNotify('workbench.action.focusSecondEditorGroup')<CR>
nnoremap <leader>3 <Cmd>call VSCodeNotify('workbench.action.focusThirdEditorGroup')<CR>
nnoremap <leader>4 <Cmd>call VSCodeNotify('workbench.action.focusFourthEditorGroup')<CR>
nnoremap <leader>5 <Cmd>call VSCodeNotify('workbench.action.focusFifthEditorGroup')<CR>
nnoremap <leader>6 <Cmd>call VSCodeNotify('workbench.action.focusSixthEditorGroup')<CR>
nnoremap <leader>7 <Cmd>call VSCodeNotify('workbench.action.focusSeventhEditorGroup')<CR>
nnoremap <leader>8 <Cmd>call VSCodeNotify('workbench.action.focusEighthEditorGroup')<CR>
nnoremap <leader>; <Cmd>call VSCodeNotify('editor.action.commentLine')<CR>
nnoremap <leader>? <Cmd>call VSCodeNotify('whichkey.searchBindings')<CR>
nnoremap <leader>v <Cmd>call VSCodeNotify('editor.action.smartSelect.grow')<CR>

xnoremap <leader><leader> <Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>
xnoremap <leader><Tab> <Cmd>call VSCodeNotify('workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup')<CR>
xnoremap <leader>! <Cmd>call VSCodeNotify('workbench.action.terminal.focus')<CR>
xnoremap <leader>\" <Cmd>call VSCodeNotify('workbench.action.terminal.openNativeConsole')<CR>
xnoremap <leader>\' <Cmd>call VSCodeNotify('workbench.action.terminal.focus')<CR>
xnoremap <leader>* <Cmd>call VSCodeNotify('editor.action.addSelectionToNextFindMatch')<CR>
xnoremap <leader>/ <Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>
xnoremap <leader>0 <Cmd>call VSCodeNotify('workbench.files.action.focusFilesExplorer')<CR>
xnoremap <leader>1 <Cmd>call VSCodeNotify('workbench.action.focusFirstEditorGroup')<CR>
xnoremap <leader>2 <Cmd>call VSCodeNotify('workbench.action.focusSecondEditorGroup')<CR>
xnoremap <leader>3 <Cmd>call VSCodeNotify('workbench.action.focusThirdEditorGroup')<CR>
xnoremap <leader>4 <Cmd>call VSCodeNotify('workbench.action.focusFourthEditorGroup')<CR>
xnoremap <leader>5 <Cmd>call VSCodeNotify('workbench.action.focusFifthEditorGroup')<CR>
xnoremap <leader>6 <Cmd>call VSCodeNotify('workbench.action.focusSixthEditorGroup')<CR>
xnoremap <leader>7 <Cmd>call VSCodeNotify('workbench.action.focusSeventhEditorGroup')<CR>
xnoremap <leader>8 <Cmd>call VSCodeNotify('workbench.action.focusEighthEditorGroup')<CR>
xnoremap <leader>; <Cmd>call VSCodeNotify('editor.action.commentLine')<CR>
xnoremap <leader>? <Cmd>call VSCodeNotify('whichkey.searchBindings')<CR>
xnoremap <leader>v <Cmd>call VSCodeNotify('editor.action.smartSelect.grow')<CR>