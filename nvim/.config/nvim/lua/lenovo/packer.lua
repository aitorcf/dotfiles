local status, packer = pcall(require, "packer")
if not status then
    print("Packer not installed")
    return
end

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return packer.startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Icons
    use("nvim-tree/nvim-web-devicons")

    -- Startup
    --use {
    --    'goolord/alpha-nvim',
    --    config = function ()
    --        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    --    end
    --}

    -- todo comments
    use({
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    })

    -- Bufferline and Lualine
    use({
        "akinsho/bufferline.nvim",
        --tag = "v3.*",
        requires = "nvim-tree/nvim-web-devicons",
    })
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    })

    -- Session manager
    use("rmagatti/auto-session")

    -- Column at 80 characters
    --use "m4xshen/smartcolumn.nvim"

    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "BurntSushi/ripgrep",
            "nvim-telescope/telescope-fzf-native.nvim",
            "folke/todo-comments.nvim",
        },
    })
    use("kien/ctrlp.vim")

    -- Colorschemes
    use("ellisonleao/gruvbox.nvim")
    --use 'marko-cerovac/material.nvim'
    --use {
    --    'nvimdev/zephyr-nvim',
    --    requires = {'nvim-treesitter/nvim-treesitter' , opt=true}
    --}
    --use 'Mofiqul/dracula.nvim'
    --use "neanias/everforest-nvim"
    --use({ 'rose-pine/neovim', as = 'rose-pine' })
    --use "rebelot/kanagawa.nvim"

    -- UndoTree
    use("mbbill/undotree")

    -- Treesitter
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

    -- VimTex
    use("lervag/vimtex")

    -- Search-Replace
    use("roobert/search-replace.nvim")

    -- Nvim-Tree
    use({
        "nvim-tree/nvim-tree.lua",
        requires = "nvim-tree/nvim-web-devicons",
    })

    -- Oil
    use("stevearc/oil.nvim")

    -- Autopairs and surround
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    })
    use("tpope/vim-surround")

    -- Git
    use("lewis6991/gitsigns.nvim")
    use("tpope/vim-fugitive")
    use("tpope/vim-rhubarb")
    use("junegunn/gv.vim")

    -- LSP
    use({
        "williamboman/mason.nvim",
        run = ":MasonUpdate", -- :MasonUpdate updates registry contents
    })
    use("williamboman/mason-lspconfig.nvim")
    use("neovim/nvim-lspconfig")
    use("mfussenegger/nvim-dap")
    use "nvimtools/none-ls.nvim"

    -- Copilot
    use({ "github/copilot.vim" })
    use({
        "CopilotC-Nvim/CopilotChat.nvim",
        requires = { "github/copilot.vim", "nvim-lua/plenary.nvim" },
        opts = { debug = true },
    })

    -- Declaration previews
    use({
        "rmagatti/goto-preview",
        config = function()
            require("goto-preview").setup({})
        end,
    })

    -- Completion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/cmp-nvim-lsp")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    -- use 'quangnguyen30192/cmp-nvim-ultisnips'
    -- use {'SirVer/ultisnips',
    --     requires = {{'honza/vim-snippets', rtp = '.'}},
    --     config = function()
    --         vim.g.UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'
    --         vim.g.UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
    --         vim.g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
    --         vim.g.UltiSnipsListSnippets = '<c-x><c-s>'
    --         vim.g.UltiSnipsRemoveSelectModeMappings = 0
    --     end
    -- }

    -- Markdown preview
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    })

    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    })
end)
