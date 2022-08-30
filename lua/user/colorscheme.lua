function GruvboxColorTweaks()
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
        bg = "None"
    })

    hl("Normal", {
        bg = "none"
    })

    hl("LineNr", {
        fg = "#5eacd3"
    })

    hl("netrwDir", {
        fg = "#5eacd3"
    })

end

--local colorscheme = "darkplus"
local colorscheme = "gruvbox"

if colorscheme == "gruvbox" then
  vim.g.gruvbox_contrast_dark = "hard"
end

if colorscheme == "gruvbox-baby" then
  vim.g.gruvbox_baby_telescope_theme = true
  vim.g.gruvbox_baby_transparent_mode = true
  GruvboxColorTweaks()
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
