local M = {}
local c = require("ashen.colors")

-- M.autocmd = {
--   pattern = "markdown",
--   event = "FileType",
-- }

M.link = {
  RenderMarkdownBullet = "@markup.list",
}

M.map = {
  RenderMarkdownH1Bg = { c.red_burnt_crimson, c.g_10 },
  RenderMarkdownH2Bg = { c.red_burnt_crimson, c.g_10 },
  RenderMarkdownH3Bg = { c.red_kindling, c.g_10 },
  RenderMarkdownH4Bg = { c.red_glowing, c.g_10 },
  RenderMarkdownH5Bg = { c.red_glowing, c.g_10 },
  RenderMarkdownH6Bg = { c.red_glowing, c.g_10 },
  RenderMarkdownH1 = { c.red_ember },
  RenderMarkdownH2 = { c.red_burnt_crimson },
  RenderMarkdownH3 = { c.red_kindling },
  RenderMarkdownH4 = { c.red_glowing },
  RenderMarkdownH5 = { c.red_glowing },
  RenderMarkdownH6 = { c.red_glowing },
  RenderMarkdownCode = { nil, c.g_11 },
  RenderMarkdownCodeInline = { c.g_2, c.g_11 },
  RenderMarkdownQuote = { c.red_kindling },
  RenderMarkdownMath = { c.orange_glow },
  RenderMarkdownTodo = { c.orange_blaze },
}
return M
