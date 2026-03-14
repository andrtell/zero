local M = {}

local light

do
  local co = {
    white  = { '#f9f9f9'  },
    black  = { '#000000'  },
    grey   = { '#98989a',
               '#e5e4e2',
               '#ededea',
               '#e7e6e4', },
    red    = { '#7e1e00'  },
    green  = { '#025604'  },
    blue   = { '#04359b'  },
    purple = { '#6c0d6c'  },
  }

  local hi = {
    Normal    = { fg = co.black[1],
                  bg = co.white[1]  },
    Status    = { bg = co.grey[2]   },
    Visual    = { bg = co.grey[3]   },
    Search    = { bg = co.grey[4],  },
    Keyword   = { fg = co.red[1]    },
    Number    = { fg = co.blue[1]   },
    String    = { fg = co.green[1]  },
    Boolean   = { fg = co.purple[1] },
    Comment   = { fg = co.grey[1]   },
    Invisible = { fg = co.white[1]  },
    Directory = { fg = co.blue[1]   },
    Error     = { fg = co.red[1]    },
    Warn      = { fg = co.purple[1] },
    Hint      = { fg = co.blue[1]   },
    Title     = { fg = co.blue[1]   },
  }

  light = {
    hi.Normal,    'Normal',
    hi.Status,    'StatusLine',
                  'PMenuSelect',
                  'BlinkCmpMenuSelection',
    hi.Visual,    'Visual',
    hi.Search,    'Search',
                  'CurSearch',
                  'IncSearch',
                  'BlinkCmpScrollBarThumb',
    hi.Comment,   'Comment',
    hi.Invisible, 'NonText',
    hi.Boolean,   'Boolean',
    hi.Number,    'Number', 'Float',
    hi.String,    'String',
    hi.Keyword,   'Keyword', 'Statement', '@keyword.function',
                  '@keyword.repeat', '@keyword.conditional',
                  '@keyword.type',
    hi.Hint,      'DiagnosticHint',
    hi.Warn,      'DiagnosticWarn',
    hi.Error,     'DiagnosticError',
    hi.Directory, 'Directory',
    hi.Title,     'Title',
  }
end

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

function M.set_colors(theme)
  local vals = {}

  for _, group in ipairs(theme) do
    if "table" == type(group) then
      vals = group
    else
      vim.api.nvim_set_hl(0, group, vals)
    end
  end
end

function M.load(pick)
  M.reset_colors()
  M.clear_colors()
  local themes = {
    ['light'] = light
  }
  pick = pick or 'light'
  M.set_colors(themes[pick])
end

M.load()

return M
