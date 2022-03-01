---@diagnostic disable: lowercase-global
options = {theme = 'tokyonight'}
require('lualine').setup {
    options = options,
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {
            'filename', {
                'diagnostics',
                sources = {"nvim_diagnostic"},
                sections = {'error', 'warn', 'info', 'hint'},
                icons_enabled = 1,
                left_padding = 1
            }
        },
        lualine_x = {'filetype'},
        lualine_z = {'location'}
    },
    extensions = {'quickfix', 'nvim-tree'}
}
