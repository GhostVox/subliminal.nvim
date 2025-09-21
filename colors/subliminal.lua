-- Subliminal Neovim Theme
-- A professional dark charcoal colorscheme with vibrant syntax highlighting

-- Clear existing highlights
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "subliminal"

-- Color palette
local colors = {
	-- Core syntax colors
	slate_blue = "#6A5ACD", -- FUNCTIONS - slate blue
	peach = "#FFD4A3", -- STRINGS - warm peach
	teal = "#4DB6AC", -- CLASSES/TYPES - professional teal
	mint = "#1DE9B6", -- PROPERTIES - bright mint
	red = "#FF5722", -- DERIVE BLOCKS - vibrant red

	-- Dark charcoal backgrounds
	bg = "#1E1E1E", -- Dark charcoal background
	bg_light = "#2A2A2A", -- Slightly lighter charcoal
	bg_lighter = "#353535", -- Even lighter for selections
	fg = "#f0f6fc", -- Bright white foreground
	fg_dim = "#8b949e", -- Dimmed text

	-- Additional accent colors
	blue = "#58A6FF", -- For keywords and built-ins
	purple = "#BC8CFF", -- For conditionals and control flow
	orange = "#FF8C42", -- For numbers and constants
	yellow = "#F7DF1E", -- For special highlighting

	-- UI colors
	gray = "#7d8590",
	dark_gray = "#404040",
	green = "#56D364", -- For success/git additions
	pink = "#FF69B4", -- For includes and special keywords
	cyan = "#39D0D6", -- For operators
}

-- Helper function to set highlight groups
local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Editor highlights
hl("Normal", { fg = colors.fg, bg = colors.bg })
hl("NormalFloat", { fg = colors.fg, bg = colors.bg_light })
hl("FloatBorder", { fg = colors.blue, bg = colors.bg_light })
hl("Cursor", { fg = colors.bg, bg = colors.slate_blue })
hl("CursorLine", { bg = colors.bg_light })
hl("CursorColumn", { bg = colors.bg_light })
hl("LineNr", { fg = colors.gray })
hl("CursorLineNr", { fg = colors.slate_blue, bold = true })
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
hl("IncSearch", { fg = colors.bg, bg = colors.slate_blue, bold = true })
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
hl("TabLineSel", { fg = colors.slate_blue, bg = colors.bg, bold = true })

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
hl("Function", { fg = colors.slate_blue, bold = true })

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
hl("TelescopePromptBorder", { fg = colors.slate_blue, bg = colors.bg_light })
hl("TelescopeResultsBorder", { fg = colors.mint, bg = colors.bg_light })
hl("TelescopePreviewBorder", { fg = colors.teal, bg = colors.bg_light })
hl("TelescopeSelection", { bg = colors.bg_lighter })
hl("TelescopeMatching", { fg = colors.slate_blue, bold = true })

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
hl("NvimTreeSpecialFile", { fg = colors.slate_blue, bold = true })
hl("NvimTreeGitDirty", { fg = colors.orange })
hl("NvimTreeGitNew", { fg = colors.green })
hl("NvimTreeGitDeleted", { fg = colors.red })
