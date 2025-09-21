-- -- ~/.config/nvim/lua/colors/subliminal.lua (or in your GitHub repo)
--
-- -- Prevent the theme from being loaded multiple times
-- if vim.g.colors_name then
-- 	vim.cmd.highlight("clear")
-- end
--
-- vim.g.colors_name = "subliminal"
-- vim.o.termguicolors = true
--
-- -- 1. Define the Color Palette ---------------------------------------------
--
-- local colors = {
-- 	bg = "#282c35",
-- 	fg = "#d4d4d4",
-- 	selection_bg = "#484e5b",
-- 	cursor_line_bg = "#323641",
--
-- 	grey = "#7f7f7f",
-- 	red = "#e15a60",
-- 	green = "#a9cfa4",
-- 	yellow = "#ffe2a9",
-- 	blue = "#6699cc",
-- 	magenta = "#f1a5ab",
-- 	cyan = "#5fb3b3",
-- 	white = "#d4d4d4",
--
-- 	error = "#e15a60",
-- 	warn = "#ffe2a9",
-- 	info = "#6699cc",
-- 	hint = "#a9cfa4",
-- }
--
-- -- 2. Helper function for setting highlight groups -------------------------
--
-- local function hi(group, opts)
-- 	vim.api.nvim_set_hl(0, group, opts)
-- end
--
-- -- 3. Set the Highlight Groups ---------------------------------------------
--
-- -- Core Editor UI & Basic Syntax (sections combined for brevity)
-- hi("Normal", { fg = colors.fg, bg = colors.bg })
-- hi("Comment", { fg = colors.grey, italic = true })
-- hi("Keyword", { fg = colors.blue })
-- hi("Statement", { fg = colors.blue })
-- hi("Function", { fg = colors.yellow })
-- hi("String", { fg = colors.green })
-- hi("Number", { fg = colors.magenta })
-- hi("Boolean", { fg = colors.magenta, bold = true })
-- hi("Type", { fg = colors.cyan })
-- hi("Constant", { fg = colors.magenta })
-- hi("Identifier", { fg = colors.fg })
-- hi("Operator", { fg = colors.fg })
-- hi("PreProc", { fg = colors.cyan })
-- hi("Error", { fg = colors.red, bg = colors.bg })
-- hi("Todo", { fg = colors.bg, bg = colors.yellow, bold = true })
--
-- -- UI Elements
-- hi("Cursor", { bg = "#c7c7c7", fg = "#000000" })
-- hi("CursorLine", { bg = colors.cursor_line_bg })
-- hi("CursorLineNr", { fg = colors.yellow, bg = colors.cursor_line_bg, bold = true })
-- hi("Visual", { bg = colors.selection_bg })
-- hi("Search", { bg = colors.yellow, fg = colors.bg, bold = true })
-- hi("LineNr", { fg = colors.grey })
-- hi("StatusLine", { fg = colors.fg, bg = colors.selection_bg })
-- hi("StatusLineNC", { fg = colors.grey, bg = colors.bg })
-- hi("VertSplit", { fg = colors.selection_bg, bg = colors.bg })
-- hi("Pmenu", { fg = colors.fg, bg = colors.selection_bg })
-- hi("PmenuSel", { fg = colors.bg, bg = colors.blue })
--
-- -- Diffs
-- hi("DiffAdd", { bg = "#3d5245" })
-- hi("DiffChange", { bg = "#2f4b69" })
-- hi("DiffDelete", { bg = "#634049" })
--
-- -- LSP Diagnostics
-- hi("DiagnosticError", { fg = colors.error })
-- hi("DiagnosticWarn", { fg = colors.warn })
-- hi("DiagnosticInfo", { fg = colors.info })
-- hi("DiagnosticHint", { fg = colors.hint })
-- hi("DiagnosticUnderlineError", { undercurl = true, sp = colors.error })
-- hi("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warn })
-- hi("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
-- hi("DiagnosticUnderlineHint", { undercurl = true, sp = colors.hint })
--
-- -- Tree-sitter Groups (NEW SECTION) ---------------------------------------
-- -- This is where we set the TEXT COLOR for properties
-- hi("@property", { fg = colors.cyan })
-- hi("@field", { link = "@property" }) -- Link @field to @property for consistency in other languages
--
-- -- Plugin Support (abbreviated) ---------------------------------------------
-- hi("NvimTreeRootFolder", { fg = colors.yellow, bold = true })
-- hi("TelescopeBorder", { fg = colors.blue })
-- hi("GitSignsAdd", { fg = colors.green })
-- hi("GitSignsChange", { fg = colors.blue })
-- hi("GitSignsDelete", { fg = colors.red })
--
-- -- 4. Terminal Colors -----------------------------------------------------
-- vim.g.terminal_color_0 = "#7f7f7f" -- black
-- -- ... (rest of terminal colors are the same)
-- vim.g.terminal_color_1 = "#e15a60"
-- vim.g.terminal_color_2 = "#a9cfa4"
-- vim.g.terminal_color_3 = "#ffe2a9"
-- vim.g.terminal_color_4 = "#6699cc"
-- vim.g.terminal_color_5 = "#f1a5ab"
-- vim.g.terminal_color_6 = "#5fb3b3"
-- vim.g.terminal_color_7 = "#d4d4d4"
-- vim.g.terminal_color_8 = "#7f7f7f"
-- vim.g.terminal_color_9 = "#e15a60"
-- vim.g.terminal_color_10 = "#a9cfa4"
-- vim.g.terminal_color_11 = "#ffe2a9"
-- vim.g.terminal_color_12 = "#6699cc"
-- vim.g.terminal_color_13 = "#f1a5ab"
-- vim.g.terminal_color_14 = "#5fb3b3"
-- vim.g.terminal_color_15 = "#d4d4d4"
-- -- Dark Pro Neovim Theme
-- -- A professional dark colorscheme with vibrant syntax highlighting
--
-- local M = {}
--
-- -- Color palette
-- local colors = {
-- 	-- User provided colors - enhanced for vibrancy
-- 	peach = "#FFE5C7", -- Brighter peachy beige
-- 	light_blue = "#C7E5FF", -- Brighter light blue
-- 	mint = "#C7FFF7", -- Brighter mint
-- 	blue_gray = "#5A7A9A", -- More vibrant blue-gray
--
-- 	-- Much darker backgrounds
-- 	bg = "#0d1117", -- Very dark background
-- 	bg_light = "#161b22", -- Slightly lighter background
-- 	bg_lighter = "#21262d", -- Even lighter for selections
-- 	fg = "#f0f6fc", -- Bright white foreground
-- 	fg_dim = "#8b949e", -- Dimmed text
--
-- 	-- Vibrant variants
-- 	peach_bright = "#FFD4A3",
-- 	blue_bright = "#A3D4FF",
-- 	mint_bright = "#A3FFE8",
--
-- 	-- More vibrant status and UI colors
-- 	gray = "#7d8590",
-- 	dark_gray = "#30363d",
-- 	red = "#FF6B6B", -- Bright red
-- 	orange = "#FF9F43", -- Vibrant orange
-- 	green = "#4ECDC4", -- Bright teal-green
-- 	purple = "#A29BFE", -- Vibrant purple
-- 	yellow = "#FDCB6E", -- Bright yellow
-- 	pink = "#FD79A8", -- Vibrant pink
-- 	cyan = "#00CEC9", -- Bright cyan
-- }
--
-- -- Helper function to set highlight groups
-- local function hl(group, opts)
-- 	vim.api.nvim_set_hl(0, group, opts)
-- end

function M.setup()
	-- Clear existing highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.background = "dark"
	vim.g.colors_name = "dark_pro"

	-- Editor highlights
	hl("Normal", { fg = colors.fg, bg = colors.bg })
	hl("NormalFloat", { fg = colors.fg, bg = colors.bg_light })
	hl("FloatBorder", { fg = colors.blue_gray, bg = colors.bg_light })
	hl("Cursor", { fg = colors.bg, bg = colors.amber })
	hl("CursorLine", { bg = colors.bg_light })
	hl("CursorColumn", { bg = colors.bg_light })
	hl("LineNr", { fg = colors.gray })
	hl("CursorLineNr", { fg = colors.amber, bold = true })
	hl("SignColumn", { fg = colors.gray, bg = colors.bg })
	hl("Folded", { fg = colors.fg_dim, bg = colors.bg_light })
	hl("FoldColumn", { fg = colors.gray, bg = colors.bg })
	hl("ColorColumn", { bg = colors.bg_light })
	hl("VertSplit", { fg = colors.dark_gray })
	hl("WinSeparator", { fg = colors.dark_gray })

	-- Selection and search
	hl("Visual", { bg = colors.bg_lighter })
	hl("VisualNOS", { bg = colors.bg_lighter })
	hl("Search", { fg = colors.bg, bg = colors.mint, bold = true })
	hl("IncSearch", { fg = colors.bg, bg = colors.amber, bold = true })
	hl("Substitute", { fg = colors.bg, bg = colors.teal, bold = true })

	-- Popup menu
	hl("Pmenu", { fg = colors.fg, bg = colors.bg_light })
	hl("PmenuSel", { fg = colors.bg, bg = colors.teal, bold = true })
	hl("PmenuSbar", { bg = colors.bg_lighter })
	hl("PmenuThumb", { bg = colors.blue })

	-- Statusline
	hl("StatusLine", { fg = colors.fg, bg = colors.bg_light })
	hl("StatusLineNC", { fg = colors.gray, bg = colors.bg_light })
	hl("WildMenu", { fg = colors.bg, bg = colors.cyan, bold = true })

	-- Tabline
	hl("TabLine", { fg = colors.fg_dim, bg = colors.bg_light })
	hl("TabLineFill", { bg = colors.bg_light })
	hl("TabLineSel", { fg = colors.amber, bg = colors.bg, bold = true })

	-- Messages and errors
	hl("ErrorMsg", { fg = colors.red, bold = true })
	hl("WarningMsg", { fg = colors.orange, bold = true })
	hl("ModeMsg", { fg = colors.cyan, bold = true })
	hl("MoreMsg", { fg = colors.blue, bold = true })
	hl("Question", { fg = colors.mint, bold = true })

	-- Syntax highlighting
	hl("Comment", { fg = colors.gray, italic = true })
	hl("Todo", { fg = colors.pink, bg = colors.bg_light, bold = true })

	-- Constants
	hl("Constant", { fg = colors.orange, bold = true })
	hl("String", { fg = colors.peach })
	hl("Character", { fg = colors.peach })
	hl("Number", { fg = colors.orange, bold = true })
	hl("Boolean", { fg = colors.purple, bold = true })
	hl("Float", { fg = colors.orange, bold = true })

	-- Identifiers
	hl("Identifier", { fg = colors.blue })
	hl("Function", { fg = colors.amber, bold = true })

	-- Statements
	hl("Statement", { fg = colors.blue, bold = true })
	hl("Conditional", { fg = colors.purple, bold = true })
	hl("Repeat", { fg = colors.purple, bold = true })
	hl("Label", { fg = colors.blue })
	hl("Operator", { fg = colors.cyan, bold = true })
	hl("Keyword", { fg = colors.blue, bold = true })
	hl("Exception", { fg = colors.red, bold = true })

	-- Preprocessor
	hl("PreProc", { fg = colors.purple, bold = true })
	hl("Include", { fg = colors.pink, bold = true })
	hl("Define", { fg = colors.red, bold = true })
	hl("Macro", { fg = colors.red, bold = true })
	hl("PreCondit", { fg = colors.purple })

	-- Types (Classes)
	hl("Type", { fg = colors.teal, bold = true })
	hl("StorageClass", { fg = colors.teal })
	hl("Structure", { fg = colors.teal, bold = true })
	hl("Typedef", { fg = colors.teal })

	-- Special
	hl("Special", { fg = colors.mint, bold = true })
	hl("SpecialChar", { fg = colors.mint, bold = true })
	hl("Tag", { fg = colors.cyan, bold = true })
	hl("Delimiter", { fg = colors.fg })
	hl("SpecialComment", { fg = colors.cyan, italic = true })
	hl("Debug", { fg = colors.red, bold = true })

	-- Underlined and errors
	hl("Underlined", { fg = colors.blue, underline = true })
	hl("Error", { fg = colors.red, bg = colors.bg_light, bold = true })

	-- Diff
	hl("DiffAdd", { fg = colors.green, bg = colors.bg_light })
	hl("DiffChange", { fg = colors.yellow, bg = colors.bg_light })
	hl("DiffDelete", { fg = colors.red, bg = colors.bg_light })
	hl("DiffText", { fg = colors.orange, bg = colors.bg_light, bold = true })

	-- Git signs (if using gitsigns.nvim)
	hl("GitSignsAdd", { fg = colors.green })
	hl("GitSignsChange", { fg = colors.yellow })
	hl("GitSignsDelete", { fg = colors.red })

	-- Telescope (if using telescope.nvim)
	hl("TelescopeNormal", { fg = colors.fg, bg = colors.bg_light })
	hl("TelescopeBorder", { fg = colors.blue, bg = colors.bg_light })
	hl("TelescopePromptBorder", { fg = colors.amber, bg = colors.bg_light })
	hl("TelescopeResultsBorder", { fg = colors.mint, bg = colors.bg_light })
	hl("TelescopePreviewBorder", { fg = colors.teal, bg = colors.bg_light })
	hl("TelescopeSelection", { bg = colors.bg_lighter })
	hl("TelescopeMatching", { fg = colors.amber, bold = true })

	-- LSP
	hl("DiagnosticError", { fg = colors.red })
	hl("DiagnosticWarn", { fg = colors.orange })
	hl("DiagnosticInfo", { fg = colors.blue })
	hl("DiagnosticHint", { fg = colors.mint })
	hl("DiagnosticUnderlineError", { sp = colors.red, underline = true })
	hl("DiagnosticUnderlineWarn", { sp = colors.orange, underline = true })
	hl("DiagnosticUnderlineInfo", { sp = colors.blue, underline = true })
	hl("DiagnosticUnderlineHint", { sp = colors.mint, underline = true })

	-- LSP References
	hl("LspReferenceText", { bg = colors.bg_lighter })
	hl("LspReferenceRead", { bg = colors.bg_lighter })
	hl("LspReferenceWrite", { bg = colors.bg_lighter })

	-- Tree-sitter
	hl("@variable", { fg = colors.fg })
	hl("@variable.builtin", { fg = colors.blue, bold = true })
	hl("@function", { fg = colors.amber, bold = true })
	hl("@function.builtin", { fg = colors.amber, bold = true })
	hl("@method", { fg = colors.amber, bold = true })
	hl("@keyword", { fg = colors.blue, bold = true })
	hl("@keyword.function", { fg = colors.purple, bold = true })
	hl("@keyword.return", { fg = colors.pink, bold = true })
	hl("@type", { fg = colors.teal, bold = true })
	hl("@type.builtin", { fg = colors.teal })
	hl("@string", { fg = colors.peach })
	hl("@string.escape", { fg = colors.cyan, bold = true })
	hl("@number", { fg = colors.orange, bold = true })
	hl("@boolean", { fg = colors.purple, bold = true })
	hl("@constant", { fg = colors.orange, bold = true })
	hl("@constant.builtin", { fg = colors.orange, bold = true })
	hl("@constructor", { fg = colors.teal, bold = true })
	hl("@parameter", { fg = colors.fg, italic = true })
	hl("@property", { fg = colors.mint, bold = true })
	hl("@field", { fg = colors.mint })
	hl("@namespace", { fg = colors.purple, bold = true })
	hl("@tag", { fg = colors.blue, bold = true })
	hl("@tag.attribute", { fg = colors.mint })
	hl("@tag.delimiter", { fg = colors.cyan })
	hl("@attribute", { fg = colors.red, bold = true })
	hl("@decorator", { fg = colors.red, bold = true })

	-- Nvim-tree (if using nvim-tree.lua)
	hl("NvimTreeNormal", { fg = colors.fg, bg = colors.bg_light })
	hl("NvimTreeFolderIcon", { fg = colors.blue })
	hl("NvimTreeFolderName", { fg = colors.blue })
	hl("NvimTreeOpenedFolderName", { fg = colors.teal, bold = true })
	hl("NvimTreeFileIcon", { fg = colors.fg_dim })
	hl("NvimTreeFileName", { fg = colors.fg })
	hl("NvimTreeSpecialFile", { fg = colors.amber, bold = true })
	hl("NvimTreeGitDirty", { fg = colors.orange })
	hl("NvimTreeGitNew", { fg = colors.green })
	hl("NvimTreeGitDeleted", { fg = colors.red })
end

return M
