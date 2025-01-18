local M = {}

local c = require("ashen.colors")

---@alias HighlightSpec [HexCode?, HexCode?, Style?] # Defines a highlight group.

---@alias Style table<string, boolean|string|integer> # Defines the text style of an AshenHighlight.

---@alias HighlightName string # The name of a Neovim highlight group.
---@alias HighlightMap table<HighlightName, HighlightSpec>

---@alias HighlightLink table<HighlightName, HighlightName> # Links first group to second group

---@type HighlightMap
M.map = {
  AshenRedFlame = { c.red_flame },
  AshenRedGlowing = { c.red_glowing },
  AshenRedEmber = { c.red_ember },
  AshenOrangeGlow = { c.orange_glow },
  AshenOrangeBlaze = { c.orange_blaze },
  AshenOrangeSmolder = { c.orange_smolder },
  AshenOrangeGolden = { c.orange_golden },
  AshenBlue = { c.blue },
  AshenBlueDark = { c.blue_dark },
  AshenGreenLight = { c.green_light },
  AshenGreen = { c.green },
  AshenBackground = { c.background },
  AshenG1 = { c.g_1 },
  AshenG2 = { c.g_2 },
  AshenG3 = { c.g_3 },
  AshenG4 = { c.g_4 },
  AshenG5 = { c.g_5 },
  AshenG6 = { c.g_6 },
  AshenG7 = { c.g_7 },
  AshenG8 = { c.g_8 },
  AshenG9 = { c.g_9 },
  AshenG10 = { c.g_10 },
  AshenG11 = { c.g_11 },
  AshenG12 = { c.g_12 },
  Title = { c.red_ember, nil, { bold = true } },
  Normal = { c.g_3, c.background },
  ModeMsg = { c.g_4 },
  CurSearch = { c.background, c.orange_glow, { bold = true } },
  IncSearch = { c.background, c.g_5, { bold = true } },
  Search = { c.background, c.g_5, { bold = true } },
  Substitute = { nil, c.g_8 },
  Visual = { nil, c.g_8 },
  AshenYank = { nil, c.g_7 },
  SignColumn = { nil, c.background },
  LineNr = { c.g_8, c.background },
  EndOfBuffer = { c.g_8, nil },
  Character = { c.g_5, nil },
  Identifier = { c.g_1, nil },
  Statement = { c.g_1, nil },
  PreProc = { c.red_ember, nil },
  Type = { c.orange_blaze, nil },
  Special = { c.g_5, nil },
  Error = { c.red_flame, nil },
  Todo = { c.red_ember, c.g_8 },
  Function = { c.g_1, nil },
  ColorColumn = { nil, c.g_8 },
  Conceal = { c.g_7, nil },
  Cursor = { c.g_12, c.g_3 },
  CursorColumn = { nil, c.g_9 },
  CursorLine = { nil, c.g_9 },
  CursorLineNr = { c.g_6, c.g_9 },
  Directory = { c.g_3, nil },
  DiffAdd = { c.red_ember, c.g_8 },
  DiffChange = { c.g_1, c.g_6 },
  DiffDelete = { c.red_kindling, c.g_8 },
  DiffText = { c.g_1, c.g_7 },
  VertSplit = { c.g_8, c.g_9 },
  WinSeparator = { c.g_8, c.g_9 },
  Folded = { c.g_5, c.g_8 },
  FoldColumn = { c.g_7, nil },
  MatchParen = { nil, c.g_7 },
  MoreMsg = { nil, c.g_6 },
  Pmenu = { c.g_2, c.g_8 },
  PmenuSel = { c.g_1, c.g_7 },
  PmenuSbar = { nil, c.g_8 },
  PmenuThumb = { nil, c.g_7 },
  Question = { c.g_1, c.g_8 },
  SpecialKey = { c.g_6, nil },
  SpellLocal = { c.g_5, nil },
  SpellRare = { c.red_ember, nil },
  StatusLine = { c.g_5, c.g_8 },
  TabLine = { c.g_3, c.g_8 },
  TabLineFill = { nil, c.g_8 },
  TabLineSel = { c.g_2, nil },
  VisualNOS = { c.red_ember, c.g_8 },
  WarningMsg = { c.red_ember, nil },
  WildMenu = { c.g_5, c.g_8 },
  FloatBorder = { c.g_7, nil },
  FloatTitle = { c.g_1, nil },
  NormalFloat = { c.g_3, nil },
  -- TODO: Create `noice` plugin table instead?
  NoicePopup = { c.g_3, c.g_11 },
  ["@character"] = { c.red_glowing, nil },
  ["@character.special"] = { c.red_kindling },
  ["@conditional"] = { c.g_2, nil },
  ["@constant.macro"] = { c.red_ember, nil },
  ["@constructor"] = { c.g_1, nil },
  ["@debug"] = { c.g_2, nil },
  ["@define"] = { c.g_2, nil },
  ["@exception"] = { c.g_2, nil },
  ["@field"] = { c.g_2, nil },
  ["@float"] = { c.g_2, nil },
  ["@function"] = { c.g_1, nil },
  ["@function.builtin"] = { c.g_1, nil },
  ["@function.call"] = { c.g_1, nil },
  ["@function.macro"] = { c.red_ember, nil },
  ["@include"] = { c.red_ember, nil },
  ["@keyword"] = { c.red_ember, nil },
  ["@keyword.function"] = { c.red_ember, nil },
  ["@keyword.operator"] = { c.orange_blaze, nil },
  ["@label"] = { c.red_ember, nil },
  ["@macro"] = { c.red_ember, nil },
  ["@method"] = { c.g_1, nil },
  ["@method.call"] = { c.g_1, nil },
  ["@namespace"] = { c.orange_blaze, nil },
  ["@namespace.builtin"] = { c.orange_blaze },
  ["@none"] = { c.g_3, nil },
  ["@operator"] = { c.orange_glow, nil },
  ["@parameter"] = { c.g_2, nil },
  ["@preproc"] = { c.g_2, nil },
  ["@property"] = { c.g_2, nil },
  ["@punctuation"] = { c.g_2, nil },
  ["@punctuation.bracket"] = { c.g_6, nil },
  ["@punctuation.delimiter"] = { c.orange_smolder, nil },
  ["@punctuation.special"] = { c.red_ashen, nil },
  ["@repeat"] = { c.g_2, nil },
  ["@storageclass"] = { c.g_2, nil },
  ["@string"] = { c.red_glowing, nil },
  ["@string.escape"] = { c.g_2, nil },
  ["@string.special"] = { c.g_2, nil },
  ["@structure"] = { c.g_2, nil },
  ["@tag"] = { c.g_6, nil },
  ["@tag.attribute"] = { c.g_4, nil },
  ["@tag.delimiter"] = { c.g_3, nil },
  ["@text.literal"] = { c.red_kindling, nil },
  ["@text.reference"] = { c.red_kindling, nil },
  ["@text.title"] = { c.g_2, nil },
  ["@text.todo"] = { c.g_2, nil },
  ["@text.underline"] = { c.g_2, nil },
  ["@text.uri"] = { c.g_2, nil },
  ["@type"] = { c.g_2, nil },
  ["@identifier"] = { c.g_1, nil },
  ["@variable.builtin"] = { c.blue, nil },
  ["@type.definition"] = { c.g_2, nil },
  ["@lsp.type.function"] = { c.g_1, nil },
  ["@lsp.type.macro"] = { c.red_ember, nil },
  ["@lsp.type.method"] = { c.g_1, nil },
  DiagnosticSignError = { c.red_flame, nil },
  DiagnosticError = { c.red_flame, nil },
  DiagnosticSignWarn = { c.orange_golden, nil },
  DiagnosticWarn = { c.orange_golden, nil },
  DiagnosticSignInfo = { c.g_2, nil },
  DiagnosticSignHint = { c.g_4, nil },
  DiagnosticHint = { c.g_4 },
  DiagnosticInfo = { c.g_2 },
  DiagnosticUnderlineError = { nil, nil, { underdotted = true, sp = c.red_flame } },
  DiagnosticUnderlineWarn = { nil, nil, { underdotted = true, sp = c.orange_golden } },
  DiagnosticUnderlineOk = { nil, nil, { underdotted = true, sp = c.green } },
  DiagnosticUnderlineInfo = { nil, nil, { underdotted = true, sp = c.blue } },
  DiagnosticUnderlineHint = { nil, nil, { underdotted = true, sp = c.g_3 } },

  DiagnosticOk = { c.g_2, nil },
  Added = { c.g_4, nil },
  Removed = { c.red_ember, nil },
  Changed = { c.orange_smolder, nil },
  ["@markup.link"] = { c.red_glowing, nil },
  ["@markup.list"] = { c.orange_glow, nil },
  ["@variable"] = { c.g_3, nil },
  ["@variable.member"] = { c.g_2, nil },
  ["@constant"] = { c.orange_blaze, nil },
  ["@constant.builtin"] = { c.blue, nil },
  ["@type.builtin"] = { c.blue, nil },
  ["@number"] = { c.blue, nil },
  NonText = { c.g_7, nil },
  Comment = { c.g_6, nil },
  ["@comment"] = { c.g_6, nil },
  ["@boolean.go"] = { c.blue, nil },
  ["@boolean"] = { c.blue, nil },
  ["@keyword.return"] = { c.red_ember, nil },
  Boolean = { c.blue, nil },
  Constant = { c.orange_blaze, nil },
  DashboardHeader = { c.red_ember, nil },
  DashboardIcon = { c.red_ember, nil },
  DashboardKey = { c.blue, nil },
  NotifyINFOBorder = { c.blue_dark, nil },
  NotifyINFOTitle = { c.blue, nil },
  NotifyINFOIcon = { c.blue, nil },
  NotifyWARNBorder = { c.orange_glow, nil },
  NotifyWARNTitle = { c.orange_golden, nil },
  NotifyWARNIcon = { c.orange_golden, nil },
  NotifyERRORBorder = { c.red_flame, nil },
  NotifyERRORTitle = { c.red_flame, nil },
  NotifyERRORIcon = { c.red_flame, nil },
  ErrorMsg = { c.g_1, c.red_flame },
  SpellBad = { nil, nil, { undercurl = true } },
  SpellCap = { nil, nil, { undercurl = true } },
  String = { c.red_glowing, nil },
}

M.link = {}

---@type string[]
M.transparent_bg = {
  "Normal",
  "SignColumn",
  "LineNr",
}

M.load = function()
  local util = require("ashen.util")
  local opts = require("ashen.state").opts
  vim.api.nvim_command(string.format("set background=%s", "dark"))
  if opts.transparent then
    for _, name in ipairs(M.transparent_bg) do
      M.map[name] = util.remove_bg(M.map[name])
    end
  end
  util.map_override(M.map, opts)

  -- set theme highlights
  for name, spec in pairs(M.map) do
    util.hl(name, spec)
  end
  -- set theme links
  for from, to in pairs(M.link) do
    util.link(from, to)
  end
  -- set user links
  for from, to in pairs(opts.hl.link) do
    util.link(from, to, true)
  end
end

return M
