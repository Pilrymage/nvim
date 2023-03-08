nnoremap <space>ff <Cmd>call VSCodeNotify('file-browser.open')<CR>
nnoremap <space>fl <Cmd>call VSCodeNotify('workbench.action.editor.changeLanguageMode')<CR>
nnoremap <space>fn <Cmd>call VSCodeNotify('explorer.newFile')<CR>
nnoremap <space>fo <Cmd>call VSCodeNotify('explorer.openWith')<CR>
nnoremap <space>fr <Cmd>call VSCodeNotify('workbench.action.openRecent')<CR>
nnoremap <space>fs <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
"  ␣ f t	Toggle ftree/explorer view	conditional	N/A')<CR>
nnoremap <space>fw <Cmd>call VSCodeNotify('workbench.action.files.showOpenedFileInNewWindow')<CR>
"  ␣ f D	Delete fcurrent file	commands	workbench.files.action.showActiveFileInExplorer')<CR>
"  deleteFile')<CfR>
nnoremap <space>fL <Cmd>call VSCodeNotify('revealFileInOS')<CR>
"  ␣ f R	Rename ffile	commands	revealInExplorer')<CR>
"  renameFile')<CfR>
nnoremap <space>fS <Cmd>call VSCodeNotify('workbench.action.files.saveAll')<CR>
nnoremap <space>fT <Cmd>call VSCodeNotify('workbench.files.action.showActiveFileInExplorer')<CR>
"  ␣ f e	+Emacs/VSpaceCode	bindings	N/A
"  ␣ f i	+Indentation	bindings	N/A
"  ␣ f y	+Yank	bindings	N/A