-- Colors

local black   = { fg = '#070100'  }
local white   = { bg = '#fafafa'  }
local red     = { fg = '#8d2c2a'  }
local green   = { fg = '#055705'  }
local blue    = { fg = '#013a94'  }
local purple  = { fg = '#6d2176'  }
local yellow  = { bg = '#eeeed8'  }
local cyan    = { fg = '#005f5f'  }
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
local Cyan    = { fg = cyan.fg    }

-- Theme

local theme = {

  Red,        'Red',
  Green,      'Green',
  Blue,       'Blue',
  Purple,     'Purple',
  Cyan,       'Cyan',

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
  Purple,     'Boolean',
  Gray,       'Comment',
              -- Blink
  Visual,     'BlinkCmpMenuSelection',
              'BlinkCmpScrollBarThumb',
              -- Leap
  Visual,     'LeapLabel',
              -- Lua
  Cyan,       '@keyword.return.lua',
              -- JS
  Green,      '@tag.javascript',
              -- HTML
  Blue,       '@tag.html',
              '@tag.delimiter.html',
  -- Purple,     '@tag.attribute.html',
  Gray,       '@constant.html',
  Normal,     'HtmlTitle',
              '@markup.heading.html',
              -- HEEX (Elixir)
  Blue,       '@tag.heex',
              '@constant.elixir',
              '@string.special.symbol.elixir',
  Red,        '@keyword.elixir',
  Purple,     '@boolean.elixir',
              -- Tyepscript
  Normal,     '@function.call.typescript',
              '@function.method.call.typescript',
              '@function.call.tsx',
              '@function.method.call.tsx',
  Cyan,       '@keyword.return.tsx',
  Normal,     '@operator.tsx',
              '@operator.typescript',
  Blue,       '@tag.builtin.tsx',
              '@tag.delimiter.tsx',
  -- Purple,     '@tag.attribute.tsx',
  Normal,     '@markup.heading.1.tsx',
              -- CSS
  Blue,       '@tag.css',
  Green,      '@property.css',
}

return theme
