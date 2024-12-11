local util = require("ashen.util")
local M = {}
local default_plugins = {
  "cmp",
  "lualine",
  "flash",
  "telescope",
  "obsidian",
  "minimap",
}

local function get_plugins(plugins)
  local out = {}
  for _, plugin in ipairs(plugins) do
    table.insert(out, require("ashen.plugins." .. plugin))
  end
  return out
end

M.setup = function()
  local plugins = get_plugins(default_plugins)
  -- local plugins = { require("ashen.plugins." .. "flash") }
  for _, plugin in ipairs(plugins) do
    local function set()
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
    if plugin.autocmd ~= nil then
      vim.api.nvim_create_autocmd({ "FileType" }, {
        callback = set,
        pattern = plugin.autocmd.pattern,
      })
    else
      set()
    end
  end
end

return M
