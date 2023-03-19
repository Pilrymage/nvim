nnoremap <space>dc <Cmd>call VSCodeNotify('workbench.action.debug.continue')<CR>
xnoremap <space>dc <Cmd>call VSCodeNotify('workbench.action.debug.continue')<CR>
nnoremap <space>dd <Cmd>call VSCodeNotify('workbench.action.debug.start')<CR>
xnoremap <space>dd <Cmd>call VSCodeNotify('workbench.action.debug.start')<CR>

nnoremap <space>di <Cmd>call VSCodeNotify('workbench.action.debug.stepInto')<CR>
xnoremap <space>di <Cmd>call VSCodeNotify('workbench.action.debug.stepInto')<CR>
nnoremap <space>dj <Cmd>call VSCodeNotify('debug.jumpToCursor')<CR>
xnoremap <space>dj <Cmd>call VSCodeNotify('debug.jumpToCursor')<CR>

nnoremap <space>do <Cmd>call VSCodeNotify('workbench.action.debug.stepOut')<CR>
xnoremap <space>do <Cmd>call VSCodeNotify('workbench.action.debug.stepOut')<CR>
nnoremap <space>dp <Cmd>call VSCodeNotify('workbench.action.debug.pause')<CR>
xnoremap <space>dp <Cmd>call VSCodeNotify('workbench.action.debug.pause')<CR>

nnoremap <space>ds <Cmd>call VSCodeNotify('workbench.action.debug.stepOver')<CR>
xnoremap <space>ds <Cmd>call VSCodeNotify('workbench.action.debug.stepOver')<CR>
nnoremap <space>dv <Cmd>call VSCodeNotify('workbench.debug.action.toggleRepl')<CR>
xnoremap <space>dv <Cmd>call VSCodeNotify('workbench.debug.action.toggleRepl')<CR>

nnoremap <space>dw <Cmd>call VSCodeNotify('workbench.debug.action.focusWathcView')<CR>
xnoremap <space>dw <Cmd>call VSCodeNotify('workbench.debug.action.focusWathcView')<CR>
nnoremap <space>dC <Cmd>call VSCodeNotify('editor.debug.action.runToCursor')<CR>
xnoremap <space>dC <Cmd>call VSCodeNotify('editor.debug.action.runToCursor')<CR>

nnoremap <space>dD <Cmd>call VSCodeNotify('workbench.action.debug.run')<CR>
xnoremap <space>dD <Cmd>call VSCodeNotify('workbench.action.debug.run')<CR>
nnoremap <space>dR <Cmd>call VSCodeNotify('workbench.action.debug.restart')<CR>
xnoremap <space>dR <Cmd>call VSCodeNotify('workbench.action.debug.restart')<CR>

nnoremap <space>dS <Cmd>call VSCodeNotify('workbench.action.debug.stop')<CR>
xnoremap <space>dS <Cmd>call VSCodeNotify('workbench.action.debug.stop')<CR>
nnoremap <space>dW <Cmd>call VSCodeNotify('editor.debug.action.selectionToWatch')<CR>
xnoremap <space>dW <Cmd>call VSCodeNotify('editor.debug.action.selectionToWatch')<CR>

source $HOME/.config/nvim/config/vscode/space/+d/breakpoint.vim