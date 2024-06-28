--- Name: 
--- Description:
--- Author: Ebz 
--- License:

vim.cmd 'highlight clear'
vim.cmd 'syntax reset'

vim.opt.background = "dark"
vim.cmd.source("$VIMRUNTIME/colors/default.vim")
vim.g.colors_name = "x"

local c = {
    bg = "#242424",
    fg = "#d1d1d1",
    yellow = "#ffe882",
    
}

for name, attrs in pairs {
  ---- :help highlight-default -------------------------------

  Normal = { fg = a.fg, bg = a.bg },
  NormalFloat = { },
  -- NormalNC = {},

  -- Cursor = {},
  -- lCursor = {},
  -- CursorIM = {},
  -- TermCursor = {},
  TermCursorNC = {},

  ColorColumn = {},
  CursorColumn = 'ColorColumn',
  CursorLine = 'ColorColumn',
  VertSplit = {},
  WinSeparator = {},

  LineNr = {},
  CursorLineNr = {},

  Folded = {},
  FoldColumn = 'LineNr',
  SignColumn = 'LineNr',

  Pmenu = 'NormalFloat',
  PmenuSel = {},
  PmenuSbar = 'Pmenu',
  PmenuThumb = 'PmenuSel',

  StatusLine = 'NormalFloat',
  StatusLineNC = {},
  WildMenu = 'NormalFloat',

  TabLine = 'StatusLineNC',
  TabLineFill = 'StatusLine',
  TabLineSel = {},

  MatchParen = {},
  Search = {},
  Substitute = {},
  -- QuickFixLine = {},
  -- IncSearch = {},
  Visual = {},
  -- VisualNOS = {},

  Conceal = {},
  Whitespace = {},
  -- EndOfBuffer = {},
  NonText = 'Whitespace',
  SpecialKey = 'Whitespace',

  Directory = {},
  Title = {},
  ErrorMsg = {},
  ModeMsg = {},
  -- MsgArea = {},
  -- MsgSeparator = {},
  MoreMsg = {},
  WarningMsg = {},
  Question = 'MoreMsg',

  ---- :help :diff -------------------------------------------

  DiffAdd = {},
  DiffChange = {},
  DiffDelete = {},
  DiffText = {},

  DiffAdded = 'DiffAdd',
  DiffRemoved = 'DiffDelete',

  ---- :help spell -------------------------------------------

  SpellBad = {},
  SpellCap = {},
  SpellLocal = {},
  SpellRare = {},

  ---- :help group-name --------------------------------------

  Comment = {},
  Identifier = {},
  Function = {},
  Constant = {},
  String = {},
  Character = {},
  Number = {},
  Boolean = 'Number',
  -- Float = {},

  Statement = {},
  -- Conditional = {},
  -- Repeat = {},
  -- Label = {},
  Operator = {},
  -- Keyword = {},
  -- Exception = {},

  PreProc = {},
  -- Include = {},
  -- Define = {},
  -- Macro = {},
  -- PreCondit = {},

  Type = {},
  -- StorageClass = {},
  -- Structure = {},
  -- Typedef = {},

  Special = {},
  -- SpecialChar = {},
  -- Tag = {},
  Delimiter = {},
  -- SpecialComment = {},
  -- Debug = {},

  Underlined = {},
  Bold = { bold = bold },
  Italic = { italic = italic },

  Ignore = {},
  Error = {},
  Todo = {},

  ---- :help nvim-treesitter-highlights (external plugin) ----

  -- ['@boolean'] = {},
  -- ['@number'] = {},
  -- ['@number.float'] = {},

  -- ['@character'] = {},
  -- ['@character.special'] = {},
  -- ['@string'] = {},
  ['@string.documentation'] = {},
  ['@string.escape'] = {},
  ['@string.regexp'] = {},
  ['@string.special'] = {},
  ['@string.special.symbol'] = {},
  ['@string.special.path'] = {},
  ['@string.special.url'] = '@string.special.path',

  -- ['@keyword'] = {},
  -- ['@keyword.conditional'] = {},
  -- ['@keyword.conditional.ternary'] = {},
  -- ['@keyword.coroutine'] = {},
  -- ['@keyword.debug'] = {},
  ['@keyword.directive'] = 'PreProc',
  -- ['@keyword.directive.define'] = {},
  -- ['@keyword.exception'] = {},
  ['@keyword.function'] = 'PreProc',
  ['@keyword.import'] = 'PreProc',
  -- ['@keyword.operator'] = {},
  -- ['@keyword.repeat'] = {},
  -- ['@keyword.return'] = {},
  -- ['@keyword.storage'] = {},

  --- NOTE: Queries for these highlight groups are really hacky.
  --- Inaccurate syntax highlighting is worse than no highlighting at all,
  ['@constant'] = 'Identifier',
  ['@constant.builtin'] = 'Constant',
  ['@constant.macro'] = 'Constant',
  ['@module'] = 'Identifier',
  ['@module.builtin'] = '@module',
  ['@label'] = { fg = b.cyan },
  ['@variable'] = 'Identifier',
  ['@variable.builtin'] = '@string.special.symbol',
  -- ['@variable.parameter'] = {},
  -- ['@variable.member'] = {},

  -- ['@type'] = {},
  -- ['@type.builtin'] = {},
  -- ['@type.definition'] = {},
  ['@type.qualifier'] = 'Statement',
  -- ['@attribute'] = {},
  -- ['@property'] = {},

  -- ['@function'] = {},
  -- ['@function.builtin'] = {},
  ['@function.macro'] = 'Function',
  -- ['@function.method'] = {},
  -- ['@constructor'] = {},

  -- ['@punctuation.bracket'] = {},
  ['@punctuation.delimiter'] = {},
  -- ['@punctuation.special'] = {},

  -- ['@comment'] = {},
  ['@comment.documentation'] = {},
  ['@comment.error'] = 'Todo',
  ['@comment.note'] = 'Todo',
  ['@comment.todo'] = 'Todo',
  ['@comment.warning'] = 'Todo',

  -- ['@markup'] = {},
  ['@markup.heading'] = 'Title',
  ['@markup.heading.2'] = {},
  ['@markup.heading.3'] = {},
  ['@markup.heading.4'] = {},

  ['@markup.italic'] = {},
  ['@markup.strong'] = { bold = bold },
  ['@markup.strikethrough'] = {},
  ['@markup.underline'] = { underline = underline },

  ['@markup.quote'] = 'Comment',
  -- ['@markup.math'] = {}, -- TODO
  -- ['@markup.environment'] = {},
  ['@markup.link'] = { underline = underline },
  -- ['@markup.link.label'] = {},
  ['@markup.link.url'] = '@string.special.url',
  ['@markup.raw'] = {},
  -- ['@markup.raw.block'] = {},
  ['@markup.list'] = 'Delimiter',
  -- ['@markup.list.checked'] = {},
  -- ['@markup.list.unchecked'] = {},

  ['@diff.plus'] = 'DiffAdd',
  ['@diff.minus'] = 'DiffDelete',
  ['@diff.delta'] = 'DiffChange',

  -- ['@tag'] = {},
  ['@tag.attribute'] = '@label',
  ['@tag.delimiter'] = 'Delimiter',

  ---- :help diagnostic-highlight ----------------------------

  DiagnosticError = {},
  DiagnosticWarn = {},
  DiagnosticInfo = {},
  DiagnosticHint = {},
  DiagnosticOk = {},
  DiagnosticUnderlineError = {},
  DiagnosticUnderlineWarn = {},
  DiagnosticUnderlineInfo = {},
  DiagnosticUnderlineHint = {},
  DiagnosticUnderlineOk = {},
  -- DiagnosticVirtualTextError = {},
  -- DiagnosticVirtualTextWarn = {},
  -- DiagnosticVirtualTextInfo = {},
  -- DiagnosticVirtualTextHint = {},
  -- DiagnosticVirtualTextOk = {},
  -- DiagnosticFloatingError = {},
  -- DiagnosticFloatingWarn = {},
  -- DiagnosticFloatingInfo = {},
  -- DiagnosticFloatingHint = {},
  -- DiagnosticFloatingOk = {},
  -- DiagnosticSignError = {},
  -- DiagnosticSignWarn = {},
  -- DiagnosticSignInfo = {},
  -- DiagnosticSignHint = {},
  -- DiagnosticSignOk = {},

  DiagnosticDeprecated = { DiagnosticUnderlineError },
  DiagnosticUnnecessary = {},

  ---- :help lsp-highlight -----------------------------------

  -- LspReferenceText = 'Visual',
  -- LspReferenceRead = 'Visual',
  -- LspReferenceWrite = 'Visual',

  -- TODO: lsp-highlight-codelens

  ---- :help lsp-semantic-highlight --------------------------

  ['@lsp.mod.GlobalScope'] = { italic = italic },
  -- ['@lsp.type.class'] = 'Structure',
  -- ['@lsp.type.comment'] = 'Comment',
  -- ['@lsp.type.decorator'] = 'Function',
  -- ['@lsp.type.enum'] = 'Structure',
  -- ['@lsp.type.enumMember'] = 'Constant',
  -- ['@lsp.type.function'] = 'Function',
  -- ['@lsp.type.interface'] = 'Structure',
  ['@lsp.type.macro'] = {},
  -- ['@lsp.type.method'] = 'Function',
  ['@lsp.type.namespace'] = {},
  ['@lsp.type.parameter'] = {},
  -- ['@lsp.type.property'] = 'Identifier',
  -- ['@lsp.type.struct'] = 'Structure',
  -- ['@lsp.type.type'] = 'Type',
  -- ['@lsp.type.typeParameter'] = 'TypeDef',
  ['@lsp.type.variable'] = 'Identifier',

  ---- :help vimtex-syntax-reference (external plugin) -------

  texOptSep = '@punctuation.delimiter',
  texOptEqual = 'Operator',
  texFileArg = 'Constant',
  texTitleArg = { bold = bold },
  texRefArg = 'Constant',

  texMathCmd = 'Function',
  texMathSymbol = 'Operator',
  texMathZone = 'TSMath',
  texMathDelimZone = 'TSPunctDelimiter',
  texMathDelim = 'Delimiter',
  texMathEnvArgName = 'PreProc',

  --- neo-tree highlights  :help neo-tree-highlights ---

  NeoTreeNormal = 'NormalFloat',
  NeoTreeNormalNC = 'NeoTreeNormal',
  NeoTreeVertSplit = {},
  NeoTreeWinSeparator = 'NeoTreeVertSplit',

  NeoTreeCursorLine = {},

  --- netrw: there's no comprehensive list of highlights... --

  netrwClassify = 'Delimiter',
  netrwTreeBar = 'Delimiter',
  netrwExe = {},
  netrwSymLink = {},

} do
  if type(attrs) == 'table' then
    vim.api.nvim_set_hl(0, name, attrs)
  else
    vim.api.nvim_set_hl(0, name, { link = attrs })
  end
end
