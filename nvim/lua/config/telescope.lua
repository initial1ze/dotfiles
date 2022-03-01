require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            'node_modules/', '__pycache__', 'yarn.lock', 'package.json.lock',
            '.*.tz', '.*.deb', '.*.iso', '.*.gz', '.*.otf', '.*.ttf'
        }
    }
}
