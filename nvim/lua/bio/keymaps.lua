function map(mode, lhs, rhs, opts) 
  vim.keymap.set(mode, lhs, rhs, opts)
end

local opts = { silent }

-- Switch between windows
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Open Netrw Directory Listing
map("n", "<Leader>e", "<cmd>Explore<CR>", opts)

function myFunc()
  -- cur = vim.api.nvim_win_get_cursor(0)
  -- row = cur[1]

  vim.api.nvim_win_set_cursor(0, {10, 0})
end


map("n", "<Leader>w", ":lua vim.api.nvim_win_set_cursor(0, {10, 0})<CR>")
