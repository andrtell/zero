local black   =   '#000000'
local white   =   '#fafafa'
local red     =   '#7e1e00'
local green   =   '#025603'
local blue    =   '#05349c'
local purple  =   '#6b0c6b'
local grey    = { '#98989a',
                  '#e5e4e2',
                  '#ededec',
                  '#e7e6e4',
                  '#e5e5e5' }

local Normal      = { fg = black,
                      bg = white   }
local Invisible   = { fg = white   }
local Visual      = { bg = grey[3] }
local Search      = { bg = grey[4] }
local MenuSelect  = { bg = grey[2] }
local ScrollBar   = { bg = grey[4] }
local Status      = { bg = grey[2] }
local Directory   = { fg = blue    }
local Title       = { fg = blue    }
local Error       = { fg = red     }
local Warn        = { fg = purple  }
local Hint        = { fg = blue    }
local Keyword     = { fg = red     }
local Number      = { fg = blue    }
local String      = { fg = green   }
local Boolean     = { fg = purple  }
local Comment     = { fg = grey[1] }

return {
  Normal,     'Normal',
  Invisible,  'NonText',
  Visual,     'Visual',
              'LeapLabel',
  Search,     'Search',
              'CurSearch',
              'IncSearch',
  Status,     'StatusLine',
  MenuSelect, 'PMenuSelect',
              'BlinkCmpMenuSelection',
  ScrollBar,  'BlinkCmpScrollBarThumb',
  Directory,  'Directory',
  Title,      'Title',
  Hint,       'DiagnosticHint',
  Warn,       'DiagnosticWarn',
  Error,      'DiagnosticError',
  Comment,    'Comment',
  Boolean,    'Boolean',
  Number,     'Number', 'Float',
  String,     'String',
  Keyword,    'Keyword', 'Statement', '@keyword.function',
              '@keyword.repeat', '@keyword.conditional',
              '@keyword.type',
}

