-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>p", function()
  Snacks.terminal({ "glow", "-p", vim.api.nvim_buf_get_name(0) }, { win = { position = "right" } })
  vim.cmd.wincmd("p")
end, { desc = "Preview file with glow" })
