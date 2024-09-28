return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        vim.g.loaded_netrwPlugin = 1
        vim.g.loaded_netrw = 1
        vim.opt.termguicolors = true

        require("nvim-tree").setup({
            sort_by = "case_sensitive",
            view = {
                adaptive_size = true
            },
            renderer = {
                group_empty = true
            },
            filters = {
                dotfiles = true
            }
        })
    end,
    keys = { { '<C-b>', '<Cmd>NvimTreeToggle<CR>' } }
}
