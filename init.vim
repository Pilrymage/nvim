" 第一次加载
source $HOME/.config/nvim/config/autoload.vim

" 对neovim编辑器的状态设置
source $HOME/.config/nvim/config/set.vim

" 启用个人的键绑定
source $HOME/.config/nvim/config/mappings.vim
" 如果是vscode，追加一个适用于vscode的绑定
if exists('g:vscode')
  source $HOME/.config/nvim/config/vscode.vim
endif

" 加载插件,要求下载vim-plug
source $HOME/.config/nvim/config/plugins.vim
if !exists('g:vscode')
  source $HOME/.config/nvim/config/plugins-config.vim
endif
