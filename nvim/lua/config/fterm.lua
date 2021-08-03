local utils = require('utils')

require'FTerm'.setup({
    dimensions = {height = 0.8, width = 0.8, x = 0.5, y = 0.5},
    border = 'single' -- or 'double'
})

-- Keybinding
local opts = {noremap = true, silent = true}

utils.map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
utils.map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>',
          opts)
