

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
set scrolloff=8 " Lines of context


" Plugins


call plug#begin('~/.config/nvim/plugins')

" General
Plug 'tpope/vim-sensible'
Plug 'zbirenbaum/copilot.lua'
Plug 'nvim-tree/nvim-tree.lua' " File Explorer
Plug 'nvim-tree/nvim-web-devicons' " Icons
Plug 'wfxr/minimap.vim' " Minimap
Plug 'gelguy/wilder.nvim' " wilder
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc' 
Plug 'nvim-lualine/lualine.nvim' " Status Line
Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'} " Tree Sitter
Plug 'williamboman/mason.nvim', {'do': ':MasonUpdate'} " Mason
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig' " LSP
Plug 'nvim-lua/plenary.nvim'
Plug 'sbdchd/neoformat' " Formatter
Plug 'windwp/nvim-autopairs' " Autopairs
Plug 'tzachar/highlight-undo.nvim' " Undo Highlight
Plug 'yuttie/comfortable-motion.vim' " Smooth Scrolling
Plug 'akinsho/bufferline.nvim', { 'tag': '*' } " Bufferline
Plug 'numToStr/Comment.nvim' " Comment
Plug 'rcarriga/nvim-notify' " Notify
Plug 'lukas-reineke/indent-blankline.nvim' " Indent Lines
Plug 'hrsh7th/nvim-cmp' " Autocomplete
Plug 'hrsh7th/cmp-buffer' " Autocomplete
Plug 'hrsh7th/cmp-nvim-lsp' " Autocomplete
Plug 'hrsh7th/cmp-path' " Autocomplete
Plug 'hrsh7th/cmp-cmdline' " Autocomplete
Plug 'hrsh7th/cmp-vsnip' " Autocomplete
Plug 'hrsh7th/vim-vsnip' " Autocomplete
Plug 'MunifTanjim/nui.nvim' " nui
Plug 'zbirenbaum/copilot-cmp' " copilot-cmp
Plug 'RRethy/vim-illuminate' " highlight
Plug 'folke/tokyonight.nvim' " Color Scheme
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] } " Markdown Preview


call plug#end()

inoremap jk <esc>
inoremap kj <esc>

" Source Lua Config
source $HOME/.config/nvim/init.lua.vim

