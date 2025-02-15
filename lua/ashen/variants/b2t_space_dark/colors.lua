---@type Palette
local M = {
  -- used for errors
  red_flame = "#f6339a", -- Brightest, most intense red
  -- standard red colors
  red_glowing = "#f6339a", -- Slightly deeper glowing red
  red_ember = "#f6339a", -- Deep, smoldering ember red

  -- standard orange colors
  orange_glow = "#f6339a", -- Bright, glowing orange
  orange_blaze = "#f6339a", -- Vibrant blaze orange
  orange_smolder = "#f6339a",

  -- used for warnings
  orange_golden = "#E5A72A",

  -- NOTE: These reds are not widely used and will likely be fazed out in a future update.
  red_kindling = "#BD4C4C", -- Light, warm red
  red_burnt_crimson = "#A84848", -- Muted crimson red
  red_brick = "#853D3D", -- Muted, earthy brick red
  red_deep_ember = "#7A2E2E", -- Dark, deep ember red
  red_ashen = "#6F2929", -- Cool, ashen red

  -- standard misc colors
  blue = "#4A8B8B", -- Muted teal, soft and unobtrusive
  blue_dark = "#3A6E6E", -- Dark teal, ideal for subtle backgrounds
  -- strong contender: #629C7D
  green_light = "#629C7D",
  green = "#1E6F54",

  -- standard grayscale palette
  background = "#24242e",
  -- duplicate for compatibility
  -- g_0 will be removed in future
  g_0 = "#e5e5e5",
  g_1 = "#ebebff",
  g_2 = "#aaaaca",
  g_3 = "#8a8aad",
  g_4 = "#767693",
  g_5 = "#737391",
  g_6 = "#5b5b76",
  g_7 = "#515167",
  g_8 = "#333342",
  g_9 = "#24242e",
  g_10 = "#1d1d1d",
  g_11 = "#191919",
  g_12 = "#151515",

  -- WARNING: These colors are not part of the Ashen palette!
  -- Rather, they're here as reference, to have a list of "normal"
  -- colors that still fit nicely with the theme -- for example, in case
  -- you *really* need something to be, say, purple, and want it to
  -- look decent with the rest of the theme. Currently, the only place
  -- these are used is in the mini.icons integration!
  -- Please don't use them
  -- if you're porting Ashen to another program -- I can't guarantee
  -- that it'll look good! --ficcdaf
  red = "#C53030", -- Brightest, most intense red
  yellow = "#F4CA64", -- Bright sunflower yellow
  orange = "#D87C4A", -- Bright, glowing orange
  purple = "#7A3D82", -- Rich violet purple
  pink = "#D1728C", -- Deep rose pink
  brown = "#853D3D", -- Muted, earthy brick red
  black = "#121212", -- Deep background black
  white = "#FFFFFF", -- Pure white
  gray = "#A7A7A7", -- Neutral mid-gray
  cyan = "#6E91C4", -- Sky-like cyan
  magenta = "#C9347C", -- Vibrant fuchsia
  lime = "#8CD437", -- Bright lime green
  teal = "#1A3F3F", -- Dark teal
  navy = "#223A70", -- Deep navy blue
  maroon = "#7A2E2E", -- Dark, deep ember red
  olive = "#708238", -- Muted olive green
  indigo = "#502E5F", -- Deep, muted indigo
  violet = "#8E5E93", -- Soft mauve violet
  gold = "#D7A933", -- Rich golden yellow
  silver = "#D5D5D5", -- Soft, muted silver
  beige = "#F5F5DC", -- Light, warm beige
  aqua = "#4AC4C4", -- Bright aqua
  coral = "#E492B4", -- Soft coral pink
}

return M
