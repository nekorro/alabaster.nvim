local colors
if vim.o.background == "dark" then
    -- Kanagawa Paper Ink theme colors
    colors = {
        color1 = "#181820",         -- sumiInk1 (statusline bg)
        color2 = "#c4b28a",         -- dragonYellow (active)
        color3 = "#DCD7BA",         -- fujiWhite (fg)
        color4 = "#9e9b93",         -- dragonGray2 (inactive)
        color5 = "#2A2A37",         -- sumiInk4 (normal bg)
        color6 = "#a292a3",         -- dragonPink (visual)
    }
else
    -- Kanagawa Paper Canvas theme colors
    colors = {
        color1 = "#d1cfc5",         -- canvasWhite2 (statusline bg)
        color2 = "#cc6d00",         -- lotusOrange (active)
        color3 = "#575e60",         -- darker fg
        color4 = "#8e8a80",         -- canvasGray2 (inactive)
        color5 = "#e6e6e3",         -- canvasWhite5 (normal bg)
        color6 = "#9e7e98",         -- canvasPink1 (visual)
    }
end

return {
    replace = {
        a = { fg = colors.color1, bg = colors.color2, gui = "bold" },
        b = { fg = colors.color3, bg = colors.color1 },
    },
    inactive = {
        a = { fg = colors.color4, bg = colors.color1, gui = "bold" },
        b = { fg = colors.color4, bg = colors.color1 },
        c = { fg = colors.color4, bg = colors.color1 },
    },
    normal = {
        a = { fg = colors.color3, bg = colors.color5, gui = "bold" },
        b = { fg = colors.color3, bg = colors.color1 },
        c = { fg = colors.color3, bg = colors.color1 },
    },
    visual = {
        a = { fg = colors.color1, bg = colors.color6, gui = "bold" },
        b = { fg = colors.color3, bg = colors.color1 },
    },
    insert = {
        a = { fg = colors.color1, bg = colors.color3, gui = "bold" },
        b = { fg = colors.color3, bg = colors.color1 },
    },
}
