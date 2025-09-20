-- ~/.config/nvim/lua/colors/subliminal.lua (or in your GitHub repo)

-- Prevent the theme from being loaded multiple times
if vim.g.colors_name then
	vim.cmd.highlight("clear")
end

vim.g.colors_name = "subliminal"
vim.o.termguicolors = true

-- 1. Define the Color Palette ---------------------------------------------

local colors = {
	bg = "#282c35",
	fg = "#d4d4d4",
	selection_bg = "#484e5b",
	cursor_line_bg = "#323641",

	grey = "#7f7f7f",
	red = "#e15a60",
	green = "#a9cfa4",
	yellow = "#ffe2a9",
	blue = "#6699cc",
	magenta = "#f1a5ab",
	cyan = "#5fb3b3",
	white = "#d4d4d4",

	error = "#e15a60",
	warn = "#ffe2a9",
	info = "#6699cc",
	hint = "#a9cfa4",
}

-- 2. Helper function for setting highlight groups -------------------------

local function hi(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- 3. Set the Highlight Groups ---------------------------------------------

-- Core Editor UI & Basic Syntax (sections combined for brevity)
hi("Normal", { fg = colors.fg, bg = colors.bg })
hi("Comment", { fg = colors.grey, italic = true })
hi("Keyword", { fg = colors.blue })
hi("Statement", { fg = colors.blue })
hi("Function", { fg = colors.yellow })
hi("String", { fg = colors.green })
hi("Number", { fg = colors.magenta })
hi("Boolean", { fg = colors.magenta, bold = true })
hi("Type", { fg = colors.cyan })
hi("Constant", { fg = colors.magenta })
hi("Identifier", { fg = colors.fg })
hi("Operator", { fg = colors.fg })
hi("PreProc", { fg = colors.cyan })
hi("Error", { fg = colors.red, bg = colors.bg })
hi("Todo", { fg = colors.bg, bg = colors.yellow, bold = true })

-- UI Elements
hi("Cursor", { bg = "#c7c7c7", fg = "#000000" })
hi("CursorLine", { bg = colors.cursor_line_bg })
hi("CursorLineNr", { fg = colors.yellow, bg = colors.cursor_line_bg, bold = true })
hi("Visual", { bg = colors.selection_bg })
hi("Search", { bg = colors.yellow, fg = colors.bg, bold = true })
hi("LineNr", { fg = colors.grey })
hi("StatusLine", { fg = colors.fg, bg = colors.selection_bg })
hi("StatusLineNC", { fg = colors.grey, bg = colors.bg })
hi("VertSplit", { fg = colors.selection_bg, bg = colors.bg })
hi("Pmenu", { fg = colors.fg, bg = colors.selection_bg })
hi("PmenuSel", { fg = colors.bg, bg = colors.blue })

-- Diffs
hi("DiffAdd", { bg = "#3d5245" })
hi("DiffChange", { bg = "#2f4b69" })
hi("DiffDelete", { bg = "#634049" })

-- LSP Diagnostics
hi("DiagnosticError", { fg = colors.error })
hi("DiagnosticWarn", { fg = colors.warn })
hi("DiagnosticInfo", { fg = colors.info })
hi("DiagnosticHint", { fg = colors.hint })
hi("DiagnosticUnderlineError", { undercurl = true, sp = colors.error })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warn })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = colors.hint })

-- Tree-sitter Groups (NEW SECTION) ---------------------------------------
-- This is where we set the TEXT COLOR for properties
hi("@property", { fg = colors.cyan })
hi("@field", { link = "@property" }) -- Link @field to @property for consistency in other languages

-- Plugin Support (abbreviated) ---------------------------------------------
hi("NvimTreeRootFolder", { fg = colors.yellow, bold = true })
hi("TelescopeBorder", { fg = colors.blue })
hi("GitSignsAdd", { fg = colors.green })
hi("GitSignsChange", { fg = colors.blue })
hi("GitSignsDelete", { fg = colors.red })

-- 4. Terminal Colors -----------------------------------------------------
vim.g.terminal_color_0 = "#7f7f7f" -- black
-- ... (rest of terminal colors are the same)
vim.g.terminal_color_1 = "#e15a60"
vim.g.terminal_color_2 = "#a9cfa4"
vim.g.terminal_color_3 = "#ffe2a9"
vim.g.terminal_color_4 = "#6699cc"
vim.g.terminal_color_5 = "#f1a5ab"
vim.g.terminal_color_6 = "#5fb3b3"
vim.g.terminal_color_7 = "#d4d4d4"
vim.g.terminal_color_8 = "#7f7f7f"
vim.g.terminal_color_9 = "#e15a60"
vim.g.terminal_color_10 = "#a9cfa4"
vim.g.terminal_color_11 = "#ffe2a9"
vim.g.terminal_color_12 = "#6699cc"
vim.g.terminal_color_13 = "#f1a5ab"
vim.g.terminal_color_14 = "#5fb3b3"
vim.g.terminal_color_15 = "#d4d4d4"
