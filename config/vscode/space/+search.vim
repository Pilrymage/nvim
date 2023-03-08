nnoremap <space> <Cmd>call VSCodeNotify('vim.remap')<CR>
nnoremap <space> <Cmd>call VSCodeNotify('editor.action.rename')<CR>
"  ␣ s h	Highlight symbol	transient	editor.action.wordHighlight.trigger')<CR>
nnoremap <space> <Cmd>call VSCodeNotify('workbench.action.gotoSymbol')<CR>
nnoremap <space> <Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>
nnoremap <space> <Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>
nnoremap <space> <Cmd>call VSCodeNotify('fuzzySearch.activeTextEditorWithCurrentSelection')<CR>
nnoremap <space> <Cmd>call VSCodeNotify('workbench.action.showAllSymbols')<CR>
"  ␣ s P	Search in project with selection	commands	editor.action.addSelectionToNextFindMatch')<CR>
"  workbench.action.findInFiles')<CR>
nnoremap <space> <Cmd>call VSCodeNotify('references-view.find')<CR>
"  ␣ s S	Fuzzy search with selection in current buffer	commands	editor.action.addSelectionToNextFindMatch
"  fuzzySearch.activeTextEditorWithCurrentSelection