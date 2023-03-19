nnoremap <space>x. <Cmd>call VSCodeNotify('editor.action.quickFix')<CR>
nnoremap <space>xa <Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>
nnoremap <space>xi <Cmd>call VSCodeNotify('editor.action.organizeImports')<CR>
nnoremap <space>xo <Cmd>call VSCodeNotify('editor.action.openLink')<CR>
nnoremap <space>xr <Cmd>call VSCodeNotify('editor.action.rename')<CR>
nnoremap <space>xu <Cmd>call VSCodeNotify('editor.action.transformToLowercase')<CR>
"  ␣ x J	Move lxines down	transient	editor.action.moveLinesDownAction')<CR>
"  ␣ x K	Move lxines up	transient	editor.action.moveLinesUpAction')<CR>
nnoremap <space>xR <Cmd>call VSCodeNotify('editor.action.refactor')<CR>
nnoremap <space>xU <Cmd>call VSCodeNotify('editor.action.transformToUppercase')<CR>
"  ␣ x d	+Delete	bindings	N/A
source $HOME/.config/nvim/config/vscode/space/+x/delete.vim
"  ␣ x l	+Lines	bindings	N/Afold
source $HOME/.config/nvim/config/vscode/space/+x/lines.vim
"  ␣ x m	+Merge conflict	bindings	N/A
source $HOME/.config/nvim/config/vscode/space/+x/merge.vim