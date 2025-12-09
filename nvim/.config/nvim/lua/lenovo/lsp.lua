vim.lsp.config("jetls", {
    cmd = {
        "jetls",
        "--threads=auto",
        "--",
    },
    filetypes = {"julia"},
})
vim.lsp.enable("jetls")
