function map(mode, lhs, rhs, opts) 
  vim.keymap.set(mode, lhs, rhs, opts)
end

local opts = { silent }

-- Switch between windows
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Toggle Nvim Tree
map("n", "<Leader>e", "<cmd>NvimTreeToggle<CR>", opts)

-- Buffers
map("n", "<Leader>n", "<cmd>bNext<CR>", opts)

-- Tabs
map("n", "<Tab>", "<cmd>tabNext<CR>", opts)
map("n", "<S-Tab>", "<cmd>tabprevious<CR>", opts)
map("n", "<C-n>", "<cmd>tabnew<CR>", opts)
map("n", "<C-w>", "<cmd>tabclose<CR>", opts)

-- Resize windows
map("n", "<C-Up>", "<C-w>-", opts)
map("n", "<C-Down>", "<C-w>-", opts)
map("n", "<C-Left>", "<C-w><", opts)
map("n", "<C-Right>", "<C-w>>", opts)

-- Remove highlights
map("n", "<A-h>", "<cmd>noh<CR>", opts)
