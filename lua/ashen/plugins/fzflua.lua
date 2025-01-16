---@class Integration
---@field map HighlightMap?
---@field link HighlightLink?
---@field exec function?

local c = require("ashen.colors")

---@type Integration
local M = {}

M.map = {
  FzfLuaBackdrop = { nil, c.background },
  FzfLuaBorder = { c.g_4 },
  FzfLuaPath = { c.orange_blaze },
  FzfLuaPathLineNr = { c.blue },
  FzfLuaHeaderBind = { c.orange_smolder },
  FzfLuaHeaderText = { c.red_ember },
  FzfLuaBufNr = { c.blue },
  FzfLuaTabTitle = { c.orange_glow },
  FzfLuaTabMarker = { c.orange_glow },
  FzfLuaPathColNr = { c.blue },
  FzfLuaBufFlagAlt = { c.blue },
  FzfLuaFzfPointer = { c.orange_blaze },
  FzfLuaMatch = { c.orange_blaze },
  FzfLuaLiveSym = { c.blue },
}

M.link = {
  FzfLuaTitle = "Title",
  FzfLuaCursor = "IncSearch",
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
}

return M
