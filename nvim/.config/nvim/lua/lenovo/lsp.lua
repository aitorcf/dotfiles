vim.lsp.config("jetls", {
    cmd = {
        "jetls",
        "--threads=auto",
        "--",
    },
    filetypes = { "julia" },
    root_markers = { "Project.toml" }
})
vim.lsp.enable("jetls")

-- vim.lsp.config("ltex", {
--   settings = {
--     ltex = {
--       language = { "en", "es" }, -- to check only Spanish, or { "en", "es" } for both
--       enabled = { "markdown", "latex", "text" },
--     },
--   },
-- })

-- vim.lsp.config("tinymist", {
--     settings = {
--         formatterMode = "typstyle",
--         exportPdf = "onType",
--         semanticTokens = "disable"
--     }
-- })

