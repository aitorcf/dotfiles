return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    ft = { "markdown" },
    init = function()
        vim.g.mkdp_auto_start = 0
        vim.g.mkdp_auto_close = 1
        vim.g.mkdp_refresh_slow = 0
        vim.g.mkdp_theme = "dark"
        vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", {
            desc = "Markdown Preview",
            silent = true,
        })
    end,
}
