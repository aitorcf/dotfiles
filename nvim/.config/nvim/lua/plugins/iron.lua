return {
    "Vigemus/iron.nvim",
    ft = { "python" },
    config = function()
        local iron = require("iron.core")
        local view = require("iron.view")
        local common = require("iron.fts.common")

        iron.setup({
            config = {
                scratch_repl = true,
                repl_definition = {
                    python = {
                        -- use ipython if installed, otherwise fall back to python3
                        command = vim.fn.executable("ipython") == 1
                        and { "ipython", "--no-autoindent" }
                        or { "python3" },
                        format = common.bracketed_paste_python,
                        block_dividers = { "# %%", "#%%" },
                    },
                },
                repl_open_cmd = view.split.vertical.botright("40%"),
            },
            keymaps = {
                toggle_repl = "<leader>rr",
                restart_repl = "<leader>rR",
                send_motion = "<leader>sc",
                visual_send = "<leader>sc",
                send_file = "<leader>sf",
                send_line = "<leader>sl",
                send_paragraph = "<leader>sp",
                send_until_cursor = "<leader>su",
                send_code_block = "<leader>sb",
                send_code_block_and_move = "<leader>sn",
                cr = "<leader>s<cr>",
                interrupt = "<leader>s<space>",
                exit = "<leader>sq",
                clear = "<leader>cl",
            },
            highlight = { italic = true },
            ignore_blank_lines = true,
        })
    end,
}
