return {
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
  { "kylechui/nvim-surround", version = "*", event = "VeryLazy", opts = {} },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = { { "<leader>ft", "<cmd>TodoFzfLua<cr>", desc = "Find todos" } },
  },
  {
    "mbbill/undotree",
    keys = { { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undotree" } },
  },
}
