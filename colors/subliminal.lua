-- ~/.config/nvim/lua/colors/subliminal.lua

-- Prevent the theme from being loaded multiple times
if vim.g.colors_name then
  vim.cmd.highlight('clear')
end

vim.g.colors_name = 'subliminal'
vim.o.termguicolors = true

--[[
  Subliminal Theme
  Author: Gemini
  Based on the palette provided by the user.
]]

-- 1. Define the Color Palette ---------------------------------------------

local colors = {
  bg = '#282c35',
  fg = '#d4d4d4',
  selection_bg = '#484e5b',
  cursor_line_bg = '#323641', -- A slightly lighter version of bg for visibility

  grey = '#7f7f7f',
  red = '#e15a60',
  green = '#a9cfa4',
  yellow = '#ffe2a9',
  blue = '#6699cc',
  magenta = '#f1a5ab',
  cyan = '#5fb3b3',
  white = '#d4d4d4', -- Same as fg

  -- Diagnostic colors
  error = '#e15a60',
  warn = '#ffe2a9',
  info = '#6699cc',
  hint = '#a9cfa4',
}

-- 2. Helper function for setting highlight groups -------------------------

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- 3. Set the Highlight Groups ---------------------------------------------

-- Core Editor UI
hi('Normal', { fg = colors.fg, bg = colors.bg })
hi('NormalFloat', { fg = colors.fg, bg = colors.selection_bg }) -- For floating windows
hi('SignColumn', { fg = colors.grey, bg = colors.bg })
hi('MsgArea', { fg = colors.fg })
hi('ModeMsg', { fg = colors.fg, bold = true })
hi('MoreMsg', { fg = colors.blue })
hi('Question', { fg = colors.cyan, bold = true })

-- Cursor and Selection
hi('Cursor', { bg = '#c7c7c7', fg = '#000000' })
hi('CursorLine', { bg = colors.cursor_line_bg })
hi('CursorLineNr', { fg = colors.yellow, bg = colors.cursor_line_bg, bold = true })
hi('Visual', { bg = colors.selection_bg })
hi('VisualNOS', { bg = colors.selection_bg })
hi('Search', { bg = colors.yellow, fg = colors.bg, bold = true })
hi('IncSearch', { bg = colors.blue, fg = colors.bg, bold = true })

-- Line Numbers and Splits
hi('LineNr', { fg = colors.grey })
hi('Folded', { fg = colors.grey, bg = colors.selection_bg })
hi('VertSplit', { fg = colors.selection_bg, bg = colors.bg })
hi('StatusLine', { fg = colors.fg, bg = colors.selection_bg })
hi('StatusLineNC', { fg = colors.grey, bg = colors.bg }) -- Non-current window statusline

-- Basic Syntax
hi('Comment', { fg = colors.grey, italic = true })
hi('Constant', { fg = colors.magenta })
hi('String', { fg = colors.green })
hi('Character', { fg = colors.green })
hi('Number', { fg = colors.magenta })
hi('Boolean', { fg = colors.magenta, bold = true })
hi('Float', { fg = colors.magenta })

hi('Identifier', { fg = colors.white })
hi('Function', { fg = colors.yellow })

hi('Statement', { fg = colors.blue })
hi('Conditional', { fg = colors.blue, bold = true })
hi('Repeat', { fg = colors.blue, bold = true })
hi('Label', { fg = colors.cyan })
hi('Operator', { fg = colors.white })
hi('Keyword', { fg = colors.blue })
hi('Exception', { fg = colors.red, bold = true })

hi('PreProc', { fg = colors.cyan })
hi('Include', { fg = colors.cyan })
hi('Define', { fg = colors.cyan })
hi('Macro', { fg = colors.cyan })

hi('Type', { fg = colors.cyan })
hi('StorageClass', { fg = colors.cyan, italic = true })
hi('Structure', { fg = colors.cyan })
hi('Typedef', { fg = colors.cyan })

hi('Special', { fg = colors.magenta })
hi('SpecialComment', { fg = colors.grey, italic = true })
hi('Tag', { fg = colors.blue })
hi('Delimiter', { fg = colors.white })

