require'nvim-treesitter.configs'.setup {
    refactor = {
        highlight_current_scope = {enable = true},
        smart_rename = {enable = true, keymaps = {smart_rename = "grr"}}
    }
}
