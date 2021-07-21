require('nvim-autopairs').setup({
    fast_wrap = {
        -- map = '<leader>m',
        -- chars = {'{', '[', '(', '"', "'"},
        -- pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
        -- end_key = '$',
        -- keys = 'qwertyuiopzxcvbnmasdfghjkl',
        -- check_comma = true,
        -- hightlight = 'Search'
    },
    disable_filetype = {"TelescopePrompt", "vim"}
})

require("nvim-autopairs.completion.compe").setup({
    map_cr = true, --  map <CR> on insert mode
    map_complete = true -- it will auto insert `(` after select function or method item
})
