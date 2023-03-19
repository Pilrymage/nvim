
 " ==================== Basic Mappings ====================
 noremap ; :

 noremap Q :q<CR>
 noremap !q :q!<CR>
 noremap S :w<CR>

 " pen the vimrc file anytime
 nnoremap <LEADER>rc :e $HOME/.config/nvim/init.vim<CR>

" " Undo operations
 noremap l i
 noremap L I
 " Insert Key
 noremap s i
 noremap k n
 noremap j u
 noremap K N
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