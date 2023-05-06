

" Normal


set wrap " Line wrap
set linebreak " Whole words dont wrap
set number " Line nums
set whichwrap+=<,>,[,] " Cursor wrap
set cursorline " Highlight cursor line
set tabstop=4 " Tab size
set shiftwidth=4 " Indent size
set expandtab " Use spaces instead of tabs
set termguicolors " True color support


" Plugins


call plug#begin('~/.config/nvim/plugins')

" General
Plug 'tpope/vim-sensible'
Plug 'zbirenbaum/copilot.lua'
Plug 'marko-cerovac/material.nvim' " Color Scheme
Plug 'nvim-tree/nvim-tree.lua' " File Explorer
Plug 'nvim-tree/nvim-web-devicons' " Icons
Plug 'wfxr/minimap.vim' " Minimap
Plug 'gelguy/wilder.nvim' " wilder
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc' 
Plug 'nvim-lualine/lualine.nvim' " Status Line
Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'} " Tree Sitter
Plug 'neovim/nvim-lspconfig' " LSP

call plug#end()

" Wilder
call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
      \ 'highlights': {
      \   'border': 'Normal',
      \ },
      \ 'border': 'rounded',
      \ })))


" Source Lua Config
source $HOME/.config/nvim/init.lua.vim
