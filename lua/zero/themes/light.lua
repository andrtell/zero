local fg = {
  black   =   '#070100',
  red     =   '#8d2c2a',
  green   =   '#055705',
  blue    =   '#013a94',
  purple  =   '#792079',
  brown   =   '#7d3b12',
  -- purple  =   '#6d2176',
  cyan    =   '#006666',
  gray    = { '#959595',
              '#dddfdf',
              '#5c5c60', }
}

local bg = {
  white   =   '#fafafa',
  gray    =   '#edefef',
  yellow  =   '#eeeed8',
}

local hi = {
  { fg = fg.black,
    bg = bg.white   },    'Text',
  { fg = fg.gray[1] },    'Gray1',
  { fg = fg.gray[2] },    'Gray2',
  { fg = fg.gray[3] },    'Gray3',
  { fg = fg.red     },    'Red',
  { fg = fg.green   },    'Green',
  { fg = fg.blue    },    'Blue',
  { fg = fg.purple  },    'Purple',
  { fg = fg.cyan    },    'Cyan',
  { fg = fg.brown  },     'Brown',
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
  l.Cyan,     'Boolean',


  l.Green,    '@tag.javascript',

  l.Blue,     '@tag.html',
  l.Blue,     '@tag.delimiter.html',
  l.Brown,    '@tag.attribute.html',
  l.Gray1,    '@constant.html',
  l.Text,     '@markup.heading.html',

  l.Blue,     '@tag.css',
  l.Green,    '@property.css',

  l.Purple,   '@function.call.typescript',
              '@function.method.call.typescript',
              '@function.call.tsx',
              '@function.method.call.tsx',
  l.Red,      '@type.builtin.typescript',
              '@type.typescript',
  l.Brown,    '@punctuation.special.typescript',
              '@punctuation.special.tsx',
              '@tag.attribute.tsx',
  l.Blue,     '@tag.builtin.tsx',
  l.Blue,     '@tag.delimiter.tsx',
  l.Text,     '@markup.heading.1.tsx',
              '@operator.tsx',
              '@operator.typescript',
              '@variable.typescript',
              '@variable.member.typescript',
}

for _, group in ipairs(ih) do
  table.insert(hi, group)
end

return hi
