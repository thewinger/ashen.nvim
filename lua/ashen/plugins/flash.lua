local M = {}
local c = require("ashen.colors")

M.map = {
  FlashLabel = { c.g_9, c.orange_glow },
}

M.link = {
  ["FlashBackdrop"] = "Comment",
  ["FlashMatch"] = "Search",
  ["FlashCurrent"] = "IncSearch",
  -- ["FlashLabel"] = "AshenReverse",
  -- ['FlashPrompt'] = "MsgArea", -- TODO: Figure out where this is used?
  ["FlashPromptIcon"] = "Special",
  ["FlashCursor"] = "Cursor",
}

return M
