nnoremap <leader>dc <Cmd>call VSCodeNotify('workbench.action.debug.continue')<CR>
xnoremap <leader>dc <Cmd>call VSCodeNotify('workbench.action.debug.continue')<CR>
nnoremap <leader>dd <Cmd>call VSCodeNotify('workbench.action.debug.start')<CR>
xnoremap <leader>dd <Cmd>call VSCodeNotify('workbench.action.debug.start')<CR>

nnoremap <leader>di <Cmd>call VSCodeNotify('workbench.action.debug.stepInto')<CR>
xnoremap <leader>di <Cmd>call VSCodeNotify('workbench.action.debug.stepInto')<CR>
nnoremap <leader>dj <Cmd>call VSCodeNotify('debug.jumpToCursor')<CR>
xnoremap <leader>dj <Cmd>call VSCodeNotify('debug.jumpToCursor')<CR>

nnoremap <leader>do <Cmd>call VSCodeNotify('workbench.action.debug.stepOut')<CR>
xnoremap <leader>do <Cmd>call VSCodeNotify('workbench.action.debug.stepOut')<CR>
nnoremap <leader>dp <Cmd>call VSCodeNotify('workbench.action.debug.pause')<CR>
xnoremap <leader>dp <Cmd>call VSCodeNotify('workbench.action.debug.pause')<CR>

nnoremap <leader>ds <Cmd>call VSCodeNotify('workbench.action.debug.stepOver')<CR>
xnoremap <leader>ds <Cmd>call VSCodeNotify('workbench.action.debug.stepOver')<CR>
nnoremap <leader>dv <Cmd>call VSCodeNotify('workbench.debug.action.toggleRepl')<CR>
xnoremap <leader>dv <Cmd>call VSCodeNotify('workbench.debug.action.toggleRepl')<CR>

nnoremap <leader>dw <Cmd>call VSCodeNotify('workbench.debug.action.focusWathcView')<CR>
xnoremap <leader>dw <Cmd>call VSCodeNotify('workbench.debug.action.focusWathcView')<CR>
nnoremap <leader>dC <Cmd>call VSCodeNotify('editor.debug.action.runToCursor')<CR>
xnoremap <leader>dC <Cmd>call VSCodeNotify('editor.debug.action.runToCursor')<CR>

nnoremap <leader>dD <Cmd>call VSCodeNotify('workbench.action.debug.run')<CR>
xnoremap <leader>dD <Cmd>call VSCodeNotify('workbench.action.debug.run')<CR>
nnoremap <leader>dR <Cmd>call VSCodeNotify('workbench.action.debug.restart')<CR>
xnoremap <leader>dR <Cmd>call VSCodeNotify('workbench.action.debug.restart')<CR>

nnoremap <leader>dS <Cmd>call VSCodeNotify('workbench.action.debug.stop')<CR>
xnoremap <leader>dS <Cmd>call VSCodeNotify('workbench.action.debug.stop')<CR>
nnoremap <leader>dW <Cmd>call VSCodeNotify('editor.debug.action.selectionToWatch')<CR>
xnoremap <leader>dW <Cmd>call VSCodeNotify('editor.debug.action.selectionToWatch')<CR>

source $HOME/.config/nvim/config/vscode/space/+breakpoint.vim