local util = require("ashen.util")
local M = {}
local default_languages = {
  "python",
  "go",
}

local function get_languages(languages)
  local out = {}
  for _, language in ipairs(languages) do
    table.insert(out, require("ashen.languages." .. language))
  end
  return out
end

M.setup = function()
  local languages = get_languages(default_languages)
  -- local plugins = { require("ashen.plugins." .. "flash") }
  for _, lang in ipairs(languages) do
    if lang.map ~= nil then
      for name, opt in pairs(lang.map) do
        util.hl(name, opt[1], opt[2], opt[3])
      end
    end
    if lang.link ~= nil and lang.dot_link == nil then
      for name, targ in pairs(lang.link) do
        util.link(name, targ)
      end
    elseif lang.link ~= nil and lang.dot_link then
      util.link_lang(lang.link, lang.name)
    end
  end
end

return M
