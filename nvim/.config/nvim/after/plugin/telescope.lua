local status, telescope = pcall(require, 'telescope')
if (not status) then
    print("Telescope not installed.")
    return
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope git_branches<cr>', {desc="Find git branches"})
--vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})
vim.keymap.set('n', '<leader>ft', "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
