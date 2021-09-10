local utils = require('utils')

local cmd = vim.cmd
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd 'set incsearch'
cmd 'set mouse=a'
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4)
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'clipboard', 'unnamed,unnamedplus')
utils.opt('o', 'viewoptions', 'folds,cursor')

-- Foldiing
utils.map('o', 'foldmethod', 'manual')
--[[ utils.opt('o', 'foldmethod', 'expr')
utils.opt('o', 'foldexpr', 'nvim_treesitter#foldexpr()') ]]

-- Auto Format on save
vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.lua,*.py,*.cpp,*.c,*.cc,*.js,*.jsx,*.ts,*.tsx,*.rs,*.html,*.css FormatWrite
augroup END
augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent! loadview
augroup END
]], true)

-- Custom split stuff
vim.cmd [[
command! -nargs=0 -bar Ioe :edit input | :edit output | :edit error | :edit main.cpp
]]
