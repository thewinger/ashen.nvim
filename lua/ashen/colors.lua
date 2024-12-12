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
---| 'g_0'
---| 'g_1'
---| 'g_2'
---| 'g_3'
---| 'g_4'
---| 'g_5'
---| 'g_6'
---| 'g_7'
---| 'g_8'
---| 'g_9'

---@alias AshenKey AshenColor|AshenGray
---@alias HexCode string

---@class AshenPalette
---@field [AshenKey] HexCode
M.colors = {
  red_flame = "#C53030", -- Brightest, most intense red
  red_kindling = "#BD4C4C", -- Light, warm red
  red_glowing = "#C25757", -- Slightly deeper glowing red
  red_burnt_crimson = "#A84848", -- Muted crimson red
  red_ember = "#933737", -- Deep, smoldering ember red
  red_brick = "#853D3D", -- Muted, earthy brick red
  red_deep_ember = "#7A2E2E", -- Dark, deep ember red
  red_ashen = "#6F2929", -- Cool, ashen red
  orange_glow = "#D87C4A", -- Bright, glowing orange
  orange_blaze = "#C4693D", -- Vibrant blaze orange
  orange_smolder = "#B25830", -- Dark, smoldering orange
  orange_golden = "#E5A72A",
  blue = "#3A6E6E", -- Muted teal, soft and unobtrusive
  blue_dark = "#1A3F3F", -- Dark teal, ideal for subtle backgrounds
  background = "#121212",
  g_0 = "#ffffff",
  g_1 = "#f5f5f5",
  g_2 = "#d5d5d5",
  g_3 = "#b4b4b4",
  g_4 = "#a7a7a7",
  g_5 = "#949494",
  g_6 = "#737373",
  g_7 = "#535353",
  g_8 = "#323232",
  g_9 = "#212121",
  g_10 = "#121212",
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
