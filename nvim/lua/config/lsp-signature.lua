require"lsp_signature".setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    floating_window_above_cur_line = false,
    handler_opts = {border = "single"},
    max_height = 6
})
