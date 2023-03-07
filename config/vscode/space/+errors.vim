nnoremap <leader>e. <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
nnoremap <leader>ee <Cmd>call VSCodeNotify('editor.action.quickFix')<CR>
nnoremap <leader>ef <Cmd>call VSCodeNotify('workbench.actions.view.problems')<CR>
nnoremap <leader>el <Cmd>call VSCodeNotify('editor.action.marker.nextInFiles')<CR>
nnoremap <leader>en <Cmd>call VSCodeNotify('editor.action.marker.prevInFiles')<CR>
nnoremap <leader>ep <Cmd>call VSCodeNotify('editor.action.marker.prevInFiles')<CR>

"  source $HOME/.config/nvim/config/vscode/space/error-transient.vim