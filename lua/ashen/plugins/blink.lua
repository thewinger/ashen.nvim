local M = {}
local c = require("ashen.colors")

M.map = {
  BlinkCmpDoc = { nil, c.g_9 },
  BlinkCmpDocBorder = { nil, c.g_9 },
  -- CursorLine = {},
  -- Search = {},
}
local default = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None"

-- Require this for blink.cmp config
-- M.winhighlight = "FloatBorder:CmpDocumentation,NormalFloat:CmpDocumentation"
-- M.winhighlight = "CursorLine:BlinkCmpDocCursorLine,Search:None"
M.winhighlight =
  "BlinkCmpDoc:BlinkCmpDoc,BlinkCmpDocBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None"
return M
