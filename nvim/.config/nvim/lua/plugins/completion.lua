return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = { { "L3MON4D3/LuaSnip", version = "v2.*" } },
    opts = {
      keymap = {
        preset = "none",
        ["<C-j>"]     = { "accept", "fallback" },
        ["<Tab>"]     = { "select_next", "snippet_forward", "fallback" },
        ["<S-Tab>"]   = { "select_prev", "snippet_backward", "fallback" },
        ["<C-space>"] = { "show", "fallback" },
      },
      snippets = { preset = "luasnip" },
      sources = { default = { "lsp", "path", "snippets", "buffer" } },
      cmdline = { enabled = true },
      completion = { documentation = { auto_show = true } },
    },
  },
}
