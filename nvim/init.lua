---@diagnostic disable: undefined-global
require('impatient')

-- Leader
vim.g.mapleader = ','
local fn = vim.fn
local execute = vim.api.nvim_command

-- Defaults
require('settings')

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' ..
                install_path)
end
vim.cmd([[packadd packer.nvim]])
vim.cmd('autocmd BufWritePost plugins.lua PackerCompile')

-- Mappings
require('keymappings')

-- Plugins
require('plugins')

-- LSP
require('lsp')

-- Config
require('config.indentline')
require('config.lualine')
require('config.colorscheme')
require('config.cmp')
require('config.treesitter')
require('config.bufferline')
require('config.autopairs')
require('config.toggleterm')
require('config.telescope')
require('config.nvimtree')
require('config.formatter')
