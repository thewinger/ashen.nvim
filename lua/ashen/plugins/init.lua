local util = require("ashen.util")
local M = {}
local plugins = {
  require("ashen.plugins.cmp"),
  require("ashen.plugins.lualine"),
}

M.setup = function()
  for _, plugin in ipairs(plugins) do
    if plugin.map ~= nil then
      for name, opt in pairs(plugin.map) do
        util.hl(name, opt[1], opt[2], opt[3])
      end
    end
    if plugin.link ~= nil then
      for name, targ in pairs(plugin.link) do
        util.link(name, targ)
      end
    end
  end
end

return M
