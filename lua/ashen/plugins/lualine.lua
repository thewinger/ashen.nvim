local M = {}
local c = require("ashen.colors")
M.map = {
  ["lualine_b_diagnostics_error_normal"] = c.red_bright,
  ["lualine_b_diagnostics_error_insert"] = c.red_bright,
  ["lualine_b_diagnostics_error_visual"] = c.red_bright,
  ["lualine_b_diagnostics_error_replace"] = c.red_bright,
  ["lualine_b_diagnostics_error_command"] = c.red_bright,
  ["lualine_b_diagnostics_error_terminal"] = c.red_bright,
  ["lualine_b_diagnostics_error_inactive"] = c.red_bright,

  ["lualine_b_diagnostics_warn_normal"] = c.orange,
  ["lualine_b_diagnostics_warn_insert"] = c.orange,
  ["lualine_b_diagnostics_warn_visual"] = c.orange,
  ["lualine_b_diagnostics_warn_replace"] = c.orange,
  ["lualine_b_diagnostics_warn_command"] = c.orange,
  ["lualine_b_diagnostics_warn_terminal"] = c.orange,
  ["lualine_b_diagnostics_warn_inactive"] = c.orange,

  ["lualine_b_diagnostics_info_normal"] = c.a_2,
  ["lualine_b_diagnostics_info_insert"] = c.a_2,
  ["lualine_b_diagnostics_info_visual"] = c.a_2,
  ["lualine_b_diagnostics_info_replace"] = c.a_2,
  ["lualine_b_diagnostics_info_command"] = c.a_2,
  ["lualine_b_diagnostics_info_terminal"] = c.a_2,
  ["lualine_b_diagnostics_info_inactive"] = c.a_2,

  ["lualine_b_diagnostics_hint_normal"] = c.a_3,
  ["lualine_b_diagnostics_hint_insert"] = c.a_3,
  ["lualine_b_diagnostics_hint_visual"] = c.a_3,
  ["lualine_b_diagnostics_hint_replace"] = c.a_3,
  ["lualine_b_diagnostics_hint_command"] = c.a_3,
  ["lualine_b_diagnostics_hint_terminal"] = c.a_3,
  ["lualine_b_diagnostics_hint_inactive"] = c.a_3,
}

M.link = {
  ["lualine_b_diff_added_normal"] = "DiffAdd",
  ["lualine_b_diff_added_insert"] = "DiffAdd",
  ["lualine_b_diff_added_visual"] = "DiffAdd",
  ["lualine_b_diff_added_replace"] = "DiffAdd",
  ["lualine_b_diff_added_command"] = "DiffAdd",
  ["lualine_b_diff_added_terminal"] = "DiffAdd",
  ["lualine_b_diff_added_inactive"] = "DiffAdd",

  ["lualine_b_diff_modified_normal"] = "DiffChange",
  ["lualine_b_diff_modified_insert"] = "DiffChange",
  ["lualine_b_diff_modified_visual"] = "DiffChange",
  ["lualine_b_diff_modified_replace"] = "DiffChange",
  ["lualine_b_diff_modified_command"] = "DiffChange",
  ["lualine_b_diff_modified_terminal"] = "DiffChange",
  ["lualine_b_diff_modified_inactive"] = "DiffChange",

  ["lualine_b_diff_removed_normal"] = "DiffDelete",
  ["lualine_b_diff_removed_insert"] = "DiffDelete",
  ["lualine_b_diff_removed_visual"] = "DiffDelete",
  ["lualine_b_diff_removed_replace"] = "DiffDelete",
  ["lualine_b_diff_removed_command"] = "DiffDelete",
  ["lualine_b_diff_removed_terminal"] = "DiffDelete",
  ["lualine_b_diff_removed_inactive"] = "DiffDelete",
}

M.theme = {

  normal = {
    a = { fg = c.a_2, bg = c.a_7 },
    b = { fg = c.a_3, bg = c.a_8 },
    c = { fg = c.a_3, bg = c.a_9 },
  },
  insert = { a = { fg = c.background, bg = c.red } },
  visual = { a = { fg = c.background, bg = c.red_light } },
  replace = { a = { fg = c.background, bg = c.red } },
  inactive = {
    a = { fg = c.a_6, bg = c.a_9 },
    b = { fg = c.a_6, bg = c.a_9 },
    c = { fg = c.a_6, bg = c.a_9 },
  },
}

return M
