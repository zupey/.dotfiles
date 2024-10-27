-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Go to left tmux pane", remap = true })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Go to btm tmux pane", remap = true })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Go to top tmux pane", remap = true })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Go to right tmux pane", remap = true })

-- Unmap Alt j + k which originally swaps rows of lines because there is a bug where hitting escape and j/k in close succession somehow triggers the alt key.
vim.keymap.del("i", "<A-j>")
vim.keymap.del("i", "<A-k>")
