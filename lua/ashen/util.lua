local M = {}

M.hl = function(name, fg, bg, styles)
  -- print(name, fg, bg)
  local t = {
    fg = fg,
    bg = bg,
  }
  -- local opt = vim.tbl_extend("error", t, styles or {})
  -- vim.api.nvim_set_hl(0, name, opt)
  vim.api.nvim_set_hl(0, name, t)
end

return M
