" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Surround
    Plug 'tpope/vim-surround'
    " Better Comments
    Plug 'tpope/vim-commentary'

    if exists('g:vscode')
      " Easy motion for VSCode
      " Plug 'asvetliakov/vim-easymotion'
    else
      " Better Syntax Support
      Plug 'sheerun/vim-polyglot'
      " File Explorer
      Plug 'scrooloose/NERDTree'
      " Auto pairs for '(' '[' '{'
      Plug 'jiangmiao/auto-pairs'
      " Themes
      Plug 'joshdick/onedark.vim'
      Plug 'dracula/vim', { 'as': 'dracula' }
      " Stable version of coc
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      " Airline
      Plug 'vim-airline/vim-airline'
      Plug 'vim-airline/vim-airline-themes'
      " which key
      Plug 'liuchengxu/vim-which-key'
      " Movement
      " Plug 'justinmk/vim-sneak'
      Plug 'unblevable/quick-scope'
      " Plug 'asymotion/vim-easymotion'
      " Add some color
      Plug 'norcalli/nvim-colorizer.lua'
      Plug 'junegunn/rainbow_parentheses.vim'
      " fzf
      Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
      Plug 'junegunn/fzf.vim'
      " Go
      Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
      " Startify
      Plug 'mhinz/vim-startify'
    endif

call plug#end()
" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
