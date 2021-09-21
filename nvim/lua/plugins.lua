---@diagnostic disable: undefined-global
return require('packer').startup(function()

    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- Color schemes
    use {'ayu-theme/ayu-vim'}
    use {'folke/tokyonight.nvim'}
    use {'rafi/awesome-vim-colorschemes'}
    use 'marko-cerovac/material.nvim'

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- LSP and completion
    use {'neovim/nvim-lspconfig'}
    use {'kabouzeid/nvim-lspinstall'}
    use {'hrsh7th/nvim-compe'}
    use {'onsails/lspkind-nvim'}
    use {'p00f/nvim-ts-rainbow'}
    use {'windwp/nvim-ts-autotag'}
    use {'wellle/targets.vim'}

    -- Which key
    use {
        'folke/which-key.nvim',
        config = function() require('which-key').setup {} end
    }

    -- Buffer
    use {'akinsho/nvim-bufferline.lua'}

    -- Lua development
    use {'tjdevries/nlua.nvim'}

    -- Commentary
    use {'b3nj5m1n/kommentary'}

    -- Horizon Colorschme
    use {'ntk148v/vim-horizon'}

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

    -- LSP Signaature
    use {'ray-x/lsp_signature.nvim'}

    -- Better syntax
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- Snippets
    use {'hrsh7th/vim-vsnip'}
    use {'hrsh7th/vim-vsnip-integ'}
    use {'rafamadriz/friendly-snippets'}
    use {'kkonghao/snippet-dog'}
    use {'honza/vim-snippets'}
    use {'ylcnfrht/vscode-python-snippet-pack'}
    use {'xabikos/vscode-javascript'}
    use {'dsznajder/vscode-es7-javascript-react-snippets'}

    -- Tasks
    use {'skywind3000/asyncrun.vim'}
    use {'skywind3000/asynctasks.vim'}

    -- Better Wildmenu
    -- use {'gelguy/wilder.nvim'}

    -- Terminal
    use {'akinsho/nvim-toggleterm.lua'}

    -- Speed up
    use {'lewis6991/impatient.nvim'}

    -- DAP
    --[[ use {'mfussenegger/nvim-dap'}
    use {'nvim-telescope/telescope-dap.nvim'}
    use {'mfussenegger/nvim-dap-python'} -- Python ]]

end)
