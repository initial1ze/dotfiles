require('formatter').setup({
    logging = false,
    filetype = {
        css = {
            -- prettier
            function()
                return {
                    exe = 'prettier',
                    args = {'--stdin-filepath', vim.api.nvim_buf_get_name(0)},
                    stdin = true
                }
            end
        },
        html = {
            -- prettier
            function()
                return {
                    exe = 'prettier',
                    args = {'--stdin-filepath', vim.api.nvim_buf_get_name(0)},
                    stdin = true
                }
            end
        },
        javascript = {
            -- prettier
            function()
                return {
                    exe = 'prettier',
                    args = {
                        '--stdin-filepath', vim.api.nvim_buf_get_name(0),
                        '--single-quote', '--use-tabs'
                    },
                    stdin = true
                }
            end
        },
        javascriptreact = {
            -- prettier
            function()
                return {
                    exe = 'prettier',
                    args = {
                        '--stdin-filepath', vim.api.nvim_buf_get_name(0),
                        '--jsx-single-quote', '--use-tabs'
                    },
                    stdin = true
                }
            end
        },
        typescript = {
            -- prettier
            function()
                return {
                    exe = 'prettier',
                    args = {
                        '--stdin-filepath', vim.api.nvim_buf_get_name(0),
                        '--single-quote', '--use-tabs'
                    },
                    stdin = true
                }
            end
        },
        typescriptreact = {
            -- prettier
            function()
                return {
                    exe = 'prettier',
                    args = {
                        '--stdin-filepath', vim.api.nvim_buf_get_name(0),
                        '--use-tabs'
                    },
                    stdin = true
                }
            end
        },
        rust = {
            -- Rustfmt
            function()
                return {exe = 'rustfmt', args = {'--emit=stdout'}, stdin = true}
            end
        },
        lua = {
            -- luafmt
            function()
                return {
                    exe = 'lua-format',
                    -- args = {'--indent-count', 2, '--stdin'},
                    stdin = true
                }
            end
        },
        python = {
            function()
                return {
                    exe = 'yapf',
                    -- args = {},
                    stdin = true
                }
            end
        },
        cpp = {
            function()
                return {
                    exe = 'clang-format',
                    -- args = {},
                    stdin = true
                }
            end
        },
        c = {
            function()
                return {
                    exe = 'clang-format',
                    -- args = {},
                    stdin = true
                }
            end
        }
    }
})
