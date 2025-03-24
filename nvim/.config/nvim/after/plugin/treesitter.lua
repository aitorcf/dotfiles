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
}
