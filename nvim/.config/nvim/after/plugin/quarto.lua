require('quarto').setup{
  debug = false,
  closePreviewOnExit = true,
  ft = {"quarto", "markdown"},
  lspFeatures = {
    enabled = true,
    chunks = "curly",
    languages = { "python", "julia", "bash" },
    diagnostics = {
      enabled = true,
      triggers = { "BufWritePost" },
    },
    completion = {
      enabled = true,
    },
  },
  codeRunner = {
    enabled = true,
    default_method = "molten", -- "molten", "slime", "iron" or <function>
    ft_runners = {
        python = "molten",
        julia = "iron",
    }, -- filetype to runner, ie. `{ python = "molten" }`.
    -- Takes precedence over `default_method`
    never_run = { 'yaml' }, -- filetypes which are never sent to a code runner
  },
  keymap = {
      hover = "K",
      definition = "gd",
      rename = "<leader>rN",
      references = "gr",
      format = "gf"
  },
}

local runner = require("quarto.runner")
vim.keymap.set("n", "<localleader>qc", runner.run_cell,  { desc = "run cell", silent = true })
vim.keymap.set("n", "<localleader>qa", runner.run_above, { desc = "run cell and above", silent = true })
vim.keymap.set("n", "<localleader>qA", runner.run_all,   { desc = "run all cells", silent = true })
vim.keymap.set("n", "<localleader>ql", runner.run_line,  { desc = "run line", silent = true })
vim.keymap.set("v", "<localleader>qr",  runner.run_range, { desc = "run visual range", silent = true })
vim.keymap.set("n", "<localleader>qA", function()
  runner.run_all(true)
end, { desc = "run all cells of all languages", silent = true })
