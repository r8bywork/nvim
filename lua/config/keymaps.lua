-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local util = require("config.util")

-- util.cowboy()
local opts = { noremap = true, silent = true }
local picked_window_id = require("window-picker").pick_window()
vim.keymap.set("n", "<leader>we", ":lua require('window-picker').pick_window()<cr>", { desc = "Select window" })

-- Remove key mappings that conflict with macOS
vim.keymap.del("n", "<C-Up>")
vim.keymap.del("n", "<C-Down>")
vim.keymap.del("n", "<C-Left>")
vim.keymap.del("n", "<C-Right>")

-- Resize with simple arrow keys
vim.keymap.set("n", "<Up>", "<cmd>resize +5<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<Down>", "<cmd>resize -5<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<Left>", "<cmd>vertical resize -10<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<Right>", "<cmd>vertical resize +10<cr>", { desc = "Increase window width" })

-- Back to normal mode
vim.keymap.set("i", "jj", "<ESC>")

-- Equalize splits
vim.keymap.set("n", "<leader>b=", "<cmd>wincmd =<cr>", { desc = "Balance windows" })

-- Zoom current buffer
vim.keymap.set("n", "<leader>bz", "<cmd>wincmd _<cr>:wincmd |<cr>", { desc = "Zoom buffer" })

-- Toggle MiniMap
vim.keymap.set("n", "<leader>m", "<cmd>lua MiniMap.toggle()<cr>", { desc = "MiniMap" })

-- Save without formatting
vim.keymap.set("n", "<leader>qQ", "<cmd>noautocmd w<cr>", { desc = "Save without formatting" })

-- Buffer search/replace
vim.keymap.set("n", "<leader>sr", ":%s/", { desc = "Buffer search/replace" })

-- Sort text in a list
vim.keymap.set("v", "<leader>cs", ":'<,'>sort<cr>", { desc = "Sort selected lines" })

-- Split window
vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sl", "<C-w>l")

-- Tab
vim.keymap.set("n", "te", ":tabedit")
vim.keymap.set("n", "<tab>", ":tabnext<Return>", opts)
vim.keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Delete a word backwards
vim.keymap.set("n", "dw", 'vb"_d')

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Toggle CursorColumn
vim.keymap.set(
  "n",
  "<leader>uo",
  "<cmd>lua require('config.util').toggle_option('cursorcolumn')<cr>",
  { desc = "Toggle CursorColumn" }
)

-- Toggle ColorColumn
vim.keymap.set(
  "n",
  "<leader>uO",
  "<cmd>lua require('config.util').toggle_colorcolumn()<cr>",
  { desc = "Toggle ColorColumn" }
)
