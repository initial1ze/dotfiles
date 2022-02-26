require('refactoring').setup({})

require('refactoring').setup({
    -- prompt for return type
    prompt_func_return_type = {cpp = true, c = true},
    -- prompt for function parameters
    prompt_func_param_type = {cpp = true, c = true}
})

-- Remaps for each of the four debug operations currently offered by the plugin
vim.api.nvim_set_keymap("v", "<Leader>re",
                        [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]],
                        {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<Leader>rf",
                        [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]],
                        {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<Leader>rv",
                        [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]],
                        {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<Leader>ri",
                        [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
                        {noremap = true, silent = true, expr = false})

-- You can also use below = true here to to change the position of the printf
-- statement (or set two remaps for either one). This remap must be made in normal mode.
vim.api.nvim_set_keymap("n", "<leader>rp",
                        ":lua require('refactoring').debug.printf({below = false})<CR>",
                        {noremap = true})

-- Print var: this remap should be made in visual mode
vim.api.nvim_set_keymap("v", "<leader>rv",
                        ":lua require('refactoring').debug.print_var({})<CR>",
                        {noremap = true})

-- Cleanup function: this remap should be made in normal mode
vim.api.nvim_set_keymap("n", "<leader>rc",
                        ":lua require('refactoring').debug.cleanup({})<CR>",
                        {noremap = true})

--[[ require'nvim-treesitter.configs'.setup {
    refactor = {
        highlight_current_scope = {enable = true},
        smart_rename = {enable = true, keymaps = {smart_rename = "grr"}}
    }
} ]]
