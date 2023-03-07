
function! s:split(...) abort
    let direction = a:1
    let file = exists('a:2') ? a:2 : ''
    call VSCodeCall(direction ==# 'h' ? 'workbench.action.splitEditorDown' : 'workbench.action.splitEditorRight')
    if !empty(file)
        call VSCodeExtensionNotify('open-file', expand(file), 'all')
    endif
endfunction

function! s:splitNew(...)
    let file = a:2
    call s:split(a:1, empty(file) ? '__vscode_new__' : file)
endfunction

function! s:closeOtherEditors()
    call VSCodeNotify('workbench.action.closeEditorsInOtherGroups')
    call VSCodeNotify('workbench.action.closeOtherEditors')
endfunction

function! s:manageEditorHeight(...)
    let count = a:1
    let to = a:2
    for i in range(1, count ? count : 1)
        call VSCodeNotify(to ==# 'increase' ? 'workbench.action.increaseViewHeight' : 'workbench.action.decreaseViewHeight')
    endfor
endfunction



" buffer management
nnoremap <leader>wa <Cmd>call <SID>splitNew('h', '__vscode_new__')<CR>
xnoremap <leader>wa <Cmd>call <SID>splitNew('h', '__vscode_new__')<CR>

nnoremap <leader>wq <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
xnoremap <leader>wq <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <leader>wc <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
xnoremap <leader>wc <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <leader>w<C-c> <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
xnoremap <leader>w<C-c> <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>

" window/splits management 
nnoremap <leader>ws <Cmd>call <SID>split('h')<CR>
xnoremap <leader>ws <Cmd>call <SID>split('h')<CR>
nnoremap <leader>w<C-s> <Cmd>call <SID>split('h')<CR>
xnoremap <leader>w<C-s> <Cmd>call <SID>split('h')<CR>

nnoremap <leader>wv <Cmd>call <SID>split('v')<CR>
xnoremap <leader>wv <Cmd>call <SID>split('v')<CR>
nnoremap <leader>w<C-v> <Cmd>call <SID>split('v')<CR>
xnoremap <leader>w<C-v> <Cmd>call <SID>split('v')<CR>

nnoremap <leader>w= <Cmd>call VSCodeNotify('workbench.action.evenEditorWidths')<CR>
xnoremap <leader>w= <Cmd>call VSCodeNotify('workbench.action.evenEditorWidths')<CR>
nnoremap <leader>w_ <Cmd>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>
xnoremap <leader>w_ <Cmd>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>

nnoremap <leader>w+ <Cmd>call <SID>manageEditorHeight(v:count, 'increase')<CR>
xnoremap <leader>w+ <Cmd>call <SID>manageEditorHeight(v:count, 'increase')<CR>
nnoremap <leader>w- <Cmd>call <SID>manageEditorHeight(v:count, 'decrease')<CR>
xnoremap <leader>w- <Cmd>call <SID>manageEditorHeight(v:count, 'decrease')<CR>
nnoremap <leader>w> <Cmd>call <SID>manageEditorWidth(v:count,  'increase')<CR>
xnoremap <leader>w> <Cmd>call <SID>manageEditorWidth(v:count,  'increase')<CR>
nnoremap <leader>w< <Cmd>call <SID>manageEditorWidth(v:count,  'decrease')<CR>
xnoremap <leader>w< <Cmd>call <SID>manageEditorWidth(v:count,  'decrease')<CR>

nnoremap <leader>wo <Cmd>call VSCodeNotify('workbench.action.joinAllGroups')<CR>
xnoremap <leader>wo <Cmd>call VSCodeNotify('workbench.action.joinAllGroups')<CR>
nnoremap <leader>w<C-o> <Cmd>call VSCodeNotify('workbench.action.joinAllGroups')<CR>
xnoremap <leader>w<C-o> <Cmd>call VSCodeNotify('workbench.action.joinAllGroups')<CR>

" window navigation
nnoremap <leader>we <Cmd>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
xnoremap <leader>we <Cmd>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
nnoremap <leader>wu <Cmd>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
xnoremap <leader>wu <Cmd>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
nnoremap <leader>wn <Cmd>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
xnoremap <leader>wn <Cmd>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
nnoremap <leader>wi <Cmd>call VSCodeNotify('workbench.action.focusRightGroup')<CR>
xnoremap <leader>wi <Cmd>call VSCodeNotify('workbench.action.focusRightGroup')<CR>

nnoremap <leader>w<Down> <Cmd>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
xnoremap <leader>w<Down> <Cmd>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
nnoremap <leader>w<Up> <Cmd>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
xnoremap <leader>w<Up> <Cmd>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
nnoremap <leader>w<Left> <Cmd>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
xnoremap <leader>w<Left> <Cmd>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
nnoremap <leader>w<Right> <Cmd>call VSCodeNotify('workbench.action.focusRightGroup')<CR>
xnoremap <leader>w<Right> <Cmd>call VSCodeNotify('workbench.action.focusRightGroup')<CR>

nnoremap <leader>w<C-e> <Cmd>call VSCodeNotify('workbench.action.moveEditorToBelowGroup')<CR>
xnoremap <leader>w<C-e> <Cmd>call VSCodeNotify('workbench.action.moveEditorToBelowGroup')<CR>
nnoremap <leader>w<C-u> <Cmd>call VSCodeNotify('workbench.action.moveEditorToAboveGroup')<CR>
xnoremap <leader>w<C-u> <Cmd>call VSCodeNotify('workbench.action.moveEditorToAboveGroup')<CR>
nnoremap <leader>w<C-n> <Cmd>call VSCodeNotify('workbench.action.moveEditorToLeftGroup')<CR>
xnoremap <leader>w<C-n> <Cmd>call VSCodeNotify('workbench.action.moveEditorToLeftGroup')<CR>
nnoremap <leader>w<C-i> <Cmd>call VSCodeNotify('workbench.action.moveEditorToRightGroup')<CR>
xnoremap <leader>w<C-i> <Cmd>call VSCodeNotify('workbench.action.moveEditorToRightGroup')<CR>

nnoremap <leader>w<C-Down> <Cmd>call VSCodeNotify('workbench.action.moveEditorToBelowGroup')<CR>
xnoremap <leader>w<C-Down> <Cmd>call VSCodeNotify('workbench.action.moveEditorToBelowGroup')<CR>
nnoremap <leader>w<C-Up> <Cmd>call VSCodeNotify('workbench.action.moveEditorToAboveGroup')<CR>
xnoremap <leader>w<C-Up> <Cmd>call VSCodeNotify('workbench.action.moveEditorToAboveGroup')<CR>
nnoremap <leader>w<C-Left> <Cmd>call VSCodeNotify('workbench.action.moveEditorToLeftGroup')<CR>
xnoremap <leader>w<C-Left> <Cmd>call VSCodeNotify('workbench.action.moveEditorToLeftGroup')<CR>
nnoremap <leader>w<C-Right> <Cmd>call VSCodeNotify('workbench.action.moveEditorToRightGroup')<CR>
xnoremap <leader>w<C-Right> <Cmd>call VSCodeNotify('workbench.action.moveEditorToRightGroup')<CR>

nnoremap <leader>w<S-e> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupDown')<CR>
xnoremap <leader>w<S-e> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupDown')<CR>
nnoremap <leader>w<S-u> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupUp')<CR>
xnoremap <leader>w<S-u> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupUp')<CR>
nnoremap <leader>w<S-n> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupLeft')<CR>
xnoremap <leader>w<S-n> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupLeft')<CR>
nnoremap <leader>w<S-i> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupRight')<CR>
xnoremap <leader>w<S-i> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupRight')<CR>

nnoremap <leader>w<S-Down> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupDown')<CR>
xnoremap <leader>w<S-Down> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupDown')<CR>
nnoremap <leader>w<S-Up> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupUp')<CR>
xnoremap <leader>w<S-Up> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupUp')<CR>
nnoremap <leader>w<S-Left> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupLeft')<CR>
xnoremap <leader>w<S-Left> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupLeft')<CR>
nnoremap <leader>w<S-Right> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupRight')<CR>
xnoremap <leader>w<S-Right> <Cmd>call VSCodeNotify('workbench.action.moveActiveEditorGroupRight')<CR>

nnoremap <leader>ww <Cmd>call VSCodeNotify('workbench.action.focusNextGroup')<CR>
xnoremap <leader>ww <Cmd>call VSCodeNotify('workbench.action.focusNextGroup')<CR>
nnoremap <leader>w<leader>w <Cmd>call VSCodeNotify('workbench.action.focusNextGroup')<CR>
xnoremap <leader>w<leader>w <Cmd>call VSCodeNotify('workbench.action.focusNextGroup')<CR>
nnoremap <leader>wW <Cmd>call VSCodeNotify('workbench.action.focusPreviousGroup')<CR>
xnoremap <leader>wW <Cmd>call VSCodeNotify('workbench.action.focusPreviousGroup')<CR>
nnoremap <leader>wp <Cmd>call VSCodeNotify('workbench.action.focusPreviousGroup')<CR>
xnoremap <leader>wp <Cmd>call VSCodeNotify('workbench.action.focusPreviousGroup')<CR>

nnoremap <leader>wt <Cmd>call VSCodeNotify('workbench.action.focusFirstEditorGroup')<CR>
xnoremap <leader>wt <Cmd>call VSCodeNotify('workbench.action.focusFirstEditorGroup')<CR>
nnoremap <leader>wb <Cmd>call VSCodeNotify('workbench.action.focusLastEditorGroup')<CR>
xnoremap <leader>wub <Cmd>call VSCodeNotify('workbench.action.focusLastEditorGroup')<CR>