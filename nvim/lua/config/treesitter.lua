require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "cpp", "python", "rust", "lua", "bash", "c", "go", "html", "javascript",
        "json", "make", "typescript", "toml"
    },
    indent = {enable = false},
    highlight = {enable = true},
    rainbow = {enable = true},
    autotag = {enable = true},
    playground = {enable = true, updatetime = 25, persist_queries = false},
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
                ["al"] = "@loop.outer",
                ["il"] = "@loop.inner",
                ["ah"] = "@block.outer"
            }
        },
        move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer"
            },
            goto_next_end = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer"
            },
            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer"
            },
            goto_previous_end = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer"
            }
        }
    }
}
