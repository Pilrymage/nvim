" Load all the global value settings in neovim
source $HOME/.config/nvim/config/set.vim

" Load key mappings
source $HOME/.config/nvim/config/mappings.vim

if exists('g:vscode')
  source $HOME/.config/nvim/config/vscode/bindings.vim
  
else
  " source $HOME/.config/nvim/config/neovim.vim  
endif

" Load plugins in neovim
source $HOME/.config/nvim/config/plugins.vim