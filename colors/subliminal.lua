-- Subliminal Neovim Theme
-- A professional dark colorscheme with vibrant syntax highlighting

-- Color palette
local colors = {
	-- Backgrounds (keep these, they're good)
	bg = "#0d1117",
	bg_light = "#161b22",
	bg_lighter = "#21262d",

	-- Foregrounds
	fg = "#f0f6fc",
	fg_dim = "#8b949e",
	gray = "#7d8590",
	dark_gray = "#30363d",

	-- Warm spectrum (peach → amber → orange → red)
	peach = "#FFD9B3", -- strings
	amber = "#F5906A", -- functions, cursors
	orange = "#FF9F43", -- numbers, constants
	red = "#FF6B6B", -- errors, macros
	pink = "#F77FBE", -- keywords.return, includes

	-- Cool spectrum (mint → cyan → slate → purple)
	mint = "#A8FFDD", -- hints, properties
	cyan = "#4EC9B0", -- operators, specials
	blue = "#8BAFC7", -- keywords, identifiers  (slate-blue)
	blue_gray = "#4D6A80", -- borders, UI accents    (darker slate)
	purple = "#B39DFB", -- conditionals, booleans

	teal = "#4EC9B0", -- types (alias for cyan)
	-- True green and yellow (distinct from the cool spectrum)
	green = "#7EE787", -- git add, diff add
	yellow = "#FDCB6E", -- warnings, diff change

	-- Aliases for readability
	teal = "#4EC9B0", -- types (same as cyan, one less name to juggle)
}

-- Helper function to set highlight groups
local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Clear existing highlights
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "subliminal"

-- Editor
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

-- Syntax
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

-- Types
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

-- Misc
hl("Underlined", { fg = colors.blue, underline = true })
hl("Error", { fg = colors.red, bg = colors.bg_light, bold = true })

-- Diff
hl("DiffAdd", { fg = colors.green, bg = colors.bg_light })
hl("DiffChange", { fg = colors.yellow, bg = colors.bg_light })
hl("DiffDelete", { fg = colors.red, bg = colors.bg_light })
hl("DiffText", { fg = colors.orange, bg = colors.bg_light, bold = true })

-- Git signs
hl("GitSignsAdd", { fg = colors.green })
hl("GitSignsChange", { fg = colors.yellow })
hl("GitSignsDelete", { fg = colors.red })

-- Telescope
hl("TelescopeNormal", { fg = colors.fg, bg = colors.bg_light })
hl("TelescopeBorder", { fg = colors.blue, bg = colors.bg_light })
hl("TelescopePromptBorder", { fg = colors.amber, bg = colors.bg_light })
hl("TelescopeResultsBorder", { fg = colors.mint, bg = colors.bg_light })
hl("TelescopePreviewBorder", { fg = colors.teal, bg = colors.bg_light })
hl("TelescopeSelection", { bg = colors.bg_lighter })
hl("TelescopeMatching", { fg = colors.amber, bold = true })

-- LSP Diagnostics
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

-- Treesitter
hl("@variable", { fg = colors.fg })
hl("@variable.builtin", { fg = colors.blue, bold = true })
hl("@function", { fg = colors.amber, bold = true })
hl("@function.builtin", { fg = colors.amber, bold = true })
hl("@method", { fg = colors.amber, bold = true })
hl("@keyword", { fg = colors.blue, bold = true })
hl("@keyword.function", { fg = colors.blue, bold = true })
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

-- Nvim-tree
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
