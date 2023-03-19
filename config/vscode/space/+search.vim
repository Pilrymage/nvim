function! s:searchInProject() abort
  call VSCodeNotify('editor.action.addSelectionToNextFindMatch')
  call VSCodeNotify('workbench.action.findInFiles')
endfunction
nnoremap <space>sc <Cmd>call VSCodeNotify('vim.remap')<CR>
nnoremap <space>se <Cmd>call VSCodeNotify('editor.action.rename')<CR>
"  ␣ s h	Highlisght symbol	transient	editor.action.wordHighlight.trigger')<CR>
nnoremap <space>sj <Cmd>call VSCodeNotify('workbench.action.gotoSymbol')<CR>
nnoremap <space>sp <Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>
nnoremap <space>sr <Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>
nnoremap <space>ss <Cmd>call VSCodeNotify('fuzzySearch.activeTextEditorWithCurrentSelection')<CR>
nnoremap <space>sJ <Cmd>call VSCodeNotify('workbench.action.showAllSymbols')<CR>
nnoremap <space>sP <Cmd>call <SID>searchInProject() <CR>
nnoremap <space>sR <Cmd>call VSCodeNotify('references-view.find')<CR>
"  ␣ s S	Fuzzy search with selection in current buffer	commands	editor.action.addSelectionToNextFindMatch
"  fuzzySearch.activeTextEditorWithCurrentSelection