local bg = {
  white   =   '#faf9f8',
  gray    =   '#edefef',
  yellow  =   '#eeeed8',
}

local fg = {
  black   =   '#161616',
  blue    =   '#032e90',
  purple  =   '#6e1e8e',
  red     =   '#771717',
  orange  =   '#916101',
  green   =   '#015602',
  cyan    =   '#066e6e',
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

  -- GO
  l.Text,     '@number.go',
              '@number.float.go',
  l.Red,      '@type.go',

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
}

for _, group in ipairs(ih) do
  table.insert(hi, group)
end

return hi


-- l.Text,     'JanetSpecialForm',
--             'JanetFunction',
--             'JanetMacro',
--             'JanetNumber',
--             'JanetBoolean',
--             '@function.macro.janet_simple',
--             '@function.builtin.janet_simple',
--             '@function.call.janet_simple',
-- l.Text,     '@number.janet_simple',
-- l.Blue,     '@boolean.janet_simple',
-- l.Green,    '@string.janet_simple',
