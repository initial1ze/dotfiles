---@diagnostic disable: undefined-global
return require('packer').startup(function()

    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- Color schemes
    use {'morhetz/gruvbox'}
    use {'sainnhe/gruvbox-material'}
    use {'ayu-theme/ayu-vim'}
    use {'folke/tokyonight.nvim'}
    use {'rafi/awesome-vim-colorschemes'}
    use 'marko-cerovac/material.nvim'

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        config = function()
            require('telescope').setup {
                defaults = {
                    file_ignore_patterns = {'node_modules', 'yarn.lock'}
                }
            }
        end
    }

    -- LSP and completion
    use {'neovim/nvim-lspconfig'}
    use {'kabouzeid/nvim-lspinstall'}
    use {'glepnir/lspsaga.nvim'}
    use {'hrsh7th/nvim-compe'}
    use {'onsails/lspkind-nvim'}
    use {'p00f/nvim-ts-rainbow'}
    use {'RRethy/vim-illuminate'}
    use {
        'folke/trouble.nvim',
        config = function() require('trouble').setup {} end
    }
    use {'windwp/nvim-ts-autotag'}

    -- Which key
    use {
        'folke/which-key.nvim',
        config = function() require('which-key').setup {} end
    }

    -- Smooth Scroll
    use {'karb94/neoscroll.nvim'}

    -- Lua development
    use {'tjdevries/nlua.nvim'}

    -- Vim dispatch
    use {'tpope/vim-dispatch'}

    -- Fugitive for Git
    use {'tpope/vim-fugitive'}

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
    use {'honza/vim-snippets'}
    use {'cstrap/python-snippets'}
    use {'ylcnfrht/vscode-python-snippet-pack'}
    use {'xabikos/vscode-javascript'}
    use {'golang/vscode-go'}
    use {'rust-lang/vscode-rust'}
    use {'dsznajder/vscode-es7-javascript-react-snippets'}

    -- Buffer
    use {'akinsho/nvim-bufferline.lua'}

    -- Surround
    use {
        'blackCauldron7/surround.nvim',
        config = function()
            require'surround'.setup {mappings_style = 'surround'}
        end
    }

    -- Git Signs
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require('gitsigns').setup() end
    }

    -- Tasks
    use {'skywind3000/asyncrun.vim'}
    use {'skywind3000/asynctasks.vim'}

    -- FTerm
    use {'numtostr/FTerm.nvim'}

end)
