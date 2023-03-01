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
    open_fn = function() return require("packer.util").float({ border = "rounded" }) end
  }
})

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- Colorscheme
  use 'navarasu/onedark.nvim'

  use 'sunjon/shade.nvim'

  -- lsp
  use "neovim/nvim-lspconfig"
  use "onsails/lspkind.nvim"

  -- treesitter
  use "nvim-treesitter/nvim-treesitter"

  -- formatting
  use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }
  use { "numToStr/Comment.nvim", config = function() require("comment").setup() end }

  -- discord rich presence
  use "andweeb/presence.nvim"

  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"

end)
