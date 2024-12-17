local M = {}
local c = require("ashen.colors")

M.autocmd = {
  pattern = "markdown",
  event = "FileType",
}

local legacy = {
  ObsidianRefText = "AshenRedLight",
  ObsidianRef = "AshenRedLight",
  ObsidianBullet = "AshenBlue",
  ObsidianDone = "AshenBlue",
  ObsidianTodo = "AshenBlue",
  obsidiantag = "AshenBlue",
  ObsidianTag = "AshenBlue",
  ["@markup.list"] = "AshenBlue",
}

M.map = {
  ObsidianRefText = { c.red_kindling },
  ObsidianRef = { c.red_ember },
  ObsidianBullet = { c.orange_blaze },
  ObsidianDone = { c.orange_blaze },
  ObsidianTodo = { c.orange_glow },
  obsidiantag = { c.blue },
  ObsidianTag = { c.blue },
  ["@markup.list"] = { c.orange_blaze },
}
return M
