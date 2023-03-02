local _ok, packer = pcall(require, "packer")

if not _ok then
  return
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

require("packer").init({
  display = {
    [[ open_fn = function() return require("packer.util").float({ border = "rounded" }) end ]]
  }
})

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "navarasu/onedark.nvim" -- Onedark colorscheme
  use "neovim/nvim-lspconfig" -- lspconfig for Neovim
  use "onsails/lspkind.nvim" -- kind icons for lsp
  use "jose-elias-alvarez/null-ls.nvim" -- make Neovim as lsp server
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" } -- treesitter for syntax highlighting
  use { "nvim-telescope/telescope.nvim", tag = "0.1.1", requires = { {"nvim-lua/plenary.nvim"} } } -- fuzzy finder
  use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end } -- automatically complete pairs
  use "numToStr/Comment.nvim" -- easily comment stuff
  use "andweeb/presence.nvim" -- discord rich presence
  use "nvim-tree/nvim-tree.lua" -- directory listing
  use "nvim-tree/nvim-web-devicons" -- icons for nvim-tree
  use { "lucastavaresa/simpleIndentGuides.nvim",
    config = function()
      vim.opt.list = true -- enable in all buffers
      require("simpleIndentGuides").setup()
    end
  }
  use {
    "olimorris/persisted.nvim",
    config = function()
      require("persisted").setup()
    end,
  }

end)
