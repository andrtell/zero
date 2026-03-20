-- Colors

local black   = { fg = '#030303'  }
local white   = { bg = '#fafafa'  }
local red     = { fg = '#8a2d2d'  }
local green   = { fg = '#055705'  }
local blue    = { fg = '#014395'  }
local purple  = { fg = '#6e2275'  }
local yellow  = { bg = '#ededd9'  }
local gray    = { fg = '#959595',
                  bg = '#edefef',
                  cg = '#dddfdf',
                }

-- Opts

local Normal  = { fg = black.fg,
                  bg = white.bg   }
local NonText = { fg = gray.fg    }
local Visual  = { bg = gray.bg    }
local Search  = { bg = yellow.bg  }
local Red     = { fg = red.fg     }
local Green   = { fg = green.fg   }
local Blue    = { fg = blue.fg    }
local Purple  = { fg = purple.fg  }
local Gray    = { fg = gray.fg    }
local IGray   = { fg = gray.cg    }

-- Theme

return {
  Normal,     'Normal',
              'Delimiter',
  NonText,    'NonText',
  Search,     'Search',
              'CurSearch',
              'IncSearch',
  Visual,     'Visual',
              'StatusLine',
              'PMenuSelect',
  IGray,      'WinSeparator',
  Blue,       'Directory',
              'Title',
              -- Diagnostic
  Red,        'DiagnosticError',
  Blue,       'DiagnosticHint',
  Purple,     'DiagnosticWarn',
              -- Syntax
  Blue,       'Keyword',
              'Statement',
              '@keyword.function',
              '@keyword.repeat',
              '@keyword.conditional',
              '@keyword.type',
  Green,      'String',
  Red,        'Number',
              'Float',
              -- 'Type',
  Blue,       'Boolean',
  Gray,       'Comment',
              -- Blink
  Visual,     'BlinkCmpMenuSelection',
              'BlinkCmpScrollBarThumb',
              -- Leap
  Visual,     'LeapLabel',
              -- Dart
  Blue,       '@lsp.type.class.dart',
              -- JS
  Green,      '@tag.javascript',
}
