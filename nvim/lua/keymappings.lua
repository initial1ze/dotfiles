---@diagnostic disable<cmd> undefined-global
local utils = require('utils')

-- General
utils.map('n', '<leader>cl', '<cmd>noh<cr>') -- Clear highlights
utils.map('i', 'jk', '<Esc>') -- jk to escape
utils.map('i', 'kj', '<Esc>') -- kj to escape
utils.map('t', 'jk', '<C-\\><C-n>') -- jk to escape
utils.map('t', 'kj', '<C-\\><C-n>') -- jk to escape
utils.map('t', '<esc>', '<C-\\><C-n>') -- jk to escape
utils.map('n', '<leader>,', '<cmd>w<cr>') -- write to the buffer
utils.map('n', '<leader>cp', '<cmd>%y+<cr>') -- Yank entire buffer

-- Keep visual mode indenting
utils.map('v', '<', '<gv', {noremap = true, silent = true})
utils.map('v', '>', '>gv', {noremap = true, silent = true})

-- Terminal mappings
--[[ utils.map('n', '<leader>;', '<cmd>FloatermToggle<cr>', {silent = true})
utils.map('t', '<leader>;', '<esc><cmd>FloatermToggle<cr>', {silent = true}) ]]

-- Buffers
utils.map('n', '<TAB>', '<cmd>BufferLineCycleNext<cr>', {silent = true})
utils.map('n', '<S-TAB>', '<cmd>BufferLineCyclePrev<cr>', {silent = true})
utils.map('n', '<C-c>', '<cmd>bdelete<cr>', {silent = true})
utils.map('n', '<leader>b', '<cmd>BufferLinePick<cr>', {silent = true})

-- Window Movement
utils.map('n', '<C-h>', '<C-w>h', {silent = true})
utils.map('n', '<C-j>', '<C-w>j', {silent = true})
utils.map('n', '<C-k>', '<C-w>k', {silent = true})
utils.map('n', '<C-l>', '<C-w>l', {silent = true})

-- Resize with arrows
utils.map('n', '<C-Up>', '<cmd>resize -2<cr>', {silent = true})
utils.map('n', '<C-Down>', '<cmd>resize +2<cr>', {silent = true})
utils.map('n', '<C-Left>', '<cmd>vertical resize -2<cr>', {silent = true})
utils.map('n', '<C-Right>', '<cmd>vertical resize +2<cr>', {silent = true})

-- Better indenting
utils.map('v', '<', '<gv', {noremap = true, silent = true})
utils.map('v', '>', '>gv', {noremap = true, silent = true})

-- Nvim Tree
utils.map('n', '<space>e', '<cmd>NvimTreeToggle<cr>')

-- Tasks
utils.map('n', '<F9>', '<cmd>AsyncTask file-build<cr>', {silent = true})
utils.map('n', '<F8>', '<cmd>AsyncTask file-run<cr>', {silent = true})

utils.map('n', '<leader>fs', '<cmd>Telescope lsp_document_symbols<cr>')
utils.map('n', '<leader>fr', '<cmd>Telescope lsp_references<cr>')
utils.map('n', '<leader>fx', '<cmd>Telescope lsp_workspace_diagnostics<cr>')

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
--[[ utils.map('n', '<Nop>', '<Up>')
utils.map('n', '<Nop>', '<Down>')
utils.map('n', '<Nop>', '<Right>')
utils.map('n', '<Nop>', '<Left>') ]]
vim.cmd [[
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
]]

-- Custom commands
utils.map('n', '//', '<cmd>Ioe<cr>')

-- Parenthesis/bracket expanding
utils.map('v', '$1', '<esc>`>a\'<esc>`<i\'<esc>')
utils.map('v', '$2', '<esc>`>a)<esc>`<i(<esc>')
utils.map('v', '$3', '<esc>`>a\"<esc>`<i\"<esc>')
utils.map('v', '$4', '<esc>`>a}<esc>`<i{<esc>')
utils.map('v', '$5', '<esc>`>a]<esc>`<i[<esc>')

-- Move visual blocks with proper indentation
utils.map('v', 'J', '<cmd>m \'>+1<cr>gv=gv')
utils.map('v', 'K', '<cmd>m \'<-2<cr>gv=gv')

-- Move current block to void register
utils.map('v', '<leader>p', '\"_dP')
