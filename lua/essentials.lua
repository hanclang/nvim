local option = vim.opt
local buffer = vim.b
local global = vim.g

global.encoding = 'UTF-8'
-- 系统剪贴板
option.clipboard:append("unnamedplus")
-- Globol Settings --
option.showmode = false
option.backspace = { "indent", "eol", "start" }
option.tabstop = 2
option.shiftwidth = 2
option.expandtab = true
option.shiftround = true
option.autoindent = true
option.smartindent = true
option.number = true
option.relativenumber = true
option.wildmenu = true
option.hlsearch = false
option.ignorecase = true
option.smartcase = true
option.completeopt = { "menu", "menuone" }
option.cursorline = true
option.termguicolors = true
option.signcolumn = "yes"
option.autoread = true
option.title = true
option.swapfile = false
option.backup = false
option.updatetime = 50
option.mouse = "a"
-- option.undofile = true
-- option.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
option.exrc = true
option.wrap = false
option.splitright = true
option.scrolloff = 8
-- Buffer Settings --
buffer.fileenconding = "utf-8"

-- Global Settings --
global.mapleader = " "

-- indent-blankline.nvim --
option.list = true
option.listchars:append "space:⋅"
option.listchars:append "eol:↴"
-- Key mappings --
-- vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>")
-- vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>")
-- vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>")
-- vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>")

-- vim.keymap.set("n", "<A-Tab>", "<cmd>bNext<CR>") 
-- vim.keymap.set("n", "<leader>bc", "<cmd>bd<CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- vim.keymap.set('n', '<C-e>', ':NvimTreeToggle<CR>')
vim.keymap.set({ "n", "v" }, "<C-e>", [[<cmd>Neotree toggle<CR>]])
-- vim.keymap.set({ "v", "n" }, "<leader>y", "\"+y")
vim.keymap.set('n', '<C-h>', [[<cmd>BufferLineCyclePrev<CR>]])
vim.keymap.set('n', '<C-l>', [[<cmd>BufferLineCycleNext<CR>]])
-- 分屏
vim.keymap.set('n', 'sv', [[<cmd>vsp<CR>]])
vim.keymap.set('n', 'sh', [[<cmd>sp<CR>]])
-- 分屏窗口跳转
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')
