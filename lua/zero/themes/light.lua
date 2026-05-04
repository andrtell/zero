local fg = {
  black   =   '#060100',
  blue    =   '#032e95',
  orange  =   '#9c6c04',
  green   =   '#035703',
  red     =   '#812a28',
  cyan    =   '#065f6e',
  purple  =   '#731673',
  brown   =   '#7d3b13',
  gray    = { '#959595',
              '#dddfdf',
              '#5b5b60',
              '#474747', }
}

local bg = {
  white   =   '#f9f9f9',
  gray    =   '#edefef',
  yellow  =   '#eeeed8',
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

  l.Gray1,    'Comment',
  l.Blue,     'Keyword',
              'Statement',
              '@keyword.function',
              '@keyword.repeat',
              '@keyword.conditional',
              '@keyword.type',
  l.Green,    'String',
  l.Blue,     'Number',
              'Float',
  l.Purple,   'Boolean',

  l.Text,     '@number.go',
              '@number.float.go',
  l.Red,      '@type.go',

  l.Red,      '@type.builtin.c',
              '@type.c',
  l.Cyan,     '@constant.c',

  l.Green,    '@tag.javascript',

  l.Blue,     '@tag.html',
  l.Gray3,    '@tag.delimiter.html',
  l.Brown,    '@tag.attribute.html',
  l.Gray1,    '@constant.html',
  l.Text,     '@markup.heading.html',

  l.Blue,     '@tag.css',
  l.Green,    '@property.css',

  l.Red,      '@type.builtin.typescript',
              '@type.typescript',
  l.Green,    '@punctuation.special.typescript',
              '@punctuation.special.tsx',
  l.Brown,    '@tag.attribute.tsx',
  l.Blue,     '@tag.builtin.tsx',
  l.Gray3,    '@tag.delimiter.tsx',
  l.Text,     '@markup.heading.1.tsx',
              '@operator.tsx',
              '@operator.typescript',
              '@variable.typescript',
              '@variable.member.typescript',

  l.Text,     'JanetSpecialForm',
              'JanetFunction',
              'JanetMacro',
              'JanetNumber',
              'JanetBoolean',
              '@function.macro.janet_simple',
              '@function.builtin.janet_simple',
              '@function.call.janet_simple',
  l.Text,     '@number.janet_simple',
  l.Blue,     '@boolean.janet_simple',
  l.Green,    '@string.janet_simple',

  l.Red,      'RainbowDelimiterRed',
  l.Blue,     'RainbowDelimiterBlue',
  l.Cyan,     'RainbowDelimiterGreen',
  l.Purple,   'RainbowDelimiterPurple',

  l.Green,    '@constructor.ocaml',
  l.Red,      '@type.builtin.ocaml',
              '@type.ocaml',
  l.Blue,     '@keyword.type.ocaml',
  l.Blue,     '@keyword.modifier.ocaml',
  l.Cyan,     '@module.ocaml',
  l.Orange,   '@number.ocaml',
  l.Purple,   '@function.call.ocaml',
              '@function.ocaml',
  l.Purple,   '@operator.ocaml',
  l.Text,     '@label.ocaml',
              '@punctuation.delimiter.ocaml',
}

for _, group in ipairs(ih) do
  table.insert(hi, group)
end

return hi

