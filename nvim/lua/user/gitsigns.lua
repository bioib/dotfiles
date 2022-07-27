local status_ok, gits = pcall(require, "gitsigns")

if not status_ok then
  return print("Can't find gitsigns")
end

gits.setup()
