local M = {}

---@alias AshenColor string

---@alias HexCode string # Hexadecimal color code preceded by a hashtag

---@class AshenPalette
---@field [AshenColor] HexCode
local colors = {
  red_flame = "#C53030", -- Brightest, most intense red
  red_glowing = "#DF6464", -- Slightly deeper glowing red
  red_ember = "#B14242", -- Deep, smoldering ember red

  orange_glow = "#D87C4A", -- Bright, glowing orange
  orange_blaze = "#C4693D", -- Vibrant blaze orange

  -- change smolder to another orange
  orange_smolder = "#E49A44", -- Dark, smoldering orange
  orange_golden = "#E5A72A",

  red_kindling = "#BD4C4C", -- Light, warm red
  red_burnt_crimson = "#A84848", -- Muted crimson red
  red_brick = "#853D3D", -- Muted, earthy brick red
  red_deep_ember = "#7A2E2E", -- Dark, deep ember red
  red_ashen = "#6F2929", -- Cool, ashen red
  blue = "#4A8B8B", -- Muted teal, soft and unobtrusive
  blue_dark = "#3A6E6E", -- Dark teal, ideal for subtle backgrounds
  background = "#121212",
  green = "#1E6F54",
  g_0 = "#fcfcfc",
  g_1 = "#f5f5f5",
  g_2 = "#d5d5d5",
  g_3 = "#b4b4b4",
  g_4 = "#a7a7a7",
  g_5 = "#949494",
  g_6 = "#737373",
  g_7 = "#535353",
  g_8 = "#323232",
  g_9 = "#212121",
  g_10 = "#1d1d1d",
  g_11 = "#191919",
  g_12 = "#151515",
}

-- WARNING: These colors are not part of the Ashen palette!
-- Rather, they're here as reference, to have a list of "standard"
-- colors that still fit nicely with the theme -- for example, in case
-- you *really* need something to be, say, purple, and want it to
-- look decent with the rest of the theme. Please don't use them
-- if you're porting Ashen to another program -- I can't guarantee
-- that it'll look good! --ficcdaf
local standard = {
  red = "#C53030", -- Brightest, most intense red
  blue = "#3A6E6E", -- Muted teal, soft and unobtrusive
  yellow = "#F4CA64", -- Bright sunflower yellow
  orange = "#D87C4A", -- Bright, glowing orange
  purple = "#7A3D82", -- Rich violet purple
  pink = "#D1728C", -- Deep rose pink
  brown = "#853D3D", -- Muted, earthy brick red
  black = "#121212", -- Deep background black
  white = "#FFFFFF", -- Pure white
  gray = "#A7A7A7", -- Neutral mid-gray
  cyan = "#6E91C4", -- Sky-like cyan
  magenta = "#C9347C", -- Vibrant fuchsia
  lime = "#8CD437", -- Bright lime green
  teal = "#1A3F3F", -- Dark teal
  navy = "#223A70", -- Deep navy blue
  maroon = "#7A2E2E", -- Dark, deep ember red
  olive = "#708238", -- Muted olive green
  indigo = "#502E5F", -- Deep, muted indigo
  violet = "#8E5E93", -- Soft mauve violet
  gold = "#D7A933", -- Rich golden yellow
  silver = "#D5D5D5", -- Soft, muted silver
  beige = "#F5F5DC", -- Light, warm beige
  aqua = "#4AC4C4", -- Bright aqua
  coral = "#E492B4", -- Soft coral pink
}

M.colors = vim.tbl_extend("keep", colors, standard)

return M.colors
