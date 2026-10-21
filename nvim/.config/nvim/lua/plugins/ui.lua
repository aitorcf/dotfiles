return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = { options = { theme = "gruvbox" } },
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = { mode = "tabs", diagnostics = "lsp" },
      highlights = { buffer_selected = { italic = false } },
    },
  },
  {
      "lewis6991/gitsigns.nvim",
      opts = {
          signs = {
              add          = { text = " " },
              change       = { text = " " },
              delete       = { text = " " },
              topdelete    = { text = "󰁂 " },
              changedelete = { text = " " },
              untracked    = { text = " " },
          },
          signs_staged = {
              add          = { text = " " },
              change       = { text = " " },
              delete       = { text = " " },
              topdelete    = { text = "󰁂 " },
              changedelete = { text = " " },
              untracked    = { text = " " },
          },
      },
    keys = {
      { "<leader>gk", "<cmd>Gitsigns prev_hunk<cr>",    desc = "Prev hunk" },
      { "<leader>gj", "<cmd>Gitsigns next_hunk<cr>",    desc = "Next hunk" },
      { "<leader>gv", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview hunk" },
    },
  },
}
