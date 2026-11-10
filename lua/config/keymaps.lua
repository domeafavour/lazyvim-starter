-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Copy the current buffer's absolute / relative file path
vim.keymap.set("n", "<leader>yp", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy absolute file path" })

vim.keymap.set("n", "<leader>yr", function()
  local path = vim.fn.expand("%:.")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy relative file path" })

-- Copy the visual selection as "<relative-path>:<start>-<end>" + selected text
vim.keymap.set("x", "<leader>ys", function()
  local start_pos, end_pos = vim.fn.getpos("v"), vim.fn.getpos(".")
  local start_line, end_line = start_pos[2], end_pos[2]
  if start_line > end_line then
    start_line, end_line = end_line, start_line
  end

  local text = table.concat(vim.fn.getregion(start_pos, end_pos, { type = vim.fn.mode() }), "\n")
  local path = vim.fn.expand("%:.")
  local out = string.format("%s:%d-%d\n%s", path, start_line, end_line, text)

  vim.fn.setreg("+", out)
  vim.notify(string.format("Copied %s:%d-%d", path, start_line, end_line))
end, { desc = "Copy selection with file path and line range" })
