local _ok, ts = pcall(require, "nvim-treesitter.configs")

if not _ok then
  return
end

ts.setup({
  highlight = {
    enable = true,
    
  }
})
