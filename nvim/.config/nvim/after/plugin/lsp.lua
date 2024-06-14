-- Setup language servers.
local lspstatus,lspconfig = pcall( require , 'lspconfig' )
if (not lspstatus) then
    print( "Lspconfig not installed." )
    return
end

-- Mason
local masonstatus,mason = pcall( require , "mason" )
if (not masonstatus) then
    print( "Mason not installed." )
    return
end
mason.setup()
local masonlspstatus,masonlspconfig = pcall( require , "mason-lspconfig" )
if (not masonlspstatus) then
    print( "Masonlspconfig not installed" )
    return
end
masonlspconfig.setup()

lspconfig.pyright.setup {
    on_attach = on_attach,
    filetypes = {"py"}
}
lspconfig.lua_ls.setup {
    on_attach = on_attach,
    filetypes = {"lua"}
}
lspconfig.julials.setup{}
lspconfig.vimls.setup {
    on_attach = on_attach,
    filetypes = {"vim"}
}
lspconfig.clangd.setup {
    on_attach = on_attach,
    filetypes = {"cpp"}
}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
    vim.keymap.set("n", "<leader>gt", "<cmd>tab split | lua vim.lsp.buf.definition()<CR>", {})
    vim.keymap.set("n", "<leader>gv", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", {})
  end,
})
