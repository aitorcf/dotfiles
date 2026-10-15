return {
  {
    "NeogitOrg/neogit",
    dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim", "ibhagwan/fzf-lua" },
    cmd = "Neogit",
    keys = { { "<leader>ng", "<cmd>Neogit<cr>", desc = "Neogit" } },
    opts = {
        integrations = {
            diffview = true,
            telescope = true
        },
        kind = "tab",
    },
  },
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
    opts = {
      enhanced_diff_hl = true,
      view = {
        merge_tool = {
          layout = "diff3_mixed", -- good for conflict resolution
        },
      },
    },
  },
  {
    "rmagatti/goto-preview",
    opts = {},
    keys = {
      { "<leader>gp", function() require("goto-preview").goto_preview_definition() end, desc = "Preview definition" },
    },
  },
  {
    "rmagatti/auto-session",
    lazy = false,
    opts = { suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" } },
  },
}
