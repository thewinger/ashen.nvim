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

function M.link_lang(table, lang)
  for hl, input in pairs(table) do
    local l = input .. "." .. lang
    vim.api.nvim_set_hl(0, hl, { link = l })
  end
end

M.link = function(inp, targ)
  vim.api.nvim_set_hl(0, inp, { link = targ })
end

return M
