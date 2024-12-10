local hl = require("ashen.util").hl
local maps = {
  require("ashen.plugins.cmp").map,
}
for _, map in ipairs(maps) do
  for name, opt in pairs(map) do
    hl(name, opt[1], opt[2], opt[3])
  end
end
