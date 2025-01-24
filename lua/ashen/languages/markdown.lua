local M = {}
local c = require("ashen.colors")

M.map = {
  ["@markup.link"] = { c.red_ember, nil },
  ["@markup.link.label"] = { c.red_glowing, nil },
  ["@markup.link.url"] = { c.red_glowing, nil },
  ["@markup.list"] = { c.orange_glow, nil },
  ["@markup.quote"] = { italic = true },
  ["@markup.math"] = { bold = true },
  ["@markup.raw"] = { c.g_2, c.g_10 },
}

return M
