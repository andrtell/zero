local bg = {
  white   =   '#fafafa',
  gray    =   '#edefef',
  yellow  =   '#eeeed8',
  pink    =   '#f3e6f3',
  cyan    =   '#e6f3f3',
  yell    =   '#f3f3e6',
  gr      =   '#ededed',
}

local fg = {
  black   =   '#101010',
  blue    =   '#032a8f',
  purple  =   '#720f7c',
  red     =   '#7f1719',
  orange  =   '#994e05',
  green   =   '#025203',
  cyan    =   '#0e645f',
  brown   =   '#7d3b13',
  gray    = { '#959595',
              '#dddfdf',
              '#5b5b60',
              '#474747', }
}

local hi = {
  { fg = fg.black,
    bg = bg.white   },    'Text',
  { fg = fg.gray[1] },    'Gray1',
  { fg = fg.gray[2] },    'Gray2',
  { fg = fg.gray[3] },    'Gray3',
  { fg = fg.gray[4] },    'Gray4',
  { fg = fg.red     },    'Red',
  { fg = fg.green   },    'Green',
  { fg = fg.blue    },    'Blue',
  { fg = fg.purple  },    'Purple',
  { fg = fg.cyan    },    'Cyan',
  { fg = fg.brown  },     'Brown',
  { fg = fg.orange  },    'Orange',
  { bg = bg.gray    },    'GrayB',
  { bg = bg.yellow  },    'YellowB',
  { bold = true },        'Bold',
  { underline = true },   'Under',
  { bg = bg.cyan },       'CyanB',
  { bg = bg.pink },       'PinkB',
  { bg = bg.gr },         'GrB',
}

local l = {}

for _, group in ipairs(hi) do
  if "table" ~= type(group) then
    l[group] = { link = group }
  end
end

local ih = {
  l.Text,     'Normal',
              'Delimiter',
  l.Gray1,    'NonText',
  l.Gray2,    'WinSeparator',
  l.GrayB,    'Visual',
              'StatusLine',
              'PMenuSelect',
  l.YellowB,  'Search',
              'CurSearch',
              'IncSearch',
              'MatchParen',
  l.Blue,     'Directory',
              'Title',

  l.Red,      'DiagnosticError',
  l.Blue,     'DiagnosticHint',
  l.Purple,   'DiagnosticWarn',

  l.GrayB,    'BlinkCmpMenuSelection',
              'BlinkCmpScrollBarThumb',

  l.YellowB,  'LeapLabel',

  l.Red,      'RainbowDelimiterRed',
  l.Blue,     'RainbowDelimiterBlue',
  l.Cyan,     'RainbowDelimiterGreen',
  l.Purple,   'RainbowDelimiterPurple',

  l.Gray1,    'Comment',
  l.Blue,     'Keyword',
              'Statement',
              '@keyword.function',
              '@keyword.repeat',
              '@keyword.conditional',
              '@keyword.type',
  l.Green,    'String',
  l.Text,     'Number',
              'Float',
  l.Purple,   'Boolean',

  -- C
  l.Orange,   '@number.c',
  l.Red,      '@string.c',
              '@character.c',
  l.Cyan,     '@keyword.return.c',
  l.Green,    '@type.builtin.c',

  -- GO
  l.Red,      '@number.go',
              '@number.float.go',
  l.Purple,   '@type.go',
  l.Red,      '@string.go',
  l.Text,     '@function.call.go',
  l.Text,     '@function.builtin.go',
  l.Text,     '@function.method.call.go',
  l.Text,     '@function.call.go',
  l.Blue,     '@keyword.go',
              '@keyword.return.go',
              '@keyword.function.go',
              '@keyword.import.go',
              '@keyword.repeat.go',
              '@keyword.conditional.go',
  l.Text,     '@function.go',
  l.Text,     '@variable.go',
  l.Text,     '@punctuation.bracket.go',
  l.Text,     '@punctuation.delimiter.go',
  l.Blue,     '@constant.builtin.go',
  l.Orange,   '@string.escape.go',

  -- ADA
  l.Blue,     'adaKeyword',
              'adaBegin',
              'adaEnd',
              'adaRepeat',
              'adaStructure',
              'adaTypeDef',
              'adaStorageClass',
              'adaOperator',
  l.Orange,   'adaNumber',
  l.Red,      'adaInc',

  -- Elixir
  l.Green,   '@string.special.symbol.elixir',
  l.Red,     '@string.elixir',
  l.Orange,  '@number.elixir',

  -- TS
  l.Green,   '@type.typescript',
  l.Orange,  '@number.typescript',
  l.Red,     '@string.typescript',

  -- CS
  l.Green,   'csType',
  l.Red,     'csString',
  l.Blue,    'csModifier',
             'csAccessModifier',
             'csClass',
  l.Orange,  'csInteger',
             'csReal',

  -- Unison
  l.Green,   '@type.unison',
  l.Red,     '@string.unison',
             '@number.unison',
  l.Blue,    '@attribute.unison',
  l.Text,    '@keyword.directive.unison',
}

for _, group in ipairs(ih) do
  table.insert(hi, group)
end

return hi
