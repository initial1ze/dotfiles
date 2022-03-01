---@diagnostic disable: undefined-global
local utils = require('utils')

utils.opt('o', 'termguicolors', true)

-- Tokyonight Options
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = false
vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}
vim.g.tokyonight_transparent = true
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_dark_float = false

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = {hint = "orange", error = "#ff0000"}

vim.cmd([[colorscheme tokyonight]])
