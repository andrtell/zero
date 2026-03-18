-- Colors

local black   = { fg = '#010101'  }
local white   = { bg = '#fafafa'  }
local red     = { fg = '#7c1f00'  }
local green   = { fg = '#045404'  }
local blue    = { fg = '#034792'  }
local purple  = { fg = '#6a156a'  }
local yellow  = { bg = '#ededd9'  }
local gray    = { fg = '#969696',
                  bg = '#eceeee', }

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
  Blue,       'Directory',
              'Title',
              -- Diagnostic
  Red,        'DiagnosticError',
  Blue,       'DiagnosticHint',
  Purple,     'DiagnosticWarn',
              -- Syntax
  Red,        'Keyword',
              'Statement',
              '@keyword.function',
              '@keyword.repeat',
              '@keyword.conditional',
              '@keyword.type',
  Green,      'String',
  Blue,       'Number',
              'Float',
              -- 'Type',
  Purple,     'Boolean',
  Gray,       'Comment',
              -- Blink
  Visual,     'BlinkCmpMenuSelection',
              'BlinkCmpScrollBarThumb',
              -- Leap
  Visual,     'LeapLabel',
}
