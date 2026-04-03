local fg = {
  black   =   '#070100',
  red     =   '#8d2c2a',
  green   =   '#055705',
  blue    =   '#013a94',
  -- purple  =   '#6d2176',
  purple  =   '#7b277b',
  cyan    =   '#006363',
  orange  =   '#904f2b',
  gray    = { '#959595',
              '#dddfdf', }
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
  { fg = fg.red     },    'Red',
  { fg = fg.green   },    'Green',
  { fg = fg.blue    },    'Blue',
  { fg = fg.purple  },    'Purple',
  { fg = fg.cyan    },    'Cyan',
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
  l.Text,      'Normal',
               'Delimiter',
  l.Gray1,     'NonText',
  l.Gray2,     'WinSeparator',
  l.GrayB,     'Visual',
               'StatusLine',
               'PMenuSelect',
  l.YellowB,   'Search',
               'CurSearch',
               'IncSearch',
  l.Blue,      'Directory',
               'Title',
  l.Red,       'DiagnosticError',
  l.Blue,      'DiagnosticHint',
  l.Purple,    'DiagnosticWarn',
  l.Gray1,     'Comment',
  l.Blue,      'Keyword',
               'Statement',
               '@keyword.function',
               '@keyword.repeat',
               '@keyword.conditional',
               '@keyword.type',
  l.Green,     'String',
  l.Blue,      'Number',
               'Float',
  l.Purple,    'Boolean',
  l.GrayB,     'BlinkCmpMenuSelection',
               'BlinkCmpScrollBarThumb',
  l.YellowB,   'LeapLabel',
  l.Green,     '@tag.javascript',
  l.Blue,      '@tag.html',
               '@tag.delimiter.html',
  l.Gray1,     '@constant.html',
  l.Text,      '@markup.heading.html',
  l.Blue,      '@tag.css',
  l.Green,     '@property.css',
  l.Text,      '@function.call.typescript',
               '@function.method.call.typescript',
               '@function.call.tsx',
               '@function.method.call.tsx',
               '@operator.tsx',
               '@operator.typescript',
               '@markup.heading.1.tsx',
  l.Red,       '@type.builtin.typescript',
               '@type.typescript',
  l.Blue,      '@tag.builtin.tsx',
               '@tag.delimiter.tsx',
}

for _, group in ipairs(ih) do
  table.insert(hi, group)
end

return hi
