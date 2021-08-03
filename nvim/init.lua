---@diagnostic disable: undefined-global
-- Map Leader
vim.g.mapleader = ','
local fn = vim.fn
local execute = vim.api.nvim_command

-- Sensible defaults
require('settings')

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' ..
                install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- Key mappings
require('keymappings')

-- Install plugins
require('plugins')

-- Setup Lua language server using submodule
require('lsp_lua')

-- Config
require('config.lualine')
require('config.colorscheme')
require('config.compe')
require('config.formatter')
require('config.treesitter')
require('config.lspkind')
require('config.bufferline')
require('config.autopairs')
require('config.neoscroll')
require('config.lspsaga')
require('config.fterm')
-- require('config.refactoring')
-- require('config.dashboard')
-- require('config.presence')
