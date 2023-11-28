-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local create_augroup = vim.api.nvim_create_augroup
local create_autocmd = vim.api.nvim_create_autocmd

create_augroup("file_types", { clear = true })

-- Turn off paste mode when leaving insert
create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})

create_autocmd({ "BufEnter", "BufRead", "BufNewFile" }, {
  desc = "Recognize mdx files as markdown",
  group = "file_types",
  pattern = { "*.mdx" },
  command = [[ set filetype=markdown ]],
})

create_autocmd("FileType", {
  desc = "Disable autocmd set filetype=eruby.yaml from rails.vim",
  group = "file_types",
  pattern = "eruby.yaml",
  command = [[set filetype=yaml]],
})

create_autocmd({ "VimEnter" }, {
  desc = "Go straight to INSERT mode in commit message",
  group = "file_types",
  pattern = { "COMMIT_EDITMSG" },
  command = [[ exec 'norm gg' | startinsert! ]],
})
