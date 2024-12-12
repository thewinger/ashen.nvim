local M = {}
local c = require("ashen.colors")

M.map = {
  AshenMinimapCursor = { c.red_kindling, c.g_9 },
  AshenMinimapRange = { c.red_ember, c.background },
  -- TODO: Add colors for the git colors
}
vim.g.minimap_range_color = "AshenMinimapRange"
vim.g.minimap_cursor_color = "AshenMinimapCursor"
return M
