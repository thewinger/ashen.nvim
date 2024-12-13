local M = {}
local c = require("ashen.colors")

---@param hl AshenHighlight
---@return AshenHighlight
local function bolder(hl)
  local out = {
    hl[1],
    hl[2],
    { bold = true },
  }
  -- table.insert(hl, -1, { bold = true })
  return out
end

---@param map AshenMap
local function add_inverted(map)
  local inverted = {}
  for k, v in pairs(map) do
    local bg = v[1]
    local fg = v[2]
    if not fg then
      fg = c.g_1
    end
    if bg == c.g_1 then
      bg = c.g_8
    end
    inverted[k .. "Inverted"] = { fg, bg }
  end
  return vim.tbl_extend("error", map, inverted)
end

local function process_map(pre_map)
  local map_with_inverted = add_inverted(pre_map)
  local out = {}
  for k, v in pairs(map_with_inverted) do
    out[k] = bolder(v)
  end
  return out
end

---@type AshenMap
local pre_map = {
  TrailBlazerTrailMark = { c.g_1 },
  TrailBlazerTrailMarkNext = { c.orange_blaze },
  TrailBlazerTrailMarkPrevious = { c.blue },
  TrailBlazerTrailMarkCursor = { c.g_10, c.orange_glow },
  TrailBlazerTrailMarkNewest = { c.g_9, c.orange_blaze },
  TrailBlazerTrailMarkCustomOrd = { c.g_1, c.blue }, -- LightSlateBlue
  TrailBlazerTrailMarkGlobalChron = { c.g_1, c.blue }, -- Red
  TrailBlazerTrailMarkGlobalBufLineSorted = { c.g_1, c.red_kindling }, -- LightRed
  TrailBlazerTrailMarkGlobalFpathLineSorted = { c.g_1, c.red_kindling }, -- LightRed
  TrailBlazerTrailMarkGlobalChronBufLineSorted = { c.g_1, c.orange_golden }, -- Olive
  TrailBlazerTrailMarkGlobalChronFpathLineSorted = { c.g_1, c.orange_golden }, -- Olive
  TrailBlazerTrailMarkGlobalChronBufSwitchGroupChron = { c.g_1, c.red_burnt_crimson }, -- VioletRed
  TrailBlazerTrailMarkGlobalChronBufSwitchGroupLineSorted = { c.g_1, c.orange_smolder }, -- MediumSpringGreen
  TrailBlazerTrailMarkBufferLocalChron = { c.g_1, c.red_ember }, -- Green
  TrailBlazerTrailMarkBufferLocalLineSorted = { c.g_1, c.red_deep_ember }, -- LightGreen
}

M.map = process_map(pre_map)

-- M.autocmd = {
--   event = "BufEnter",
--   pattern = "*",
-- }

return M
