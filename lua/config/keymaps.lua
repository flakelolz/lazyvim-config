-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Leaves cursor at the same location instead of the end of the line
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join next line" })

-- Centers cursor when doing this vim motions
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump Up" })
vim.keymap.set("n", "<C-o>", "<C-o>zz", { desc = "Jump Back" })
vim.keymap.set("n", "<C-i>", "<C-i>zz", { desc = "Jump Forward" })

-- Center cursor when cycling through searches
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search" })

-- Paste while yanking selected content to a non-default register
vim.keymap.set({ "v", "x" }, "<M-p>", '"+P', { desc = "Void Paste" })

-- Close the current buffer
vim.keymap.set("n", "<localleader>x", ":bdelete<CR>", { desc = "Delete buffer" })
-- Open Telescope find_files, doesn't require to be on a git directory
vim.keymap.set("n", "<localleader>f", "<cmd>Telescope find_files<cr>", { desc = "Find Files (No git dir)" })

-- open terminal
vim.keymap.set("n", "<M-i>", function()
  require("lazyvim.util").terminal()
end, { desc = "Terminal (cwd)" })
-- hide terminal
vim.keymap.set("t", "<M-i>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- vim.keymap.del("n", "<c-/>")
-- vim.keymap.del("t", "<c-/>")

-- local function map(mode, lhs, rhs, opts)
--   local keys = require("lazy.core.handler").handlers.keys
--   ---@cast keys LazyKeysHandler
--   -- do not create the keymap if a lazy keys handler exists
--   if not keys.active[keys.parse({ lhs, mode = mode }).id] then
--     opts = opts or {}
--     opts.silent = opts.silent ~= false
--     if opts.remap and not vim.g.vscode then
--       opts.remap = nil
--     end
--     vim.keymap.set(mode, lhs, rhs, opts)
--   end
-- end
