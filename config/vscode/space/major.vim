nnoremap m <nop>
nnoremap m== <Cmd> call VSCodeNotify('editor.action.format')<CR>
nnoremap m=b <Cmd> call VSCodeNotify('editor.action.formatDocument')<CR>
nnoremap m=B <Cmd> call VSCodeNotify('editor.action.formatDocument.multiple')<CR>
nnoremap m=c <Cmd> call VSCodeNotify('editor.action.formatChanges')<CR>
nnoremap m=s <Cmd> call VSCodeNotify('editor.action.formatSelection')<CR>
nnoremap m=S <Cmd> call VSCodeNotify('editor.action.formatSelection.multiple')<CR>

nnoremap maa <Cmd> call VSCodeNotify('editor.action.codeAction')<CR>
nnoremap maf <Cmd> call VSCodeNotify('editor.action.quickFix')<CR>
nnoremap mar <Cmd> call VSCodeNotify('editor.action.refactor')<CR>
nnoremap mas <Cmd> call VSCodeNotify('editor.action.sourceAction')<CR>

nnoremap mgd <Cmd> call VSCodeNotify('editor.action.revealDefinition')<CR>
nnoremap mgh <Cmd> call VSCodeNotify('references-view.showCallHierarchy')<CR>
nnoremap mgi <Cmd> call VSCodeNotify('editor.action.goToImplementation')<CR>
nnoremap mgr <Cmd> call VSCodeNotify('editor.action.goToReferences')<CR>
nnoremap mgs <Cmd> call VSCodeNotify('workbench.action.gotoSymbol')<CR>
nnoremap mgt <Cmd> call VSCodeNotify('editor.action.goToTypeDefinition')<CR>
nnoremap mgI <Cmd> call VSCodeNotify('references-view.findImplementations')<CR>
nnoremap mgR <Cmd> call VSCodeNotify('references-view.findReferences')<CR>
nnoremap mgS <Cmd> call VSCodeNotify('workbench.action.showAllSymbols')<CR>

nnoremap mGd <Cmd> call VSCodeNotify('editor.action.peekDefinition')<CR>
nnoremap mGh <Cmd> call VSCodeNotify('editor.showCallHierarchy')<CR>
nnoremap mGi <Cmd> call VSCodeNotify('editor.action.peekImplementation')<CR>
nnoremap mGr <Cmd> call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>
nnoremap mGt <Cmd> call VSCodeNotify('editor.action.peekTypeDefinition')<CR>

