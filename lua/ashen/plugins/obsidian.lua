local M = {}
local c = require("ashen.colors")

M.autocmd = {
  pattern = "markdown",
}

M.link = {
  ObsidianRefText = "AshenRedLight",
  ObsidianRef = "AshenRedLight",
  ObsidianBullet = "AshenBlue",
  ObsidianDone = "AshenBlue",
  ObsidianTodo = "AshenBlue",
  obsidiantag = "AshenBlue",
  ObsidianTag = "AshenBlue",
  ["@markup.list"] = "AshenBlue",
}
return M
