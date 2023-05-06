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

require('lspconfig').pyright.setup{}
require('lspconfig').bashls.setup{}
require('lspconfig').html.setup{}
require('lspconfig').cssls.setup{}
require('lspconfig').jsonls.setup{}
require('lspconfig').vimls.setup{}


EOF
