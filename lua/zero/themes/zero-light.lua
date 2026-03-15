local black   =   '#000000'
local white   =   '#fafafa'
local red     =   '#7e1e00'
local green   =   '#025603'
local blue    =   '#05349c'
local purple  =   '#6b0c6b'
local gray    = { comment = '#98989a',
                  status  = '#e5e4e2',
                  search  = '#e7e6e4',
                  visual  = '#ededec' }

local Normal      = { fg = black,
                      bg = white        }
local Invisible   = { fg = white        }
local Visual      = { bg = gray.visual  }
local Search      = { bg = gray.search  }
local MenuSelect  = { bg = gray.status  }
local ScrollBar   = { bg = gray.search  }
local Status      = { bg = gray.status  }
local Directory   = { fg = blue         }
local Title       = { fg = blue         }
local Error       = { fg = red          }
local Warn        = { fg = purple       }
local Hint        = { fg = blue         }
local Keyword     = { fg = red          }
local Number      = { fg = blue         }
local String      = { fg = green        }
local Boolean     = { fg = purple       }
local Comment     = { fg = gray.comment }

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

