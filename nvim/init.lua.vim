lua<<EOF

-- General

-- Restore last position
vim.cmd 'autocmd BufReadPost * if line("\'\\"") > 0 && line("\'\\"") <= line("$") | exe "normal! g\'\\"" | endif'

-- Plugins

-- Wilder

wilder = require('wilder')

wilder.setup({
  modes = {
    '/',
    '?',
    ':',
    '=',
  },
})

wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_palette_theme({
    -- 'single', 'double', 'rounded' or 'solid'
    -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
    border = 'rounded',
    max_height = '25%',      -- max height of the palette
    min_height = '40%',          -- set to the same as 'max_height' for a fixed height window
    max_width = '60%',       -- max width of the palette
    prompt_position = 'top', -- 'top' or 'bottom' to set the location of the prompt
    reverse = 0,             -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
  })
))

-- Color Scheme
vim.cmd[[colorscheme tokyonight-moon]]

-- Copilot
require('copilot').setup({suggestion = {suggestion = { enable = false}, panel = { enable = false}}})
-- Change the accept ket to tab
vim.keymap.set("i", '<Tab>', function()
    if require("copilot.suggestion").is_visible() then
        require("copilot.suggestion").accept()
    else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
    end
end, {
    silent = true,
})

--nvim-tree
require('nvim-tree').setup()
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- nvim-web-devicons
require('nvim-web-devicons').setup()

-- lua-line
require('lualine').setup()

-- nvim-treesitter
require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "python",
        "lua",
        "bash",
        "c",
        "html",
        "css",
        "javascript",
        "vim",
        "json",
        "yaml",
    },
    highlight = {
        enable = true,
    },
})

-- mason
require('mason').setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {}
    end
}

-- autopairs
require('nvim-autopairs').setup()

-- highlight-undo
require('highlight-undo').setup()

-- bufferline
require('bufferline').setup()

-- Comment
require('Comment').setup()

-- nvim notify
require('notify').setup()

-- indent-blankline
require('indent_blankline').setup()

-- nvim-cmp
local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<Tab>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
    },
    sources = {
        {name = 'copilot'},
        {name = 'nvim_lsp'},
        {name = 'vsnip'},
        {name = 'buffer'},
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    }
})

-- copilot-cmp
require("copilot_cmp").setup()

EOF
