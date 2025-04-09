
return {

    -- gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        lazy = false,
        opts = {

        }
    },

    -- gitsigns (https://github.com/lewis6991/gitsigns.nvim)
    { "lewis6991/gitsigns.nvim" , opts = {} },

    -- todo, warning, etc. comments
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
    },

    -- tabs
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
    },

    -- statusline
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },

    -- session save and reload (https://github.com/rmagatti/auto-session)
    {
        'rmagatti/auto-session',
        lazy = false,

        --enables autocomplete for opts
        ---@module "auto-session"
        ---@type AutoSession.Config
        opts = {
            suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
        },
    },

    -- telescope (https://github.com/nvim-telescope/telescope.nvim)
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            "BurntSushi/ripgrep",
            "nvim-telescope/telescope-fzf-native.nvim",
            "folke/todo-comments.nvim",
        },
        opts = {}, 
    },

    -- undo-tree (https://github.com/mbbill/undotree)
    { 'mbbill/undotree' },

    -- treesitter (https://github.com/nvim-treesitter/nvim-treesitter)
    { "nvim-treesitter/nvim-treesitter" },

    -- VimTex (https://github.com/lervag/vimtex)
    {
        "lervag/vimtex",
        lazy=false,
    },

    -- search-replace (https://github.com/roobert/search-replace.nvim)
    -- { 'roober/search-replace.nvim', opts = {} },

    -- vim-like file explorers
    {
      'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        dependencies = { "nvim-tree/nvim-web-devicons" }, 
        lazy = false,
    },
    { 'echasnovski/mini.files', version = false },

    -- autopairs (https://github.com/windwp/nvim-autopairs)
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },

    -- surround 
    { "tpope/vim-surround", config = function () end },

    -- git integration (https://github.com/NeogitOrg/neogit)
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration
            "nvim-telescope/telescope.nvim", 
        },
    },

    -- lsp (https://github.com/williamboman/mason.nvim)
    {
        "williamboman/mason.nvim",
        lazy = false,
    },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
    { "mfussenegger/nvim-lint" },

    -- preview declarations (https://github.com/rmagatti/goto-preview)
    { "rmagatti/goto-preview", opts = {} },

    -- completion (https://github.com/hrsh7th/nvim-cmp)
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },

    -- markdown preview (https://github.com/iamcco/markdown-preview.nvim)
    {
        "iamcco/markdown-preview.nvim",
        cmd = {
            "MarkdownPreviewToggle",
            "MarkdownPreview",
            "MarkdownPreviewStop"
        },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    -- comments (https://github.com/numToStr/Comment.nvim)
    { "numToStr/Comment.nvim", opts = {} },

}
