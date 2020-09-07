source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
if exists('g:vscode')
  source $HOME/.config/nvim/plug-config/easymotion.vim
  source $HOME/.config/nvim/vscode/windows.vim
else
  source $HOME/.config/nvim/themes/dracula.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  " source $HOME/.config/nvim/plug-config/sneak.vim
  source $HOME/.config/nvim/plug-config/rainbow.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/themes/airline.vim
  source $HOME/.config/nvim/keys/which-key.vim
endif
