return {
  { "mason-org/mason.nvim", opts = {} },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
        local function transparent_sign_gutter()
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "SignColumnSB", { bg = "NONE" })   -- some themes use this
            vim.api.nvim_set_hl(0, "CursorLineSign", { bg = "NONE" }) -- optional, current line
        end

        transparent_sign_gutter()

        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = transparent_sign_gutter,
        })
        local function set_diag_icons()
            vim.opt.signcolumn = "yes:1"
            vim.diagnostic.config({
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = " ",
                        [vim.diagnostic.severity.WARN]  = " ",
                        [vim.diagnostic.severity.INFO]  = " ",
                        [vim.diagnostic.severity.HINT]  = "󰌵 ",
                    },
                },
                underline = true,
                virtual_text = false,
                virtual_lines = false,
                severity_sort = true,
                update_in_insert = false,
                float = { border = "rounded", source = "if_many" },
                jump = { wrap = true },
            })
        end

        -- run at startup
        vim.api.nvim_create_autocmd("VimEnter", { callback = set_diag_icons })
        -- run after loading a session (important in your case)
        vim.api.nvim_create_autocmd("SessionLoadPost", { callback = set_diag_icons })
        -- run after colorscheme/plugin UI changes
        vim.api.nvim_create_autocmd("ColorScheme", { callback = set_diag_icons })

        -- immediate apply too
        set_diag_icons()
        vim.lsp.config("basedpyright", {
            settings = {
                basedpyright = {
                    analysis = {
                        typeCheckingMode = "basic",
                        diagnosticSeverityOverrides = {
                            reportUnknownVariableType = "none",
                            reportUnknownMemberType = "none",
                            reportUnknownArgumentType = "none",
                            reportUnknownParameterType = "none",
                            reportMissingTypeStubs = "none",
                            reportPrivateUsage = "none",
                            reportOptionalMemberAccess = "warning",
                            reportOptionalSubscript = "warning",
                            reportGeneralTypeIssues = "warning",
                        },
                    },
                },
            },
        })
        vim.lsp.enable("basedpyright")
    end,
    dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
    opts = {
      ensure_installed = { "lua_ls", "basedpyright", "bashls", "ltex_plus", "tinymist" },
    },
  },
}
