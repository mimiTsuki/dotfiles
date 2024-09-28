vim.keymap.set("n", "<S-h>", "0", { noremap = true })
vim.keymap.set("n", "<S-l>", "$", { noremap = true })
vim.keymap.set("n", "<C-j>", "<esc>", { noremap = true })
vim.keymap.set({ "n", "!" }, "<C-j>", "<esc>", { noremap = true })


vim.scriptencoding = "utf-8"
vim.wo.number = true
vim.g.mapleader = " "

local options = {
    encoding = "utf-8",
    fileencoding = "utf-8",
    title = true,
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 2,
    swapfile = false,
    number = true,
    relativenumber = true,
    autoindent = true,
    expandtab = true,
    tabstop = 2,
    shiftwidth = 2,
    writebackup = false,
    updatetime = 300,
    signcolumn = "yes",
    list = true,
    listchars = { tab = "»·", nbsp = "·" },
    termguicolors = true,
    winblend = 0,
    pumblend = 0,
}

vim.opt.shortmess:append("c")
vim.opt.nrformats:append("")

for k, v in pairs(options) do
    vim.opt[k] = v
end


require("config.lazy")

-- QuickScope
vim.cmd 'highlight QuickScopePrimary guifg=#afff5f gui=underline ctermfg=155 cterm=underline'
vim.cmd 'highlight QuickScopeSecondary guifg=#5fffff gui=underline ctermfg=81 cterm=underline'
