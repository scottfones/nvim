--local colorscheme = "darkplus"
--[[ local colorscheme = "gruvbox" ]]
local colorscheme = "gruvbox-baby"
--[[ local colorscheme = "tokyonight" ]]

if colorscheme == "gruvbox" then
	vim.g.gruvbox_contrast_dark = "hard"
  vim.g.gruvbox_invert_indent_guides = "true"
elseif colorscheme == "gruvbox-baby" then
	vim.g.gruvbox_baby_background_color = "dark"
	vim.g.gruvbox_baby_telescope_theme = true
elseif colorscheme == "tokyonight" then
	require("tokyonight").setup({
		style = "storm",
		styles = {
			sidebars = "transparent",
		},
    dim_inactive = false,
    transparent = true,
	})
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
