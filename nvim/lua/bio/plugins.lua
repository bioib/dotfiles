-- Autocmd to sync packages on save
vim.api.nvim_create_autocmd({"BufWritePost"}, {
  pattern = "plugins.lua",
  command = "so % | PackerSync",
}) 

require("packer").init({
  display = {
    open_fn = function() return require("packer.util").float({ border = "rounded" }) end
  }
})

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- Colorscheme
  -- use "shaunsingh/nord.nvim"
  use 'marko-cerovac/material.nvim'

  use 'sunjon/shade.nvim'

  -- lsp
  use "neovim/nvim-lspconfig"
  use "onsails/lspkind.nvim"

end)
