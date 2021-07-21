---@diagnostic disable: undefined-global
local utils = require('utils')

-- General
utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>') -- jk to escape
utils.map('i', 'kj', '<Esc>') -- kj to escape
utils.map('t', 'jk', '<C-\\><C-n>') -- jk to escape
utils.map('t', 'kj', '<C-\\><C-n>') -- jk to escape
utils.map('t', '<esc>', '<C-\\><C-n>') -- jk to escape
utils.map('n', '<leader>,', '<cmd>w<CR>') -- ,, to write to the buffer

-- Commentary
utils.map('n', '<leader>/', '<cmd>Commentary<CR>')
utils.map('v', '<leader>/', '<cmd>Commentary<CR>')

-- Terminal mappings
utils.map('n', '<leader>;', '<cmd>FloatermToggle<CR>', {silent = true})
utils.map('t', '<leader>;', '<esc><cmd>FloatermToggle<CR>', {silent = true})

-- Buffers
utils.map('n', '<TAB>', ':BufferLineCycleNext<CR>', {silent = true})
utils.map('n', '<S-TAB>', 'BufferLineCyclePrev<CR>', {silent = true})
utils.map('n', '<C-c>', ':bd<CR>', {silent = true})

-- Window Movement
utils.map('n', '<C-h>', '<C-w>h', {silent = true})
utils.map('n', '<C-j>', '<C-w>j', {silent = true})
utils.map('n', '<C-k>', '<C-w>k', {silent = true})
utils.map('n', '<C-l>', '<C-w>l', {silent = true})

-- Resize with arrows
utils.map('n', '<C-Up>', ':resize -2<CR>', {silent = true})
utils.map('n', '<C-Down>', ':resize +2<CR>', {silent = true})
utils.map('n', '<C-Left>', ':vertical resize -2<CR>', {silent = true})
utils.map('n', '<C-Right>', ':vertical resize +2<CR>', {silent = true})

-- Better indenting
utils.map('v', '<', '<gv', {noremap = true, silent = true})
utils.map('v', '>', '>gv', {noremap = true, silent = true})

-- Nvim Tree
utils.map('n', '<space>e', '<cmd>NvimTreeToggle<CR>')

-- Trouble mappings
vim.cmd([[
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle lsp_document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap <leader>xr <cmd>TroubleToggle lsp_references<cr>
]])

-- Diasble arropw keys for navigation
vim.cmd [[
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
]]
