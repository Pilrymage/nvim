nnoremap <space>e. <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
nnoremap <space>ee <Cmd>call VSCodeNotify('editor.action.quickFix')<CR>
nnoremap <space>ef <Cmd>call VSCodeNotify('workbench.actions.view.problems')<CR>
nnoremap <space>el <Cmd>call VSCodeNotify('editor.action.marker.nextInFiles')<CR>
nnoremap <space>en <Cmd>call VSCodeNotify('editor.action.marker.prevInFiles')<CR>
nnoremap <space>ep <Cmd>call VSCodeNotify('editor.action.marker.prevInFiles')<CR>

"  source $HOME/.config/nvim/config/vscode/space/error-transient.vim