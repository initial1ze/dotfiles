local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true) -- cmd 'colorscheme horizon'
--[[ vim.cmd [[colorscheme material]]
-- vim.g.material_style = "deep ocean"
-- vim.g.material_hide_eob = true ]]

-- Default options:
--[[ require('kanagawa').setup({
    undercurl = true, -- enable undercurls
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    specialReturn = true, -- special highlight for the return keyword
    specialException = true, -- special highlight for exception handling keywords 
    transparent = false, -- do not set background color
    colors = {},
    overrides = {}
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa") ]]

-- cmd 'colorscheme material'
-- vim.g.gruvbox_contrast_dark = 'hard'
-- vim.g.gruvbox_number_column = '#1d2021'
-- -- Example config in Lua
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = false
vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}

-- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = {hint = "orange", error = "#ff0000"}

-- -- Load the colorscheme
vim.cmd [[colorscheme tokyonight]]

-- vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]] ]]

-- vim.cmd [[colorscheme ayu]]
