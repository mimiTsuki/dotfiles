local plugins = {
    {
        "shaunsingh/nord.nvim",
        lazy = false,
        priority = 1000,
        config = function()
          vim.g.nord_contrast = true
          vim.g.nord_borders = false
          vim.g.nord_disable_background = true
          vim.g.nord_italic = false
          vim.g.nord_uniform_diff_background = true
          vim.g.nord_bold = false
          require('nord').set({
            markdown = {
              headline_highlights = {
                "Headline1",
                "Headline2",
                "Headline3",
                "Headline4",
                "Headline5",
                "Headline6",
              },
              codeblock_highlight = "CodeBlock",
              dash_highlight = "Dash",
              quote_highlight = "Quote",
            },
          })
        end,
    },
    "xiyaowong/transparent.nvim",
    'Shougo/ddc.vim',
    'tani/ddc-fuzzy',
    'shun/ddc-vim-lsp',
    'Shougo/pum.vim',
    'junegunn/fzf',
    'junegunn/fzf.vim',
    'prabirshrestha/vim-lsp',
    'mattn/vim-lsp-settings',
    'stevearc/dressing.nvim',
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim",
    "jose-elias-alvarez/null-ls.nvim",
    "jayp0521/mason-null-ls.nvim",
    'nvim-treesitter/nvim-treesitter',
    'tami5/lspsaga.nvim',
    'ray-x/lsp_signature.nvim',
    'onsails/lspkind-nvim',
    'j-hui/fidget.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'tpope/vim-commentary',
    'vim-jp/vimdoc-ja',
    'nvim-lua/plenary.nvim',
    'vim-denops/denops.vim',
}

if vim.fn.has('linux') ~= 1 then
    table.insert(plugins, 'brglng/vim-im-select')
end

return plugins
