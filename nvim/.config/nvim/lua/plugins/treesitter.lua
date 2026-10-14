return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "lua", "vim", "vimdoc", "query", "bash", "python", "julia",
      "markdown", "markdown_inline", "latex", "typst", "clojure",
    })
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(ev) pcall(vim.treesitter.start, ev.buf) end,
    })
  end,
}
