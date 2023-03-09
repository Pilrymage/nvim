
 " ==================== Basic Mappings ====================
 noremap ; :
 noremap Q <Cmd>call VSCodeNotify("workbench.action.closeActiveEditor")<CR>
 noremap !q <Cmd>call VSCodeNotify("workbench.action.revertAndCloseActiveEditor")<CR>
 noremap S <Cmd>call VSCodeNotify("workbench.action.files.save")<CR>

 " pen the vimrc file anytime
 nnoremap <LEADER>rc <Cmd>call VSCodeExtensionNotify("open-file",expand("~/.config/nvim/init.vim"),1)<CR>


" " Undo operations
 noremap l u
 " Insert Key
 noremap s i
 noremap K I
 noremap j N
 noremap k n
" " Copy to system clipboard
 vnoremap Y "+y
" " Find pair
 noremap ,. %
 vnoremap ki $%
" " Adjacent duplicate words
 noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1
" " Space to Tab
 nnoremap <LEADER>tt :%s/    /\t/g
 vnoremap <LEADER>tt :s/    /\t/g
" " Folding
 noremap <silent> <LEADER>o za

" " insert a pair of {} and go to the next line
 inoremap <c-y> <ESC>A {}<ESC>i<CR><ESC>ko
" " ==================== Cursor Movement ====================
" " New cursor movement (the default arrow keys are used for resizing windows)
" "     ^
" "     u
" " < n   i >
" "     e
" "     v
 noremap <silent> u k
 noremap <silent> n h
 noremap <silent> e j
 noremap <silent> i l
 noremap <silent> gu gk
 noremap <silent> ge gj
 noremap <silent> \v v$h
" " U/E keys for 5 times u/e (faster navigation)
 noremap <silent> U 5k
 noremap <silent> E 5j
" " N key: go to the start of the line
 noremap <silent> N 0
" " I key: go to the end of the line
 noremap <silent> I $
" " Faster in-line navigation
 noremap W <Plug>(easymotion-W)
 noremap B <Plug>(easymotion-B)
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
" noremap 
" " set h (same as n, cursor left) to 'end of word'
 noremap h e
" " Ctrl + U or E will move up/down the view port without moving the cursor
 noremap <C-U> 5<C-y>
 noremap <C-E> 5<C-e>
" " Custom cursor movement
" " If you use Qwerty keyboard, uncomment the next line.
" " source $HOME/nvim/cursr_for_qwerty.vim

" " ==================== Other useful stuff ====================
" noremap <LEADER>sc :set spell!<CR>
" " Press ` to change case (instead of ~)
noremap ` ~
" " Call figlet
noremap tx :r !figlet 
noremap R :! make run
inoremap <C-a> <ESC>I
inoremap <C-e> <ESC>A
inoremap <C-p> <ESC>ki
inoremap <C-n> <ESC>ji
inoremap <C-f> <ESC>hi
inoremap <C-b> <ESC>li