vim.o.completeopt = 'menu,menuone,noselect'

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and
               vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col,
                                                                          col)
                   :match("%s") == nil
end

local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true),
                          mode, true)
end

-- Setup nvim-cmp.
local cmp = require 'cmp'
local luasnip = require("luasnip")

cmp.setup({
    snippet = {
        expand = function(args) require('luasnip').lsp_expand(args.body) end
    },
    mapping = {

        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, {"i", "s"}),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {"i", "s"}),

        ['<CR>'] = cmp.mapping.confirm({select = true})
    },
    sources = cmp.config.sources({
        {name = 'nvim_lsp'}, {name = 'path'},
        {name = 'nvim_lsp_signature_help'}, {name = 'nvim_lua'},
        {name = 'luasnip'}
    }, {{name = 'buffer'}})
})

cmp.setup.cmdline('/', {sources = {{name = 'buffer'}}})

cmp.setup.cmdline(':', {
    sources = cmp.config.sources({{name = 'path'}}, {{name = 'cmdline'}})
})

require("luasnip.loaders.from_vscode").load()

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp
                                                                     .protocol
                                                                     .make_client_capabilities())
