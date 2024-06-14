local status, null_ls = pcall( require , "null-ls" )
if not status then return end

null_ls.setup({
    sources = {
        --null_ls.builtins.formatting.stylua,
        --
        --null_ls.builtins.diagnostics.chktex,
        null_ls.builtins.diagnostics.codespell.with({
            extra_filetypes = {"tex","latex"},
            diagnostic_config = {
                -- see :help vim.diagnostic.config()
                underline = true,
                virtual_text = false,
                signs = true,
                update_in_insert = true,
                severity_sort = true,
            },
        }),
        null_ls.builtins.diagnostics.write_good.with({
            filetypes = {"tex","latex"},
            diagnostic_config = {
                -- see :help vim.diagnostic.config()
                underline = true,
                virtual_text = false,
                signs = false,
                update_in_insert = true,
            },
            extra_args = {"--no-passive"}
        }),
        -- null_ls.builtins.diagnostics.vale.with({
        --     filetypes = {"tex","latex"},
        --     diagnostic_config = {
        --         underline = true,
        --         virtual_text = false,
        --         signs = false,
        --         update_in_insert = true,
        --     },
        -- }),
        null_ls.builtins.diagnostics.commitlint,
        null_ls.builtins.diagnostics.proselint.with({
            filetypes = {"tex","latex"},
            diagnostic_config = {
                -- see :help vim.diagnostic.config()
                underline = true,
                virtual_text = false,
                signs = false,
                update_in_insert = true,
            },
        }),
        --
        null_ls.builtins.code_actions.proselint.with({
            filetypes = {"tex","latex"}
        }),
        null_ls.builtins.code_actions.gitsigns,
        --
        --null_ls.builtins.completion.spell,
        --
        null_ls.builtins.hover.dictionary.with({
            extra_filetypes = {"latex","tex","lua"}
        })
    },
})

vim.keymap.set("n","<leader>dd",":lua vim.diagnostic.open_float()<CR>",{silent=true})
