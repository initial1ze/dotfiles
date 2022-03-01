require("toggleterm").setup {
    size = 20,
    open_mapping = [[<A-i>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = '<number>',
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = 'horizontal',
    close_on_exit = true,
    shell = vim.o.shell
}
