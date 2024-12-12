local M = {}

---@alias AshenColor string
---| 'background'
---| 'red_bright'
---| 'red_dark'
---| 'red_light'
---| 'red'
---| 'orange'
---| 'orange_light'
---| 'orange_dark'
---| 'blue'
---| 'blue_dark'

---@alias AshenGray string
---| 'a_0'
---| 'a_1'
---| 'a_2'
---| 'a_3'
---| 'a_4'
---| 'a_5'
---| 'a_6'
---| 'a_7'
---| 'a_8'
---| 'a_9'

---@alias AshenKey AshenColor|AshenGray
---@alias HexCode string

---@class AshenPalette
---@field [AshenKey] HexCode
M.colors = {
  red_bright = "#AC2020",
  red_dark = "#762C2C",
  orange = "#ff7700",
  orange_dark = "#79491d",
  blue = "#379393",
  blue_dark = "#215858",
  background = "#121212",
  red_light = "#BD4C4C",
  red = "#933737",
  a_0 = "#ffffff",
  a_1 = "#f5f5f5",
  a_2 = "#d5d5d5",
  a_3 = "#b4b4b4",
  a_4 = "#a7a7a7",
  a_5 = "#949494",
  a_6 = "#737373",
  a_7 = "#535353",
  a_8 = "#323232",
  a_9 = "#212121",
}

return M.colors

-- #D87C4A
-- #C4693D
-- #B25830
-- Deep Ember Red: #7A2E2E
-- A darker shade to add depth and contrast.
--
-- Burnt Crimson: #A84848
-- Slightly lighter and less saturated than your red_light.
--
-- Glowing Red: #C25757
-- A warmer, softer red to evoke the glowing embers.
--
-- Muted Brick Red: #853D3D
-- Fits well with your existing reds but offers a slightly earthy tone.
--
-- Ashen Red: #6F2929
-- A muted, subdued red that aligns with the theme of cooled embers.
