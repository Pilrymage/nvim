function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction
" ==================== Install Plugins with Vim-Plug ====================
call plug#begin('$HOME/.config/nvim/plugged')

Plug 'itchyny/vim-cursorword'

" Github Copilot
Plug 'github/copilot.vim', Cond(!exists('g:vscode'))

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', Cond(!exists('g:vscode'))
Plug 'nvim-treesitter/playground', Cond(!exists('g:vscode'))

" Pretty Dress
Plug 'theniceboy/nvim-deus', Cond(!exists('g:vscode'))
Plug 'arzg/vim-colors-xcode', Cond(!exists('g:vscode'))

" Status line
Plug 'theniceboy/eleline.vim',  Cond(!exists('g:vscode'), { 'branch': 'no-scrollbar' })

" General Highlighter
Plug 'NvChad/nvim-colorizer.lua', Cond(!exists('g:vscode'))
Plug 'RRethy/vim-illuminate', Cond(!exists('g:vscode'))

" File navigation
Plug 'ibhagwan/fzf-lua', Cond(!exists('g:vscode'))
Plug 'junegunn/fzf',  Cond(!exists('g:vscode'), { 'do': { -> fzf#install() } })
Plug 'junegunn/fzf.vim', Cond(!exists('g:vscode'))
Plug 'kevinhwang91/rnvimr', Cond(!exists('g:vscode'))
Plug 'airblade/vim-rooter', Cond(!exists('g:vscode'))
Plug 'pechorin/any-jump.vim', Cond(!exists('g:vscode'))

" Debugger
Plug 'puremourning/vimspector',  Cond(!exists('g:vscode'), {'do': './install_gadget.py --enable-c --enable-python --enable-go'})

" Auto Complete
Plug 'neoclide/coc.nvim',  Cond(!exists('g:vscode'), {'commit': '63dd239bfe02998810b39d039827e2510885b57b'})
" Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': 'v0.0.79'}
Plug 'wellle/tmux-complete.vim', Cond(!exists('g:vscode'))

" Snippets
Plug 'SirVer/ultisnips', Cond(!exists('g:vscode'))
Plug 'theniceboy/vim-snippets', Cond(!exists('g:vscode'))

" Undo Tree
Plug 'mbbill/undotree', Cond(!exists('g:vscode'))

" Git
Plug 'theniceboy/vim-gitignore', Cond(!exists('g:vscode'), { 'for': ['gitignore', 'vim-plug'] },)
Plug 'theniceboy/fzf-gitignore',  Cond(!exists('g:vscode'), { 'do': ':UpdateRemotePlugins' })
Plug 'mhinz/vim-signify', Cond(!exists('g:vscode'))
Plug 'lewis6991/gitsigns.nvim', Cond(!exists('g:vscode'))
Plug 'cohama/agit.vim', Cond(!exists('g:vscode'))
Plug 'kdheepak/lazygit.nvim', Cond(!exists('g:vscode'))

" Tex
Plug 'lervag/vimtex', Cond(!exists('g:vscode'))

" CSharp
Plug 'OmniSharp/omnisharp-vim', Cond(!exists('g:vscode'))
Plug 'ctrlpvim/ctrlp.vim' ,  Cond(!exists('g:vscode'), { 'for': ['cs' ,'vim-plug'] })

" HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
Plug 'elzr/vim-json', Cond(!exists('g:vscode'))
Plug 'neoclide/jsonc.vim', Cond(!exists('g:vscode'))
Plug 'othree/html5.vim', Cond(!exists('g:vscode'))
Plug 'alvan/vim-closetag', Cond(!exists('g:vscode'))
Plug 'hail2u/vim-css3-syntax' " , { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }, Cond(!exists('g:vscode'))
Plug 'spf13/PIV',  Cond(!exists('g:vscode'),{ 'for' :['php', 'vim-plug'] })
Plug 'pangloss/vim-javascript',  Cond(!exists('g:vscode'),{ 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] })
Plug 'yuezk/vim-js',  Cond(!exists('g:vscode'),{ 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] })
Plug 'MaxMEllon/vim-jsx-pretty',  Cond(!exists('g:vscode'),{ 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] })
Plug 'jelera/vim-javascript-syntax',  Cond(!exists('g:vscode'),{ 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] })
Plug 'jaxbot/browserlink.vim', Cond(!exists('g:vscode'))
Plug 'HerringtonDarkholme/yats.vim', Cond(!exists('g:vscode'))
Plug 'posva/vim-vue', Cond(!exists('g:vscode'))
Plug 'evanleck/vim-svelte',  Cond(!exists('g:vscode'),{'branch': 'main'})
Plug 'leafOfTree/vim-svelte-plugin', Cond(!exists('g:vscode'))
Plug 'leafgarland/typescript-vim', Cond(!exists('g:vscode'))
Plug 'MaxMEllon/vim-jsx-pretty', Cond(!exists('g:vscode'))
Plug 'pangloss/vim-javascript', Cond(!exists('g:vscode'))
Plug 'leafgarland/typescript-vim', Cond(!exists('g:vscode'))
Plug 'peitalin/vim-jsx-typescript', Cond(!exists('g:vscode'))
Plug 'styled-components/vim-styled-components',  Cond(!exists('g:vscode'),{ 'branch': 'main' })
Plug 'pantharshit00/vim-prisma', Cond(!exists('g:vscode'))

