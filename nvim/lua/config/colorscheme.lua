local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)

-- cmd 'colorscheme horizon'
cmd 'colorscheme ayu'
-- vim.g.gruvbox_contrast_dark = 'hard'
-- vim.g.gruvbox_number_column = '#1d2021'
-- -- Example config in Lua
-- vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_italic_functions = false
-- vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}

-- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- vim.g.tokyonight_colors = {hint = "orange", error = "#ff0000"}

-- -- Load the colorscheme
-- vim.cmd [[colorscheme tokyonight]]