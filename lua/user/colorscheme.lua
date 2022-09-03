--local colorscheme = "darkplus"
local colorscheme = "gruvbox-baby"
--local colorscheme = "tokyonight"

if colorscheme == "gruvbox" then
	vim.g.gruvbox_contrast_dark = "hard"
elseif colorscheme == "gruvbox-baby" then
	vim.g.gruvbox_baby_background_color = "dark"
	vim.g.gruvbox_baby_telescope_theme = true
elseif colorscheme == "tokyonight" then
	vim.g.tokyonight_style = "night"
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
