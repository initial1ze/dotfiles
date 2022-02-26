require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            'node_modules/', '__pycache__', 'yarn.lock', 'package.json.lock',
            '.*.tz', '.*.deb', '.*.iso', '.*.gz', '.*.otf', '.*.ttf'
        }
    },
    --[[ extensions = {
        media_files = {
            -- filetypes whitelist
            -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
            filetypes = {"png", "webp", "jpg", "jpeg"},
            find_cmd = "rg" -- find command (defaults to `fd`)
        }
    } ]]
}

-- require('telescope').load_extension('media_files')
-- require('telescope').load_extension('yabs')

-- load refactoring Telescope extension
-- require("telescope").load_extension("refactoring")

-- remap to open the Telescope refactoring menu in visual mode
--[[ vim.api.nvim_set_keymap("v", "<leader>rr",
                        "<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
                        {noremap = true}) ]]

--[[ if vim.fn['argc']() == 0 and (vim.fn['getcwd']() ~= "/home/initial1ze") and
    vim.fn['getcwd']() ~= "/home/initial1ze/code/cf" then
    vim.schedule(function() vim.cmd('Telescope find_files') end)
end ]]
