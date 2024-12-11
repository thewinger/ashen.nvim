local M = {}
local c = require("ashen.colors")

M.map = {
  AshenMinimapCursor = { c.red_light, c.a_9 },
  AshenMinimapRange = { c.red, c.background },
  -- TODO: Add colors for the git colors
}
vim.g.minimap_range_color = "AshenMinimapRange"
vim.g.minimap_cursor_color = "AshenMinimapCursor"
return M
