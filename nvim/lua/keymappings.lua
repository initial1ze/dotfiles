---@diagnostic disable<cmd> undefined-global
local utils = require('utils')

-- General
utils.map('n', '<leader>c', '<cmd>noh<cr>')
utils.map('i', 'jk', '<Esc>')
utils.map('i', 'kj', '<Esc>')
utils.map('t', 'jk', '<C-\\><C-n>')
utils.map('t', 'kj', '<C-\\><C-n>')
utils.map('t', '<esc>', '<C-\\><C-n>')
utils.map('n', '<leader>cp', '<cmd>%y+<cr>')

-- Keep visual mode indenting
utils.map('v', '<', '<gv', {noremap = true, silent = true})
utils.map('v', '>', '>gv', {noremap = true, silent = true})

-- Buffers
utils.map('n', '<TAB>', '<cmd>BufferLineCycleNext<cr>', {silent = true})
utils.map('n', '<S-TAB>', '<cmd>BufferLineCyclePrev<cr>', {silent = true})
utils.map('n', '<C-c>', '<cmd>bdelete<cr>', {silent = true})
utils.map('n', '<space>b', '<cmd>BufferLinePick<cr>', {silent = true})

-- Registers
utils.map('n', '"', '<cmd>Telescope registers<cr>', {silent = true})

-- Window Movement
utils.map('n', '<C-h>', '<C-w>h', {silent = true})
utils.map('n', '<C-j>', '<C-w>j', {silent = true})
utils.map('n', '<C-k>', '<C-w>k', {silent = true})
utils.map('n', '<C-l>', '<C-w>l', {silent = true})

vim.cmd([[
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
]])

vim.cmd([[
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>
]])

-- Parenthesis/bracket expanding
utils.map('v', '$1', '<esc>`>a\'<esc>`<i\'<esc>')
utils.map('v', '$2', '<esc>`>a)<esc>`<i(<esc>')
utils.map('v', '$3', '<esc>`>a\"<esc>`<i\"<esc>')
utils.map('v', '$4', '<esc>`>a}<esc>`<i{<esc>')
utils.map('v', '$5', '<esc>`>a]<esc>`<i[<esc>')

utils.map("n", "<leader>xx", "<cmd>Trouble<cr>", {silent = true, noremap = true})
utils.map("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
          {silent = true, noremap = true})
utils.map("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
          {silent = true, noremap = true})
utils.map("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
          {silent = true, noremap = true})
utils.map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
          {silent = true, noremap = true})
utils.map("n", "gR", "<cmd>Trouble lsp_references<cr>",
          {silent = true, noremap = true})
