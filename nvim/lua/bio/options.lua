local options = {
  expandtab = true,
  clipboard = "unnamedplus",
  cmdheight = 2,
  expandtab = true,
  hlsearch = true,
  ignorecase = true,
  incsearch = true,
  mouse = "a",
  number = true,
  shiftwidth = 2,
  showtabline = 2,
  smartcase = true,
  smarttab = true,
  tabstop = 2,
  timeoutlen = 500,
  wrap = false,
}

vim.g.mapleader = " "
vim.g.material_style = "deep ocean"

for k, v in pairs(options) do
  vim.opt[k] = v
end