" Go
Plug 'fatih/vim-go' ,  Cond(!exists('g:vscode'),{ 'for': ['go', 'vim-plug'], 'tag': '*' })

" Python
Plug 'Vimjas/vim-python-pep8-indent',  Cond(!exists('g:vscode'),{ 'for' :['python', 'vim-plug'] })
Plug 'numirias/semshi',  Cond(!exists('g:vscode'),{ 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] })
Plug 'tweekmonster/braceless.vim',  Cond(!exists('g:vscode'),{ 'for' :['python', 'vim-plug'] })
Plug 'vim-scripts/indentpython.vim',  Cond(!exists('g:vscode'),{ 'for' :['python', 'vim-plug'] })
Plug 'plytophogy/vim-virtualenv',  Cond(!exists('g:vscode'),{ 'for' :['python', 'vim-plug'] })
Plug 'tmhedberg/SimpylFold',  Cond(!exists('g:vscode'),{ 'for' :['python', 'vim-plug'] })

" Dart
Plug 'dart-lang/dart-vim-plugin',  Cond(!exists('g:vscode'),{ 'for': ['dart', 'vim-plug'] })

" Swift
Plug 'keith/swift.vim', Cond(!exists('g:vscode'))
Plug 'arzg/vim-swift', Cond(!exists('g:vscode'))

" Markdown
Plug 'suan/vim-instant-markdown',  Cond(!exists('g:vscode'),{'for': 'markdown'})
Plug 'dhruvasagar/vim-table-mode',  Cond(!exists('g:vscode'),{ 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] })
Plug 'mzlogin/vim-markdown-toc',  Cond(!exists('g:vscode'),{ 'for': ['gitignore', 'markdown', 'vim-plug'] })
Plug 'dkarter/bullets.vim', Cond(!exists('g:vscode'))

" Other filetypes
Plug 'wlangstroth/vim-racket', Cond(!exists('g:vscode'))
Plug 'hashivim/vim-terraform', Cond(!exists('g:vscode'))

" Editor Enhancement
Plug 'petertriho/nvim-scrollbar', Cond(!exists('g:vscode'))
Plug 'kevinhwang91/nvim-hlslens', Cond(!exists('g:vscode'))
Plug 'ggandor/lightspeed.nvim', Cond(!exists('g:vscode'))
Plug 'Raimondi/delimitMate', Cond(!exists('g:vscode'))
Plug 'jiangmiao/auto-pairs', Cond(!exists('g:vscode'))
Plug 'mg979/vim-visual-multi', Cond(!exists('g:vscode'))
Plug 'Konfekt/FastFold', Cond(!exists('g:vscode'))
Plug 'junegunn/vim-peekaboo', Cond(!exists('g:vscode'))
Plug 'wellle/context.vim', Cond(!exists('g:vscode'))
Plug 'svermeulen/vim-subversive', Cond(!exists('g:vscode'))
Plug 'theniceboy/argtextobj.vim', Cond(!exists('g:vscode'))
Plug 'rhysd/clever-f.vim', Cond(!exists('g:vscode'))
Plug 'AndrewRadev/splitjoin.vim', Cond(!exists('g:vscode'))
Plug 'theniceboy/pair-maker.vim', Cond(!exists('g:vscode'))
Plug 'theniceboy/vim-move', Cond(!exists('g:vscode'))
Plug 'jeffkreeftmeijer/vim-numbertoggle', Cond(!exists('g:vscode'))
Plug 'Yggdroot/indentLine', Cond(!exists('g:vscode'))

" For general writing
Plug 'junegunn/goyo.vim', Cond(!exists('g:vscode'))
Plug 'reedes/vim-wordy', Cond(!exists('g:vscode'))
Plug 'ron89/thesaurus_query.vim', Cond(!exists('g:vscode'))

" Documentation
Plug 'KabbAmine/zeavim.vim' " <LEADER>z to find doc

" Vim Applications
Plug 'itchyny/calendar.vim', Cond(!exists('g:vscode'))

" Other visual enhancement
Plug 'luochen1990/rainbow', Cond(!exists('g:vscode'))
Plug 'mg979/vim-xtabline', Cond(!exists('g:vscode'))
Plug 'ryanoasis/vim-devicons', Cond(!exists('g:vscode'))
Plug 'wincent/terminus', Cond(!exists('g:vscode'))
Plug 'kyazdani42/nvim-web-devicons', Cond(!exists('g:vscode'))

" Other useful utilities
Plug 'lambdalisue/suda.vim' " do stuff like :sudowrite
Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), {'as': 'vsc-easymotion'})
call plug#end()

set re=0