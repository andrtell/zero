local M = {}

local default = 'zero-light'

local themes = {
  ['zero-light'] = {
    name = 'zero-light',
    path = 'zero.themes.zero-light'
  }
}

function M.reset_colors()
  vim.cmd('hi clear')

  if 1 == vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
end

function M.clear_colors()
  local hi = vim.api.nvim_get_hl(0, {})

  for group, val in pairs(hi) do
    vim.api.nvim_set_hl(
      0, group, { link = val.link, underline = val.underline }
    )
  end
end

function M.force_require(path)
  package.loaded[path] = nil
  return require(path)
end

function M.apply_colors(theme)
  local vals = {}

  for _, group in ipairs(theme) do
    if "table" == type(group) then
      vals = group
    else
      vim.api.nvim_set_hl(0, group, vals)
    end
  end
end

function M.load(name)
  M.reset_colors()
  M.clear_colors()
  local theme = themes[name] or themes[default]
  vim.g.colors_name = theme.name
  local vals = M.force_require(theme.path)
  M.apply_colors(vals)
end

return M
