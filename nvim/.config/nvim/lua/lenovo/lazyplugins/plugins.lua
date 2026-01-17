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

    {
        "williamboman/mason-lspconfig.nvim",
        opts = {},
        ensure_installed = {
            "lua_ls",
            "pyright",
            "ltex",
            "bashls"
        },
        dependencies = {
            {
                "williamboman/mason.nvim",
                opts = {},
            },
            "neovim/nvim-lspconfig",
        }
    },
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

    -- repl interaction
    { "Vigemus/iron.nvim" },

    -- typst
    {
        'chomosuke/typst-preview.nvim',
        lazy = false, -- or ft = 'typst'
        version = '1.*',
        opts = {}, -- lazy.nvim will implicitly calls `setup {}`
    },
    -- -- copilot
    -- { "github/copilot.vim" },

    -- ollama
    -- { "David-Kunz/gen.nvim" },

    -- -- notebook in neovim
    -- {
    --     "benlubas/molten-nvim",
    --     version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    --     dependencies = { "3rd/image.nvim" },
    --     build = ":UpdateRemotePlugins",
    --     init = function()
    --         -- these are examples, not defaults. Please see the readme
    --         vim.g.molten_image_provider = "image.nvim"
    --         vim.g.molten_output_win_max_height = 20
    --     end,
    -- },
    -- {
    --     "3rd/image.nvim",
    --     version = "1.1.0", -- for stability
    --     dependencies = {"vhyrro/luarocks.nvim"},
    -- },
    -- {
    --     "vhyrro/luarocks.nvim",
    --     priority = 1001, -- this plugin needs to run before anything else
    --     opts = {
    --         rocks = { "magick" },
    --     },
    -- }

    --- Molten: notebook in neovim
    {
        "benlubas/molten-nvim",
        version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
        build = ":UpdateRemotePlugins",
        init = function()
            -- this is an example, not a default. Please see the readme for more configuration options
            vim.g.molten_output_win_max_height = 12
        end,
    },

    -- Quarto: markdown in neovim
    {
        "quarto-dev/quarto-nvim",
        dependencies = {
            "jmbuhr/otter.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        ft = {"quarto", "markdown"}
    },

    {
        "GCBallesteros/jupytext.nvim",
        config = true,
    },

    -- Conjure
    {
        "Olical/conjure",
        ft = { "clojure", "fennel", "python" }, -- etc
        lazy = true,
        init = function()
            -- Set configuration options here
            -- Uncomment this to get verbose logging to help diagnose internal Conjure issues
            -- This is VERY helpful when reporting an issue with the project
            -- vim.g["conjure#debug"] = true
            vim.g["conjure#mapping#doc_word"] = "gk" -- avoid conflict with LSP
            -- vim.g["conjure#mapping#doc_word"] = {"K"} -- Reset it to the default unprefixed K (note the special table wrapped syntax)


        end,

        -- Optional cmp-conjure integration
        dependencies = { "PaterJason/cmp-conjure" },
    },
    {
        "PaterJason/cmp-conjure",
        lazy = true,
        config = function()
            local cmp = require("cmp")
            local config = cmp.get_config()
            table.insert(config.sources, { name = "conjure" })
            return cmp.setup(config)
        end,
    },
    { 'tpope/vim-dispatch' },
    { 'clojure-vim/vim-jack-in' },
    { 'radenling/vim-dispatch-neovim' },

}
