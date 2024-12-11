local M = {}
local c = require("ashen.colors")

M.map = {
  CmpItemKind = { c.a_6 },
  CmpDocumentation = { nil, c.a_9 },
}

-- Courtesy of nvim-noirbuddy:
-- The default winhighlight config is based off NormalFloat, which is intended to
-- match `color.background`. However, it's difficult to read documentation over
-- top of the code window, so we provide a custom winhighlight override here.
M.window = {
  documentation = {
    winhighlight = "FloatBorder:CmpDocumentation,NormalFloat:CmpDocumentation",
  },
}

return M
