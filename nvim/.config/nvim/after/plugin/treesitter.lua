local status,treesitter = pcall( require , 'nvim-treesitter.configs' )
if (not status) then
    print( "Treesitter not installed." )
    return
end

treesitter.setup {

  ensure_installed = {
      "cpp",
      "julia" ,
      "python" ,
      "fortran" ,
      "lua",
      "vim",
      "vimdoc",
      "query",
      "clojure"
  },

  ignore_installed = {"all"},

  incremental_selection = {
      enable = true,
      keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<C-b>",
      },
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {

    enable = true,

    disable = {"markdown","latex","solidity"},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  textobjects = {
      move = {
          enable = true,
          set_jumps = false, -- you can change this if you want.
          goto_next_start = {
              --- ... other keymaps
              ["]b"] = { query = "@code_cell.inner", desc = "next code block" },
          },
          goto_previous_start = {
              --- ... other keymaps
              ["[b"] = { query = "@code_cell.inner", desc = "previous code block" },
          },
      },
      select = {
          enable = true,
          lookahead = true, -- you can change this if you want
          keymaps = {
              --- ... other keymaps
              ["ib"] = { query = "@code_cell.inner", desc = "in block" },
              ["ab"] = { query = "@code_cell.outer", desc = "around block" },
          },
      },
      swap = { -- Swap only works with code blocks that are under the same
          -- markdown header
          enable = true,
          swap_next = {
              --- ... other keymap
              ["<leader>sbl"] = "@code_cell.outer",
          },
          swap_previous = {
              --- ... other keymap
              ["<leader>sbh"] = "@code_cell.outer",
          },
      },
  }
}
