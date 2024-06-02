-- options
local v = vim.opt
v.background = "dark"
v.cursorline = true
v.hidden = true
v.mouse = "a"
v.number = true
v.wildmenu = true
v.syntax = "on"
v.completeopt = "noinsert,menuone,noselect"
v.termguicolors = true
v.shiftwidth = 2
v.tabstop = 2
v.expandtab = true
v.wrap = false
v.so = 5
v.siso = 4
v.filetype = "on"
--v.guifont = "10"
--v.filetype = "indent,on"
--v.smartindent = true
v.splitbelow = true
v.splitright = true
v.list = false
v.listchars = { tab = "▸ ", trail = "·" }
v.relativenumber = true
vim.g.mapleader = ";"
v.laststatus = 3
vim.o.laststatus = 3
-- v.foldmethod = "expr"
-- v.foldexpr = "nvim_treesitter#foldexpr()"
-- local keymap = vim.api.nvim_set_keymap
--local insert = "i"
-- keymap(normal, "<leader>o", ":foldopen<cr>", opts)
-- keymap(normal, "<leader>c", ":foldclose<cr>", opts)
--keymap(normal,'','',opts):
-- optionally enable 24-bit colour
-- lazy setup
vim.opt.termguicolors = true
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- key bindings
local builtin = require('telescope.builtin')
local opts = { noremap = true, silent = true }
local normal = "n"
local terminal = "t"
vim.keymap.set(normal, '<leader>ff', builtin.find_files, {})
vim.keymap.set(normal, '<leader>fg', builtin.live_grep, {})
vim.keymap.set(normal, '<leader>fb', builtin.buffers, {})
vim.keymap.set(normal, '<leader>fh', builtin.help_tags, {})
vim.keymap.set(normal, "<leader>t", ":ToggleTerm direction=float<cr>", opts)
vim.keymap.set(terminal, "<leader>t", [[<C-\><C-n>:ToggleTerm<cr>]], opts)
vim.keymap.set(normal, "<leader>w", ":Neotree<cr>", opts)
vim.keymap.set(normal, "<C-f>", ":lua vim.lsp.buf.format()<cr>", opts)
vim.keymap.set(normal, "H" , "<C-w>h<cr>", opts)
vim.keymap.set(normal, "J" , "<C-w>j<cr>", opts)
vim.keymap.set(normal, "K" , "<C-w>k<cr>", opts)
vim.keymap.set(normal, "L" , "<C-w>l<cr>", opts)
