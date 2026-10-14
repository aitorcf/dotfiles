return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-fzf-native.nvim",
      "folke/todo-comments.nvim",
    },
    build = "make",
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
      { "<leader>fb", "<cmd>Telescope git_branches<cr>", desc = "Git branches" },
      { "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Todos" },
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({})
      pcall(telescope.load_extension, "fzf")
    end,
  },
}
