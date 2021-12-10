require("toggleterm").setup {
    -- size can be a number or function which is passed the current terminal
    size = 20,
    open_mapping = [[<A-i>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = '<number>', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = true,
    direction = 'float',
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell -- change the default shell
    -- This field is only relevant if direction is set to 'float'
}

local Terminal  = require('toggleterm.terminal').Terminal
local gdb = Terminal:new({cmd= "gdb main", dir = "~/Code/CF", hidden = true,
    on_open = function ()
        vim.api.nvim_put({"run\n"}, "c", true, true)
    end
    }
)

function _gdb_toggle()
    vim.cmd('silent !xclip -selection c -i input')
    gdb:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _gdb_toggle()<CR>", {noremap = true, silent = true})

