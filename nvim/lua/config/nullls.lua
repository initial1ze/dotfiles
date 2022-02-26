local null_ls = require('null-ls')

local sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.code_actions.gitsigns, null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.clang_format,
    null_ls.builtins.formatting.codespell, null_ls.builtins.formatting.isort,
    null_ls.builtins.diagnostics.mypy, null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.cppcheck, null_ls.builtins.diagnostics.luacheck
}

null_ls.setup({sources = sources})
