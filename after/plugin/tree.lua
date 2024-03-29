-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true
    },
})

vim.keymap.set("n", "<leader>nn", ":NvimTreeToggle<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>nf", ":NvimTreeFindFile<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>nc", ":NvimTreeCollapse<cr>", { noremap = true, silent = true })
