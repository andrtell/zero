local M = {}

M.load = function (name)
  local ok = {
    ['zero-light'] = true
  }

  if not ok[name] then
    return
  end

  vim.cmd('hi clear')

  if 1 == vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  local hls = vim.api.nvim_get_hl(0, {})

  for group, val in pairs(hls) do
    vim.api.nvim_set_hl(
      0, group, {
        link = val.link,
        underline = val.underline
      }
    )
  end

  vim.g.colors_name = name

  local path = string.format('zero.themes.%s', name)

  package.loaded[path] = nil

  local theme = require(path)

  local opts = {}

  for _, group in ipairs(theme) do
    if "table" == type(group) then
      opts = group
    else
      vim.api.nvim_set_hl(0, group, opts)
    end
  end
end

return M
