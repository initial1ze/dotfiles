---@diagnostic disable: undefined-global
return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}

    -- Color schemes
    use {'ayu-theme/ayu-vim'}
    use {'folke/tokyonight.nvim'}

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- LSP and completion
    use {'neovim/nvim-lspconfig'}
    use {'williamboman/nvim-lsp-installer'}
    use {'p00f/nvim-ts-rainbow'}
    use {'windwp/nvim-ts-autotag'}
    use {'wellle/targets.vim'}

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

    -- Better syntax
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- Snippets
    use {'L3MON4D3/LuaSnip'}
    use {'saadparwaiz1/cmp_luasnip'}
    use {'rafamadriz/friendly-snippets'}
    use {'honza/vim-snippets'}
    use {'ylcnfrht/vscode-python-snippet-pack'}
    use {'xabikos/vscode-javascript'}
    use {'dsznajder/vscode-es7-javascript-react-snippets'}

    -- Terminal
    use {'akinsho/nvim-toggleterm.lua'}

    -- Speed up
    use {'lewis6991/impatient.nvim'}

    use {'vimwiki/vimwiki'}

    use {'skywind3000/asynctasks.vim'}
    use {'skywind3000/asyncrun.vim'}

    use {'nvim-treesitter/nvim-treesitter-textobjects'}
end)
