local M = {}

M.load = function (name)

  -- name is valid?

  local ok = {
    ['rgb-light'] = true
  }

  if not ok[name] then
    return
  end

  -- reset highlights to the default

  vim.cmd('hi clear')

  if 1 == vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  -- clear all highlights, preserve links and underlines

  local hls = vim.api.nvim_get_hl(0, {})

  for group, val in pairs(hls) do
    vim.api.nvim_set_hl(
      0, group, {
        link = val.link,
        underline = val.underline
      }
    )
  end

  -- set the colorscheme name

  vim.g.colors_name = 'zero-' .. name

  -- (re)load theme from file

  local path = 'zero.themes.' .. name

  package.loaded[path] = nil

  local theme = require(path)

  -- set highlights from theme

  local opts = {}

  for _, group in ipairs(theme) do
    if "table" == type(group) then
      opts = group
    else
      vim.api.nvim_set_hl(0, group, opts)
    end
  end
end

M.load('rgb-light')

return M
