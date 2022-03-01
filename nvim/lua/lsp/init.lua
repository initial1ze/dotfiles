---@diagnostic disable: undefined-global
-- Mappings
local op = {noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<space>e',
                        '<cmd>lua vim.diagnostic.open_float()<CR>', op)
vim.api
    .nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', op)
vim.api
    .nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', op)
vim.api.nvim_set_keymap('n', '<leader>q',
                        '<cmd>lua vim.diagnostic.setloclist()<CR>', op)

-- On attach
local on_attach = function(_, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD',
                                '<cmd>lua vim.lsp.buf.declaration()<CR>', op)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd',
                                '<cmd>lua vim.lsp.buf.definition()<CR>', op)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K',
                                '<cmd>lua vim.lsp.buf.hover()<CR>', op)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi',
                                '<cmd>lua vim.lsp.buf.implementation()<CR>', op)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>k',
                                '<cmd>lua vim.lsp.buf.signature_help()<CR>', op)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D',
                                '<cmd>lua vim.lsp.buf.type_definition()<CR>', op)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>r',
                                '<cmd>lua vim.lsp.buf.rename()<CR>', op)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca',
                                '<cmd>lua vim.lsp.buf.code_action()<CR>', op)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr',
                                '<cmd>lua vim.lsp.buf.references()<CR>', op)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f',
                                '<cmd>lua vim.lsp.buf.formatting()<CR>', op)
end

-- Code actions
capabilities.textDocument.codeAction = {
    dynamicRegistration = true,
    codeActionLiteralSupport = {
        codeActionKind = {
            valueSet = (function()
                local res = vim.tbl_values(vim.lsp.protocol.CodeActionKind)
                table.sort(res)
                return res
            end)()
        }
    }
}

-- Diagnostics config
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false
})

local function preview_location_callback(_, result)
    if result == nil or vim.tbl_isempty(result) then return nil end
    vim.lsp.util.preview_location(result[1])
end

function PeekDefinition()
    local params = vim.lsp.util.make_position_params()
    return vim.lsp.buf_request(0, 'textDocument/definition', params,
                               preview_location_callback)
end

-- Diagnostics sign
local signs = {Error = " ", Warn = " ", Hint = " ", Info = " "}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
end

-- nvim cmp and luasnip integration
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;
require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Setup
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {on_attach = on_attach, capabilities = capabilities}
    server:setup(opts)
end)
