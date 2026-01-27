vim.lsp.config("jetls", {
    cmd = {
        "jetls",
        "--threads=auto",
        "--",
    },
    filetypes = {"julia"},
})
vim.lsp.enable("jetls")

-- vim.lsp.config("tinymist", {
--     settings = {
--         formatterMode = "typstyle",
--         exportPdf = "onType",
--         semanticTokens = "disable"
--     }
-- })

