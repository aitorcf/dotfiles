return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = { { "E", ":e .<CR>", silent = true, desc = "Open cwd in oil" } },
  opts = {
    view_options = {
      show_hidden = true,
      natural_order = "fast",
      sort = { { "type", "asc" }, { "name", "asc" } },
    },
  },
}
