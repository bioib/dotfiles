local _ok, comment = pcall(require, "Comment")

if not _ok then
  return
end

comment.setup()
