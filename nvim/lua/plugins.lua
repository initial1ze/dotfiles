---@diagnostic disable: undefined-global
return require('packer').startup(function()
    -- Manage packer itself.
    use {'wbthomason/packer.nvim', opt = true}

    -- Basic Utils
    use {'lewis6991/impatient.nvim'}
    use {'nathom/filetype.nvim'}

    -- Color schemes
    use {'ayu-theme/ayu-vim'}
    use {'folke/tokyonight.nvim'}

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- LSP and completion
    use {'neovim/nvim-lspconfig'}
    use {'williamboman/nvim-lsp-installer'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-nvim-lua'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp-signature-help'}
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require("trouble").setup {} end
    }
    use {'stevearc/dressing.nvim'}

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'nvim-treesitter/nvim-treesitter-textobjects'}
    use {'wellle/targets.vim'}
    use {'p00f/nvim-ts-rainbow'}
    use {'windwp/nvim-ts-autotag'}

    -- Buffer
    use {'akinsho/nvim-bufferline.lua'}

    -- Commentary
    use {'b3nj5m1n/kommentary'}

    -- Auto Pairs
    use {'windwp/nvim-autopairs'}

    -- Dev Icons for Status Line
    use {'kyazdani42/nvim-web-devicons'}

    -- Formatter
    use {'mhartington/formatter.nvim'}

    -- Indent Line
    use {'lukas-reineke/indent-blankline.nvim'}

    -- Lualine
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Nvim Tree
    use {'kyazdani42/nvim-tree.lua'}

    -- Snippets
    use {'L3MON4D3/LuaSnip'}
    use {'saadparwaiz1/cmp_luasnip'}
    use {'rafamadriz/friendly-snippets'}
    use {'honza/vim-snippets'}
    use {'ylcnfrht/vscode-python-snippet-pack'}
    use {'dsznajder/vscode-es7-javascript-react-snippets'}

    -- Terminal
    use {'akinsho/nvim-toggleterm.lua'}

    -- Wiki
    use {'vimwiki/vimwiki'}

    -- Tasks
    use {'skywind3000/asynctasks.vim'}
    use {'skywind3000/asyncrun.vim'}

end)
