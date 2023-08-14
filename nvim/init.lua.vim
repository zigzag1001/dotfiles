lua<<EOF



-- Plugins

-- Color Scheme
vim.g.material_style = "deep ocean"
require('material').setup()
vim.cmd 'colorscheme material'

-- Copilot
require('copilot').setup({suggestion = {auto_trigger = true, accept = false}})
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

-- null-ls
local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.phpcbf,
        null_ls.builtins.formatting.phpcsfixer,
        null_ls.builtins.formatting.prettier,
    },
})


EOF
