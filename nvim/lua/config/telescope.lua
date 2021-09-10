require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            'node_modules/', '__pycache__', 'yarn.lock', 'package.json.lock',
            '.*.png', '.*.pdf', '.*.jpg', '.*.docx', '.*.tz', '.*.deb',
            '.*.iso', '.*.gz', '.*.mkv', '.*.mp4', '.*.otf', '.*.ttf'
        }
    }
}

if vim.fn['argc']() == 0 and (vim.fn['getcwd']() ~= "/home/initial1ze") and
    vim.fn['getcwd']() ~= "/home/initial1ze/Code/CF" then
    vim.schedule(function() vim.cmd('Telescope find_files') end)
end
