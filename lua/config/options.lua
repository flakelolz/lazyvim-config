-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Local leader
vim.g.maplocalleader = ","
-- Scroll
vim.opt.scrolloff = 8
-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.wrap = false

-- vim.o.shell = "C:/Program Files/Git/bin/bash.exe"

-- Use bash for default shell with the :terminal command
-- vim.o.shell = 'C:/Program" "Files/Git/bin/bash.exe'

-- Disable autoformat on save
vim.g.autoformat = false


-- Python
vim.g.python3_host_prog = "C:/Users/Flake/AppData/Local/Programs/Python/Python312/python.exe"
