-- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1




-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- line numbering
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- turn off that annoying highlight when searching
vim.opt.hlsearch = false

-- incrementally highlight when searching
vim.opt.incsearch = true

-- add a column space to the left of 
-- numbers to prevent jumpyness when 
-- lsp/git signs are rendered
vim.opt.signcolumn = "yes"

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
