local enable_transparency = false

local hl = function(thing, opts)
	vim.api.nvim_set_hl(0, thing, opts)
end

function GruvboxBabyColorTweaks()
	hl("BufferLineBufferSelected", {
		bold = true,
		fg = "#FF4F00",
		italic = true,
	})

	-- BufferLineBufferVisible xxx cterm= gui= guifg=#665c54 guibg=#1a1d1e
	hl("BufferLineBufferVisible", {
		bold = true,
		fg = "#877d75",
	})

	-- BufferLineBackground xxx cterm= gui= guifg=#665c54 guibg=#151818
	hl("BufferLineBackground", {
		bold = true,
		fg = "#877d75",
	})

	hl("SignColumn", {
		bg = "none",
	})

	hl("ColorColumn", {
		ctermbg = 0,
		bg = "#555555",
	})

	hl("CursorLineNR", {
		bg = "None",
	})

	hl("LineNr", {
		fg = "#5eacd3",
	})

	hl("netrwDir", {
		fg = "#5eacd3",
	})
end

function TokyoColorTweaks()
	hl("LineNr", {
		bg = "None",
		fg = "#5eacd3",
	})
end

function TransparencyColorTweaks()
	--	hl("BufferLineBackground", {
	--	fg = "#7a7c9e",
	--})

	hl("BufferLineFill", {
		bg = "None",
	})

	hl("Normal", {
		bg = "None",
	})

	hl("NvimTreeNormal", {
		bg = "None",
	})

	hl("NvimTreeNormalNC", {
		bg = "None",
	})
end

local color_tweaks = {
	["gruvbox-baby"] = GruvboxBabyColorTweaks,
	["tokyonight"] = TokyoColorTweaks,
}

if enable_transparency then
	TransparencyColorTweaks()
end

color_tweaks[vim.g.colors_name]()
