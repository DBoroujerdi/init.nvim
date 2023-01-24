require("telescope").setup {
    pickers = {
        grep_string = {
            theme = "ivy",
        },
        find_files = {
            theme = "ivy"
        }
    }
}

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", ":Telescope find_files theme=ivy<cr>", {})
vim.keymap.set("n", "<leader>pg", ":Telescope git_files theme=ivy<cr>", {})
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set("n", "<leader>:", ":Telescope command_history theme=dropdown<cr>")

vim.keymap.set("n", "<leader>/", ":Telescope current_buffer_fuzzy_find theme=ivy<cr>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>pp", ":Telescope projects theme=ivy<cr>", { noremap = true, silent = true })

-- Git
vim.keymap.set("n", "<leader>gc", ":Telescope git_commits theme=ivy<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gk", ":Telescope git_bcommits theme=ivy<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches theme=ivy<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gs", ":Telescope git_status theme=ivy<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gt", ":Telescope git_stash theme=ivy<cr>", { noremap = true, silent = true })

-- Vim
vim.keymap.set("n", "<leader>c", ":Telescope commands theme=ivy<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", ":Telescope keymaps theme=ivy<cr>", { noremap = true, silent = true })

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
