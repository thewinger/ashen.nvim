local M = {}
local c = require("ashen.colors")

M.map = {
  ["@variable"] = c.red,
  ["@string"] = c.red_light,
  ["@keyword"] = c.blue,
  ["@keyword.operator"] = c.blue,
  ["@constant.builtin"] = c.blue,
}

return M
