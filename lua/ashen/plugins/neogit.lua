local M = {}

M.map = {
  -- Status Buffer
  NeogitBranch = { "orange_glow" },
  NeogitBranchHead = { "orange_glow" },
  NeogitRemote = { "orange_blaze" },
  NeogitObjectId = { "red_ember" },
  NeogitStash = { "g_2" },
  NeogitTagName = { "blue" },
  NeogitTagDistance = { "blue" },
  NeogitStatusHEAD = { "red_glowing" },
  NeogitFold = { "g_1" },
  NeogitRebaseDone = { "orange_glow" },
  -- Section Headers
  NeogitSectionHeader = { "red_glowing" },
  NeogitSectionHeaderCount = { "blue" },
  -- Status Buffer File
  NeogitChangeAdded = { "green_light" },
  NeogitChangeModified = { "orange_golden" },
  NeogitChangeDeleted = { "red_flame" },
  NeogitChangeRenamed = { "orange_blaze" },
  NeogitChangeUpdated = { "green" },
  NeogitChangeCopied = { "blue" },
  NeogitChangeNewFile = { "green_light" },
  NeogitChangeUnmerged = { "red_glowing" },
  -- Signs line highlighting
  NeogitHunkHeader = { "red_glowing" },
  NeogitDiffContext = { "g_3" },
  NeogitDiffAdd = { "green_light" },
  NeogitDiffDelete = { "red_flame" },
  NeogitDiffHeader = { "red_glowing" },
  NeogitActiveItem = { "orange_blaze" },
  -- Signs for line highlighting current context
  NeogitHunkHeaderHighlight = { "orange_blaze" },
  NeogitDiffContextHighlight = { "g_3" },
  NeogitDiffAddHighlight = { "green_light" },
  NeogitDiffDeleteHighlight = { "red_flame" },
  NeogitDiffHeaderHighlight = { "blue" },
  -- Same as above, but when cursor is on the line
  NeogitHunkHeaderCursor = { "orange_blaze", { bold = true } },
  NeogitDiffContextCursor = { bold = true },
  NeogitDiffAddCursor = { "green_light", { bold = true } },
  NeogitDiffDeleteCursor = { "red_flame", { bold = true } },
  NeogitDiffHeaderCursor = { { bold = true } },
  -- Commit Buffer
  NeogitFilePath = { "blue" },
  NeogitCommitViewHeader = { "red_glowing" },
  -- Log View Buffer
  NeogitGraphAuthor = { "orange_blaze" },
  -- ngl I have no idea what to do for these so leaving them unset for now
  NeogitGraphBlack = {},
  NeogitGraphBlackBold = {},
  NeogitGraphRed = {},
  NeogitGraphRedBold = {},
  NeogitGraphGreen = {},
  NeogitGraphGreenBold = {},
  NeogitGraphYellow = {},
  NeogitGraphYellowBold = {},
  NeogitGraphBlue = {},
  NeogitGraphBlueBold = {},
  NeogitGraphPurple = {},
  NeogitGraphPurpleBold = {},
  NeogitGraphCyan = {},
  NeogitGraphCyanBold = {},
  NeogitGraphWhite = {},
  NeogitGraphWhiteBold = {},
  NeogitGraphGray = {},
  NeogitGraphBoldGray = {},
  NeogitGraphOrange = {},
  -- Signature Highlighting
  NeogitSignatureGood = { "green_light" },
  NeogitSignatureBad = { "red_flame" },
  NeogitSignatureMissing = { "red_ember" },
  NeogitSignatureNone = { "g_3" },
  NeogitSignatureGoodUnknown = { "green" },
  NeogitSignatureGoodExpired = { "orange_golden" },
  NeogitSignatureGoodExpiredKey = { "orange_golden" },
  NeogitSignatureGoodRevokedKey = { "orange_golden" },
  -- Popups
  NeogitPopupSectionTitle = { "red_glowing" },
  NeogitPopupBranchName = { "orange_golden" },
  NeogitPopupBold = { "orange_glow" },
  NeogitPopupSwitchKey = { "orange_glow" },
  NeogitPopupSwitchEnabled = { "orange_glow" },
  NeogitPopupSwitchDisabled = { "g_6" },
  NeogitPopupOptionKey = { "red_ember" },
  NeogitPopupOptionEnabled = { "red_ember" },
  NeogitPopupOptionDisabled = { "g_6" },
  NeogitPopupConfigKey = { "blue" },
  NeogitPopupConfigEnabled = { "blue" },
  NeogitPopupConfigDisabled = { "g_6" },
  NeogitPopupActionKey = { "orange_golden" },
  NeogitPopupActionDisabled = { "g_6" },
  -- Command history
  NeogitCommandText = { "g_2" },
  NeogitCommandTime = { "blue" },
  NeogitCommandCodeNormal = { "green_light" },
  NeogitCommandCodeError = { "red_flame" },
  -- Commit select
  NeogitFloatHeader = { "red_glowing" },
  NeogitFloatHeaderHighlight = { "red_glowing", { bold = true } },
}

return M
