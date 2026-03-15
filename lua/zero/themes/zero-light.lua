local c = {
  white  = { '#fafafa'  },
  black  = { '#000000'  },
  grey   = { '#98989a',
             '#e5e4e2',
             '#ededec',
             '#e7e6e4',
             '#e5e5e5', },
  red    = { '#7e1e00'  },
  green  = { '#025603',
             '#025002'  },
  blue   = { '#05349c'  },
  purple = { '#6b0c6b'  },
}

local h = {
  Normal     = { fg = c.black[1],
                 bg = c.white[1]  },
  Invisible  = { fg = c.white[1]  },

  Visual     = { bg = c.grey[3]   },
  Search     = { bg = c.grey[4],  },
  MenuSelect = { bg = c.grey[2]   },
  ScrollBar  = { bg = c.grey[4]   },

  Status     = { bg = c.grey[2]   },

  Directory  = { fg = c.blue[1]   },

  Title      = { fg = c.blue[1]   },

  Error      = { fg = c.red[1]    },
  Warn       = { fg = c.purple[1] },
  Hint       = { fg = c.blue[1]   },

  Keyword    = { fg = c.red[1]    },
  Number     = { fg = c.blue[1]   },
  String     = { fg = c.green[1]  },
  Boolean    = { fg = c.purple[1] },
  Comment    = { fg = c.grey[1]   },
}

return {
  h.Normal,      'Normal',
  h.Invisible,   'NonText',

  h.Visual,     'Visual',
                'LeapLabel',
  h.Search,     'Search',
                'CurSearch',
                'IncSearch',

  h.Status,     'StatusLine',

  h.MenuSelect, 'PMenuSelect',
                'BlinkCmpMenuSelection',
  h.ScrollBar,  'BlinkCmpScrollBarThumb',

  h.Directory,  'Directory',

  h.Title,      'Title',

  h.Hint,       'DiagnosticHint',
  h.Warn,       'DiagnosticWarn',
  h.Error,      'DiagnosticError',

  h.Comment,    'Comment',
  h.Boolean,    'Boolean',
  h.Number,     'Number', 'Float',
  h.String,     'String',
  h.Keyword,    'Keyword', 'Statement', '@keyword.function',
                '@keyword.repeat', '@keyword.conditional',
                '@keyword.type',
}

