require("formatter").setup({
    logging = false,
    filetype = {
        json = {
            -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
                    stdin = true
                }
            end
        },
        css = {
            -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
                    stdin = true
                }
            end
        },
        html = {
            -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
                    stdin = true
                }
            end
        },
        javascript = {
            -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {
                        "--stdin-filepath", vim.api.nvim_buf_get_name(0),
                        "--single-quote"
                    },
                    stdin = true
                }
            end
        },
        javascriptreact = {
            -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {
                        "--stdin-filepath", vim.api.nvim_buf_get_name(0),
                        "--jsx-single-quote"
                    },
                    stdin = true
                }
            end
        },
        typescript = {
            -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {
                        "--stdin-filepath", vim.api.nvim_buf_get_name(0),
                        "--single-quote"
                    },
                    stdin = true
                }
            end
        },
        typescriptreact = {
            -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
                    stdin = true
                }
            end
        },
        rust = {
            -- Rustfmt
            function()
                return {exe = "rustfmt", args = {"--emit=stdout"}, stdin = true}
            end
        },
        lua = {
            -- luafmt
            function() return {exe = "lua-format", stdin = true} end
        },
        python = {
            function()
                return {exe = "black", args = {"-"}, stdin = true}
            end
        },
        cpp = {
            function()
                return {
                    exe = "clang-format",
                    -- args = {},
                    stdin = true
                }
            end
        },
        c = {
            function()
                return {
                    exe = "clang-format",
                    -- args = {},
                    stdin = true
                }
            end
        }
    }
})