hi('Todo', { fg = colors.bg, bg = colors.yellow, bold = true })
hi('Error', { fg = colors.red, bg = colors.bg })
hi('Underlined', { underline = true })
hi('Title', { fg = colors.yellow, bold = true })

-- Pop-up Menu (Completion)
hi('Pmenu', { fg = colors.fg, bg = colors.selection_bg })
hi('PmenuSel', { fg = colors.bg, bg = colors.blue })
hi('PmenuSbar', { bg = colors.cursor_line_bg })
hi('PmenuThumb', { bg = colors.grey })

-- Diffs
hi('DiffAdd', { bg = '#3d5245' })
hi('DiffChange', { bg = '#2f4b69' })
hi('DiffDelete', { bg = '#634049' })
hi('DiffText', { bg = '#396b9f' })

-- LSP Diagnostics
hi('DiagnosticError', { fg = colors.error })
hi('DiagnosticWarn', { fg = colors.warn })
hi('DiagnosticInfo', { fg = colors.info })
hi('DiagnosticHint', { fg = colors.hint })
hi('DiagnosticUnderlineError', { undercurl = true, sp = colors.error })
hi('DiagnosticUnderlineWarn', { undercurl = true, sp = colors.warn })
hi('DiagnosticUnderlineInfo', { undercurl = true, sp = colors.info })
hi('DiagnosticUnderlineHint', { undercurl = true, sp = colors.hint })

-- Plugin Support -----------------------------------------------------------

-- Nvim-Tree
hi('NvimTreeRootFolder', { fg = colors.yellow, bold = true })
hi('NvimTreeGitNew', { fg = colors.green })
hi('NvimTreeGitModified', { fg = colors.blue })
hi('NvimTreeGitDeleted', { fg = colors.red })
hi('NvimTreeSymlink', { fg = colors.cyan })

-- Telescope
hi('TelescopeBorder', { fg = colors.blue })
hi('TelescopePromptBorder', { fg = colors.blue })
hi('TelescopeResultsBorder', { fg = colors.blue })
hi('TelescopePreviewBorder', { fg = colors.blue })
hi('TelescopeTitle', { fg = colors.bg, bg = colors.blue })
hi('TelescopePromptTitle', { fg = colors.bg, bg = colors.red })

-- Gitsigns
hi('GitSignsAdd', { fg = colors.green })
hi('GitSignsChange', { fg = colors.blue })
hi('GitSignsDelete', { fg = colors.red })

-- WhichKey
hi('WhichKey', { fg = colors.cyan })
hi('WhichKeyGroup', { fg = colors.blue })
hi('WhichKeyDesc', { fg = colors.magenta })

-- Indent Blankline
hi('IndentBlanklineChar', { fg = colors.selection_bg })
hi('IndentBlanklineContextChar', { fg = colors.blue })

-- 4. Terminal Colors -----------------------------------------------------
-- These should match your palette.

vim.g.terminal_color_0 = '#7f7f7f' -- black
vim.g.terminal_color_1 = '#e15a60' -- red
vim.g.terminal_color_2 = '#a9cfa4' -- green
vim.g.terminal_color_3 = '#ffe2a9' -- yellow
vim.g.terminal_color_4 = '#6699cc' -- blue
vim.g.terminal_color_5 = '#f1a5ab' -- magenta
vim.g.terminal_color_6 = '#5fb3b3' -- cyan
vim.g.terminal_color_7 = '#d4d4d4' -- white

vim.g.terminal_color_8 = '#7f7f7f'  -- bright black
vim.g.terminal_color_9 = '#e15a60'  -- bright red
vim.g.terminal_color_10 = '#a9cfa4' -- bright green
vim.g.terminal_color_11 = '#ffe2a9' -- bright yellow
vim.g.terminal_color_12 = '#6699cc' -- bright blue
vim.g.terminal_color_13 = '#f1a5ab' -- bright magenta
vim.g.terminal_color_14 = '#5fb3b3' -- bright cyan
vim.g.terminal_color_15 = '#d4d4d4' -- bright white
