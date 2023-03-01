local _ok, tree = pcall(require, "nvim-tree")

if not _ok then
  return
end

tree.setup({})
