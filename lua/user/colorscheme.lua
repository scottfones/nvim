function GruvboxBabyColorTweaks()
	local hl = function(thing, opts)
		vim.api.nvim_set_hl(0, thing, opts)
	end

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

	hl("Normal", {
		bg = "none",
	})

	hl("LineNr", {
		fg = "#5eacd3",
	})

	hl("netrwDir", {
		fg = "#5eacd3",
	})
end

function TokyoColorTweaks()
	vim.api.nvim_set_hl(0, "LineNr", {
		bg = "None",
		fg = "#5eacd3",
	})
end

--local colorscheme = "darkplus"
local colorscheme = "gruvbox-baby"
--local colorscheme = "tokyonight"

if colorscheme == "gruvbox" then
	vim.g.gruvbox_contrast_dark = "hard"
elseif colorscheme == "gruvbox-baby" then
	vim.g.gruvbox_baby_background_color = "dark"
	vim.g.gruvbox_baby_telescope_theme = true
	vim.g.gruvbox_baby_transparent_mode = true
elseif colorscheme == "tokyonight" then
	vim.g.tokyonight_style = "night"
	vim.g.tokyonight_transparent_sidebar = true
	vim.g.tokyonight_transparent = true
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

-- Color tweaks must be after theme setup

local color_tweaks = {
	["gruvbox-baby"] = GruvboxBabyColorTweaks,
	["tokyonight"] = TokyoColorTweaks,
}

color_tweaks[colorscheme]()
