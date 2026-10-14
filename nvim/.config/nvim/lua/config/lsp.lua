-- diagnostics
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end)
vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true }) end)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

vim.diagnostic.config({
  float = { border = "rounded", source = "if_many" },
})

-- buffer-local maps once a server attaches
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("user_lsp", { clear = true }),
  callback = function(ev)
    local o = { buffer = ev.buf }
    local m = vim.keymap.set
    m("n", "gD", vim.lsp.buf.declaration, o)
    m("n", "gd", vim.lsp.buf.definition, o)
    m("n", "K", vim.lsp.buf.hover, o)
    m("n", "gi", vim.lsp.buf.implementation, o)
    m("n", "<C-k>", vim.lsp.buf.signature_help, o)
    m("n", "<space>wa", vim.lsp.buf.add_workspace_folder, o)
    m("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, o)
    m("n", "<space>wl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, o)
    m("n", "<space>D", vim.lsp.buf.type_definition, o)
    m("n", "<space>rn", vim.lsp.buf.rename, o)
    m({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, o)
    m("n", "gr", vim.lsp.buf.references, o)
    m("n", "<space>f", function() vim.lsp.buf.format({ async = true }) end, o)
    m("n", "<leader>gt", "<cmd>tab split | lua vim.lsp.buf.definition()<CR>")
    m("n", "<leader>gv", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", o)
  end,
})

-- Julia (installed outside mason)
vim.lsp.config("jetls", {
  cmd = { "jetls", "--threads=auto", "--" },
  filetypes = { "julia" },
})
vim.lsp.enable("jetls")
