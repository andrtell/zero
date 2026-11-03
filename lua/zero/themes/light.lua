local bg = {
  white   =   '#f8f8f8',
  gray    =   '#edefef',
  yellow  =   '#eeeed8',
  pink    =   '#f3e6f3',
  cyan    =   '#e6f3f3',
  yell    =   '#f3f3e6',
  gr      =   '#ededed',
}

local fg = {
  black   =   '#101010',
  blue    =   '#02268d',
  purple  =   '#73127b',
  red     =   '#7f1c1b',
  orange  =   '#8d5f06',
  green   =   '#045501',
  cyan    =   '#0e645f',
  brown   =   '#7d3b13',
  gray    = { '#959595',
              '#dddfdf',
              '#5b5b60',
              '#474747',
              '#575757', }
}

local hi = {
  { fg = fg.black,
    bg = bg.white   },    'Text',
  { fg = fg.gray[1] },    'Gray1',
  { fg = fg.gray[2] },    'Gray2',
  { fg = fg.gray[3] },    'Gray3',
  { fg = fg.gray[4] },    'Gray4',
  { fg = fg.gray[5] },    'Gray5',
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
  { bg = bg.white, fg = bg.white }, 'Inv',
  { fg = fg.red,    bold = false },  'Mojo_Red',
  { fg = fg.blue,   bold = false }, 'Mojo_Blue',
  { fg = fg.orange, bold = false },  'Mojo_Orange',
  { fg = fg.green,  bold = false }, 'Mojo_Green',
  { fg = fg.purple,  bold = false }, 'Mojo_Purple',
  { bold = true },                  'Mojo_Bold',
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
  l.Inv,    'NonText',
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
              '@lsp.type.number.go',
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

  -- Typescript
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

  -- Mojo
  l.Mojo_Green, 'mojoString',
  l.Mojo_Red,   'mojoStatement',
                'mojoInclude',
                'mojoOperator',
                'mojoRepeat',
                'mojoConditional',
                'mojoException',
  l.Mojo_Blue,  'mojoNumber',
  l.Mojo_Blue,  'mojoFunction',
  l.Mojo_Orange,'mojoType',
  l.Text,       'mojoBuiltin',
}

for _, group in ipairs(ih) do
  table.insert(hi, group)
end

return hi
