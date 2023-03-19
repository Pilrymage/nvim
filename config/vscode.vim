noremap Q <Cmd>call VSCodeNotify("workbench.action.closeActiveEditor")<CR>
noremap !q <Cmd>call VSCodeNotify("workbench.action.revertAndCloseActiveEditor")<CR>
noremap S <Cmd>call VSCodeNotify("workbench.action.files.save")<CR>
nnoremap <LEADER>rc <Cmd>call VSCodeExtensionNotify("open-file",expand("~/.config/nvim/init.vim"),1)<CR>
nnoremap <silent> ze <Cmd>call VSCodeNotify('editor.gotoNextFold')<CR>
nnoremap <silent> zu <Cmd>call VSCodeNotify('editor.gotoPreviousFold')<CR>
nnoremap <silent> za <Cmd>call VSCodeNotify('editor.toggleFold')<CR>
nnoremap <silent> zR <Cmd>call VSCodeNotify('editor.unfoldAll')<CR>
nnoremap <silent> zM <Cmd>call VSCodeNotify('editor.foldAll')<CR>
nnoremap <silent> zo <Cmd>call VSCodeNotify('editor.unfold')<CR>
nnoremap <silent> zO <Cmd>call VSCodeNotify('editor.unfoldRecursively')<CR>
nnoremap <silent> zc <Cmd>call VSCodeNotify('editor.fold')<CR>
nnoremap <silent> zC <Cmd>call VSCodeNotify('editor.foldRecursively')<CR>

nnoremap <silent> z1 <Cmd>call VSCodeNotify('editor.foldLevel1')<CR>
nnoremap <silent> z2 <Cmd>call VSCodeNotify('editor.foldLevel2')<CR>
nnoremap <silent> z3 <Cmd>call VSCodeNotify('editor.foldLevel3')<CR>
nnoremap <silent> z4 <Cmd>call VSCodeNotify('editor.foldLevel4')<CR>
nnoremap <silent> z5 <Cmd>call VSCodeNotify('editor.foldLevel5')<CR>
nnoremap <silent> z6 <Cmd>call VSCodeNotify('editor.foldLevel6')<CR>
nnoremap <silent> z7 <Cmd>call VSCodeNotify('editor.foldLevel7')<CR>

xnoremap <silent> zV <Cmd>call VSCodeNotify('editor.foldAllExcept')<CR>
" 使用空格键减轻手部负担，借鉴自vspacecode项目
source $HOME/.config/nvim/config/vscode/space.vim