local M = {}

-- Load the color scheme
M.load = function()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = "ashen"
  vim.o.termguicolors = true
  vim.api.nvim_command(string.format("set background=%s", "dark"))
  require("ashen.theme").setup()
  require("ashen.plugins")
end

M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
  M.load()
end

return M
