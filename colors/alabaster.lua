vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "alabaster"

local theme
---@diagnostic disable: undefined-global
if vim.o.background == "dark" then
    -- terminal colors (Kanagawa Paper Ink)
    vim.g.terminal_color_0 = "#16161D" -- sumiInk0
    vim.g.terminal_color_1 = "#c4746e" -- dragonRed
    vim.g.terminal_color_2 = "#699469" -- dragonGreen
    vim.g.terminal_color_3 = "#c4b28a" -- dragonYellow
    vim.g.terminal_color_4 = "#435965" -- dragonBlue5
    vim.g.terminal_color_5 = "#a292a3" -- dragonPink
    vim.g.terminal_color_6 = "#8ea49e" -- dragonAqua
    vim.g.terminal_color_7 = "#C8C093" -- oldWhite
    vim.g.terminal_color_8 = "#54546D" -- sumiInk6
    vim.g.terminal_color_9 = "#d7474b" -- dragonRed (brighter)
    vim.g.terminal_color_10 = "#8a9a7b" -- dragonGreen2
    vim.g.terminal_color_11 = "#debb7f" -- dragonYellow (brighter)
    vim.g.terminal_color_12 = "#5d7a88" -- dragonBlue4
    vim.g.terminal_color_13 = "#b8a8b8" -- dragonPink (brighter)
    vim.g.terminal_color_14 = "#a6b8b3" -- dragonAqua (brighter)
    vim.g.terminal_color_15 = "#DCD7BA" -- fujiWhite

    -- colors (Kanagawa Paper Ink theme)
    local bg = "#1F1F28"          -- sumiInk3
    local fg = "#DCD7BA"           -- fujiWhite
    local punct_fg = "#9e9b93"     -- dragonGray2
    local def_fg = "#859fac"       -- dragonBlue2
    local const_fg = "#b6927b"     -- dragonOrange
    local active = "#c4b28a"       -- dragonYellow
    local string_fg = "#8a9a7b"    -- dragonGreen2
    local darker_fg = "#737c73"    -- dragonAsh
    local diffadd = "#699469"      -- dragonGreen
    local diffdelete = "#c4746e"   -- dragonRed
    local diffchange = "#c4b28a"   -- dragonYellow
    local statusline = "#181820"   -- sumiInk1
    local comment = "#727169"      -- fujiGray
    local dim_comment = "#54546D"  -- sumiInk6
    local mistake = {
        fg = "#c4746e",            -- dragonRed
        bg = "#2b2428",            -- darken dragonRed
    }
    local error = "#c4746e"       -- dragonRed
    local warn = "#FF9E3B"        -- roninYellow
    local hint = "#7e9cd8"        -- crystalBlue
    local info = "#76946a"        -- autumnGreen
    local ansi = {
        black = "#54546D",        -- sumiInk6
        blue = "#658594",          -- dragonBlue
        brightyellow = "#c4b28a",  -- dragonYellow
        cyan = "#8ea49e",          -- dragonAqua
        green = "#699469",         -- dragonGreen
        magenta = "#a292a3",       -- dragonPink
        red = "#c4746e",          -- dragonRed
        white = "#C8C093",        -- oldWhite
        yellow = "#b6927b",        -- dragonOrange
    }
    local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
    local pmenu_bg = "#2A2A37"    -- sumiInk4
    local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
    local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = "#54546D" }
        or {
            bg = float_bg,
            fg = float_bg,
        }
    theme = {
        Comment = { fg = comment_fg },
        ColorColumn = { bg = "#2A2A37" }, -- sumiInk4
        Conceal = { fg = "#b4b0a8" },
        Cursor = { bg = active, fg = "#16161D" },
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = "#2A2A37" },
        CursorLine = { bg = "#2A2A37" },
        Directory = { fg = ansi.blue },
        DiffAdd = { bg = "#1d3320", fg = "#76946a" },
        DiffDelete = { bg = "#331e22", fg = "#c34043" },
        DiffText = { fg = "#3d2e08", bg = "#c4b28a" },
        DiffChange = { fg = "#3d2e08", bg = "#c4b28a" },
        EndOfBuffer = { fg = "#363646" }, -- sumiInk5
        -- TermCursor   { }, -- cursor in a focused terminal
        TermCursorNC = { fg = bg, bg = fg },
        ErrorMsg = { fg = error, bg = mistake.bg },
        VertSplit = { fg = "#363646" }, -- sumiInk5
        Folded = { bg = "#2A2A37", fg = "#737c73" }, -- sumiInk4, dragonAsh
        FoldColumn = { bg = bg, fg = "#54546D" },
        SignColumn = {},
        IncSearch = { bg = ansi.brightyellow, fg = bg },
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        LineNr = { fg = "#54546D" }, -- sumiInk6
        CursorLineNr = { fg = ansi.blue, bold = 1 },
        MatchParen = { underline = 1, sp = active },
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = { fg = ansi.green, bold = 1 },
        NonText = { fg = "#54546D" }, -- sumiInk6
        Normal = { bg = bg, fg = fg },
        NormalFloat = { bg = float_bg },
        -- NormalNC     { }, -- normal text in non-current windows
        FloatBorder = floatborder,
        Pmenu = { bg = pmenu_bg },
        PmenuSel = { bg = "#363646" }, -- sumiInk5
        PmenuSbar = { bg = "#1F1F28" },
        PmenuThumb = { bg = "#54546D" },
        Question = { fg = diffadd },
        QuickFixLine = { bg = "#2A2A37" },
        Search = { bg = "#363646" },
        SpecialKey = { fg = ansi.cyan },
        SpellBad = { undercurl = 1, sp = ansi.red },
        SpellCap = { undercurl = 1, sp = ansi.blue },
        SpellLocal = { undercurl = 1, sp = ansi.cyan },
        SpellRare = { undercurl = 1, sp = ansi.magenta },
        StatusLine = { bg = statusline, fg = fg },
        StatusLineNC = { bg = statusline, fg = "#9e9b93" },
        TabLine = { bg = statusline, fg = "#737c73" },
        TabLineFill = { bg = statusline },
        TabLineSel = { bg = statusline, fg = ansi.blue },
        Title = { fg = const_fg },
        Visual = { bg = "#2D4F67" }, -- waveBlue2
        VisualNOS = { bg = "#2D4F67" },
        WarningMsg = { fg = "#e98a00" }, -- lotusOrange2
        WildMenu = { bg = "#363646" },
        WinBar = { bg = bg, fg = ansi.white, bold = true },
        WinBarNC = { bg = bg, fg = "#737c73" },

        --- SYNTAX I: TS groups link to these
        Constant = { fg = const_fg },
        String = { fg = string_fg },
        Character = { fg = const_fg },
        Number = { fg = const_fg },
        Boolean = { fg = const_fg },
        Float = { fg = const_fg },
        Operator = { fg = punct_fg },

        --- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
        Identifier = { fg = ansi.white },
        Function = { fg = def_fg },
        Statement = { fg = ansi.white },
        Conditional = { fg = ansi.white },
        Repeat = { fg = ansi.white },
        Label = { fg = def_fg },
        Keyword = { fg = ansi.white },
        Exception = { fg = ansi.white },
        PreProc = { fg = ansi.white },
        Include = { fg = ansi.white },
        Define = { fg = ansi.white },
        Macro = { fg = ansi.white },
        PreCondit = { fg = ansi.white },
        Type = { fg = ansi.white },
        StorageClass = { fg = ansi.white },
        Structure = { fg = def_fg },
        Typedef = { fg = def_fg },

        Special = { fg = ansi.yellow },
        -- TODO better color than diffchange, try reddish
        -- SpecialChar = { fg = diffchange }, --  special character in a constant
        -- Tag            { }, --    you can use CTRL-] on this
        -- Delimiter      { },
        SpecialComment = { bg = "#223249", fg = ansi.blue },
        debugPc = { bg = "#162845" },
        debugBreakpoint = { bg = "#43242B" }, -- winterRed
        helpHyperTextJump = { fg = ansi.magenta },
        helpSectionDelim = { fg = ansi.magenta },
        helpExample = { fg = ansi.cyan },
        helpCommand = { fg = ansi.cyan },
        helpHeadline = { fg = ansi.blue },
        helpHeader = { fg = ansi.magenta },

        Underlined = { underline = 1 }, -- (preferred) text that stands out, HTML links
        Italic = { italic = 1 },

        -- ("Ignore", below, may be invisible...)
        -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = { bg = mistake.bg, fg = mistake.fg },

        Todo = { bg = "#49443C", fg = bg }, -- winterYellow

        --- Diagnostic
        LspReferenceText = { bg = "#2D4F67" },
        LspReferenceRead = { bg = "#2D4F67" },
        LspReferenceWrite = { bg = "#2D4F67", underline = 1, sp = active },
        LspCodeLens = { fg = "#54546D" },
        LspCodeLensSeparator = { fg = "#54546D" },

        --- Diagnostic
        DiagnosticError = { fg = error },
        DiagnosticWarn = { fg = warn },
        DiagnosticHint = { fg = hint },
        DiagnosticInfo = { fg = info },
        DiagnosticVirtualTextError = { bg = "#2b1e21", fg = "#c4746e" },
        DiagnosticVirtualTextWarn = { bg = "#3d2e08", fg = "#dca561" },
        DiagnosticVirtualTextHint = { bg = "#223249", fg = "#7e9cd8" },
        DiagnosticVirtualTextInfo = { bg = "#1d3320", fg = "#76946a" },

        --- Treesitter
        TSAttribute = {},
        TSConstructor = { fg = ansi.white },
        TSConditional = { fg = ansi.white },
        TSConstBuiltin = { fg = const_fg },
        TSConstMacro = { fg = ansi.white },
        TSError = { bg = mistake.bg, fg = mistake.fg },
        TSException = { fg = ansi.white },
        TSField = { fg = ansi.white },
        TSFunction = { fg = ansi.white },
        TSFuncBuiltin = { fg = ansi.white },
        TSFuncMacro = { fg = ansi.white },
        TSKeyword = { fg = ansi.white },
        TSKeywordFunction = { fg = ansi.white },
        TSLabel = { fg = ansi.white },
        TSMethod = { fg = ansi.white },
        TSNamespace = { fg = ansi.white },
        TSNone = { fg = const_fg },
        TSParameter = { fg = ansi.white },
        TSParameterReference = { fg = ansi.white },
        TSProperty = { fg = ansi.white },
        TSPunctDelimiter = { fg = punct_fg },
        TSPunctBracket = { fg = "#b4b0a8" },
        TSPunctSpecial = { fg = punct_fg },
        TSRepeat = { fg = ansi.white },
        TSString = { fg = string_fg },
        TSStringRegex = { bg = "#1a1a22", fg = const_fg },
        TSStringEscape = { bg = "#1a1a22", fg = const_fg },
        TSSymbol = {},
        TSType = { fg = ansi.white },
        TSTypeBuiltin = { fg = ansi.white },
        TSVariable = { fg = ansi.white },
        TSVariableBuiltin = { fg = ansi.white },
        TSTag = { fg = ansi.white },
        TSTagDelimiter = { fg = punct_fg },
        TSText = { fg = ansi.white },
        ["@attribute"] = {},
        ["@constructor"] = { fg = ansi.white },
        ["@conditional"] = { fg = ansi.white },
        ["@constant.builtin"] = { fg = const_fg },
        ["@constant.macro"] = { fg = ansi.white },
        ["@error"] = { bg = mistake.bg, fg = mistake.fg },
        ["@exception"] = { fg = ansi.white },
        ["@field"] = { fg = ansi.white },
        ["@function"] = { fg = ansi.white },
        ["@function.builtin"] = { fg = ansi.white },
        ["@function.macro"] = { fg = ansi.white },
        ["@keyword"] = { fg = ansi.white },
        ["@keyword.function"] = { fg = ansi.white },
        ["@keyword.operator"] = { fg = punct_fg },
        ["@label"] = { fg = ansi.white },
        ["@method"] = { fg = ansi.white },
        ["@module"] = { fg = ansi.white },
        ["@namespace"] = { fg = ansi.white },
        ["@none"] = { fg = const_fg },
        ["@parameter"] = { fg = ansi.white },
        ["@parameter.reference"] = { fg = ansi.white },
        ["@property"] = { fg = ansi.white },
        ["@punctuation.delimiter"] = { fg = punct_fg },
        ["@punctuation.bracket"] = { fg = "#b4b0a8" },
        ["@punctuation.special"] = { fg = punct_fg },
        ["@repeat"] = { fg = ansi.white },
        ["@string"] = { fg = string_fg },
        ["@string.regex"] = { bg = "#1a1a22", fg = const_fg },
        ["@string.escape"] = { bg = "#1a1a22", fg = const_fg },
        ["@symbol"] = {},
        ["@type"] = { fg = ansi.white },
        ["@type.builtin"] = { fg = ansi.white },
        ["@variable"] = { fg = ansi.white },
        ["@variable.builtin"] = { fg = ansi.white },
        ["@tag"] = { fg = ansi.white },
        ["@tag.delimiter"] = { fg = punct_fg },
        ["@text"] = { fg = ansi.white },
        ["@text.note"] = { bg = "#223249", fg = ansi.blue },
        ["@text.warning"] = { bg = "#49443C", fg = bg },

        --- Theme specific
        ["@AlabasterBase"] = { fg = ansi.white },
        ["@AlabasterConstant"] = { fg = const_fg },
        ["@AlabasterDefinition"] = { fg = def_fg },
        ["@AlabasterPunct"] = { fg = punct_fg },
        ["@AlabasterString"] = { fg = string_fg },
        ["@AlabasterHashbang"] = { fg = dim_comment },
        --- Gitsigns
        GitSignsAdd = { fg = diffadd },
        GitSignsChange = { fg = diffchange },
        GitSignsDelete = { fg = diffdelete },
        --- Telescope
        TelescopeBorder = { fg = "#363646" },
        TelescopeMatching = { fg = "#b6927b" },
        TelescopeMultiSelection = { fg = ansi.magenta },
        TelescopePromptPrefix = { fg = ansi.blue },
        TelescopeSelectionCaret = { fg = mistake.fg },
        TelescopeTitle = { fg = ansi.brightyellow },
        TelescopeResultsTitle = { fg = ansi.yellow },
        --- fzf-lua
        FzfLuaBorder = { fg = "#363646" },
        --- mini.nvim
        MiniPickMatchCurrent  = { fg = "#b6927b" },
        --- Neogit
        NeogitPopupActionDisabled = { fg = darker_fg },
        NeogitPopupActionKey = { fg = ansi.magenta },
        NeogitPopupOptionDisabled = { fg = darker_fg },
        NeogitPopupOptionKey = { fg = ansi.blue },
        NeogitPopupSwitchDisabled = { fg = darker_fg },
        NeogitPopupSwitchEnabled = { fg = ansi.cyan },
        NeogitPopupSwitchKey = { fg = ansi.magenta },
        --- Fugitive
        diffAdded = { link = "DiffAdd" },
        diffRemoved = { link = "DiffDelete" },
        --- Startify
        StartifyBracket = { fg = darker_fg },
        StartifyFile = { fg = ansi.white },
        StartifySection = { fg = ansi.green },
        StartifySlash = { fg = "#54546D" },
        StartifyPath = { fg = "#54546D" },
        --- Statusline
        StatuslineAdd = { fg = diffadd, bg = statusline },
        StatuslineErr = { fg = error, bg = statusline },
        StatuslineHint = { fg = hint, bg = statusline },
        StatuslineInfo = { fg = info, bg = statusline },
        StatuslineWarn = { fg = warn, bg = statusline },
        StatuslineBlue = { fg = ansi.blue, bg = statusline },
        StatuslineRed = { fg = ansi.red, bg = statusline },
        StatuslineGreen = { fg = ansi.green, bg = statusline },
        StatuslineCyan = { fg = ansi.cyan, bg = statusline },
        StatuslineMagenta = { fg = ansi.magenta, bg = statusline },
        --- ALE
        ALEWarningSign = { fg = warn },
        --- vim-matchup
        MatchupVirtualText = { fg = ansi.yellow },
        --- For `highlight link`
        AlabasterBlack = { fg = ansi.black },
        AlabasterBlue = { fg = ansi.blue },
        AlabasterBrightYellow = { fg = ansi.brightyellow },
        AlabasterCyan = { fg = ansi.cyan },
        AlabasterGreen = { fg = ansi.green },
        AlabasterDarkGreen = { fg = "#699469" },
        AlabasterMagenta = { fg = ansi.magenta },
        AlabasterRed = { fg = ansi.red },
        AlabasterWhite = { fg = ansi.white },
        AlabasterYellow = { fg = ansi.yellow },
        --- Hop
        HopNextKey = { fg = ansi.brightyellow },
        HopNextKey1 = { fg = ansi.cyan },
        HopNextKey2 = { fg = "#6A9589" }, -- waveAqua1
        HopUnmatched = { fg = "#363646" },
        --- Lightspeed
        LightspeedGreyWash = { fg = "#363646" },
        --- checkhealth
        healthSuccess = { fg = ansi.green, bg = bg },
        --- cmp
        CmpItemMenuDefault = { fg = ansi.magenta },
        --- nvim-ts-rainbow
        rainbowcol1 = { fg = ansi.yellow },
        rainbowcol2 = { fg = ansi.magenta },
        rainbowcol3 = { fg = ansi.blue },
        rainbowcol4 = { fg = ansi.green },
        rainbowcol5 = { fg = ansi.brightyellow },
        rainbowcol6 = { fg = ansi.red },
        rainbowcol7 = { fg = ansi.cyan },
        --- Iswap
        ISwapSnipe = { bg = ansi.yellow, fg = bg },
        ISwapGrey = { fg = "#363646" },
        --- vim-dadbod-ui
        dbui_help = { fg = dim_comment },
        dbui_connection_source = { fg = dim_comment },
        --- nvim-dap-virtual-text
        NvimDapVirtualText = { bg = "#223249", fg = ansi.cyan },
        --- Noice
        NoiceCmdlineIcon = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorder = { link = "AlabasterDarkGreen" },
        NoiceConfirmBorder = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderCmdline = { link = "AlabasterDarkGreen" },
        NoiceCmdlineIconCmdline = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderFilter = { link = "AlabasterDarkGreen" },
        NoiceCmdlineIconFilter = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderLua = { link = "AlabasterDarkGreen" },
        NoiceCmdlineIconLua = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderSearch = { link = "AlabasterYellow" },
        NoiceCmdlineIconSearch = { link = "AlabasterYellow" },
        -- Languages
        --- asm
        asmDirective = { fg = dim_comment },
        nasmLabel = { link = "@AlabasterDefinition" },

        ["@lsp.mod.declaration"] = { fg = fg },
        ["@lsp.type.enumMember"] = { fg = fg },
        ["@lsp.type.function"] = { fg = fg },
        ["@lsp.type.method"] = { fg = fg },
        ["@lsp.type.selfKeyword"] = { fg = fg },
        ["@lsp.typemod.class.declaration"] = { fg = def_fg },
        ["@lsp.typemod.class.definition"] = { fg = def_fg },
        ["@lsp.typemod.enum.declaration"] = { fg = def_fg },
        ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = fg },
        ["@lsp.typemod.function.declaration"] = { fg = def_fg },
        ["@lsp.typemod.function.definition"] = { fg = def_fg },
        ["@lsp.typemod.macro.declaration"] = { fg = def_fg },
        ["@lsp.typemod.method.declaration"] = { fg = def_fg },
        ["@lsp.typemod.selfKeyword"] = { fg = fg },
        ["@lsp.typemod.struct.declaration"] = { fg = def_fg },
        ["@lsp.typemod.type.declaration"] = { fg = def_fg },
    }
else
    -- terminal colors (Kanagawa Paper Canvas)
    vim.g.terminal_color_0 = "#8e8a80"     -- canvasGray2
    vim.g.terminal_color_1 = "#c27672"     -- canvasRed1
    vim.g.terminal_color_2 = "#7b958e"     -- canvasAqua1
    vim.g.terminal_color_3 = "#a7956a"     -- canvasYellow1
    vim.g.terminal_color_4 = "#809ba7"     -- canvasBlue1
    vim.g.terminal_color_5 = "#9e7e98"     -- canvasPink1
    vim.g.terminal_color_6 = "#7e8faf"     -- canvasTeal1
    vim.g.terminal_color_7 = "#b4b4ac"     -- canvasGray1
    vim.g.terminal_color_8 = "#637263"     -- canvasAsh1
    vim.g.terminal_color_9 = "#d4877f"     -- canvasRed1 (brighter)
    vim.g.terminal_color_10 = "#8ea49e"    -- canvasAqua1 (brighter)
    vim.g.terminal_color_11 = "#b8a57b"    -- canvasYellow1 (brighter)
    vim.g.terminal_color_12 = "#91abb8"    -- canvasBlue1 (brighter)
    vim.g.terminal_color_13 = "#af8fa9"    -- canvasPink1 (brighter)
    vim.g.terminal_color_14 = "#8f9fc0"    -- canvasTeal1 (brighter)
    vim.g.terminal_color_15 = "#d1cfc5"    -- canvasWhite2

    -- colors (Kanagawa Paper Canvas theme)
    local bg = "#e1e1de"           -- canvasWhite4
    local fg = "#575e60"           -- darker canvasGray3
    local punct_fg = "#8e8a80"     -- canvasGray2
    local def_fg = "#7b958e"       -- canvasAqua1
    local const_fg = "#b28d77"    -- canvasOrange1
    local active = "#b4a88a"       -- canvasYellow2
    local active_blue = "#6b8998" -- canvasBlue2
    local string_fg = "#7e9579"    -- canvasGreen1
    local darker_fg = "#8e8a80"    -- canvasGray2
    local diffadd = "#6f894e"      -- lotusGreen
    local diffdelete = "#c84053"   -- lotusRed
    local diffchange = "#a7956a"   -- canvasYellow1
    local statusline = "#d1cfc5"   -- canvasWhite2
    local comment = "#8e8a80"      -- canvasGray2
    local dim_comment = "#8e8a80"  -- canvasGray2
    local mistake = {
        fg = "#c84053",            -- lotusRed
        bg = "#f5d5d0",           -- lighten lotusRed
    }
    local ansi = {
        black = "#575e60",         -- darker fg
        blue = "#6b8998",         -- canvasBlue2
        brightyellow = "#b4a88a", -- canvasYellow2
        cyan = "#7e8faf",         -- canvasTeal1
        green = "#7b958e",        -- canvasAqua1
        magenta = "#9e7e98",     -- canvasPink1
        red = "#c27672",          -- canvasRed1
        white = "#e1e1de",        -- canvasWhite4
        yellow = "#b28d77",       -- canvasOrange1
    }
    local error = "#c84053"        -- lotusRed
    local warn = "#cc6d00"        -- lotusOrange
    local hint = ansi.blue
    local info = "#6f894e"        -- lotusGreen
    local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
    local pmenu_bg = "#e6e6e3"    -- canvasWhite5
    local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
    local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = "#b4b4ac" }
        or {
            bg = float_bg,
            fg = float_bg,
        }
    theme = {
        Comment = { fg = comment_fg },
        ColorColumn = { bg = "#d8d8d2" }, -- canvasWhite3
        Conceal = { fg = "#b4b0a8" },
        Cursor = { bg = "#007acc", fg = "#bfdbfe" },
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = "#d8d8d2" },
        CursorLine = { bg = "#d8d8d2" },
        Directory = { fg = ansi.blue },
        DiffAdd = { bg = "#c9e2c3", fg = "#3d6b27" },
        DiffDelete = { bg = "#f5d5d0", fg = "#a0303a" },
        DiffText = { fg = "#fff987", bg = "#876004" },
        DiffChange = { bg = "#fff987", fg = "#341a00" },
        EndOfBuffer = { fg = "#b4b4ac" },
        -- TermCursor   { }, -- cursor in a focused terminal
        TermCursorNC = { fg = bg, bg = fg },
        ErrorMsg = { fg = error, bg = mistake.bg },
        VertSplit = { fg = "#b4b4ac" },
        Folded = { bg = "#d1cfc5", fg = "#8e8a80" },
        FoldColumn = { bg = bg, fg = "#8e8a80" },
        SignColumn = {},
        IncSearch = { bg = active, fg = fg },
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        LineNr = { fg = "#8e8a80" },
        CursorLineNr = { fg = ansi.blue, bold = 1 },
        MatchParen = { underline = 1, sp = active },
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = { fg = ansi.green, bold = 1 },
        NonText = { fg = "#8e8a80" },
        Normal = { bg = bg, fg = fg },
        NormalFloat = { bg = float_bg },
        -- NormalNC     { }, -- normal text in non-current windows
        FloatBorder = floatborder,
        Pmenu = { bg = pmenu_bg },
        PmenuSel = { bg = "#d1cfc5" },
        PmenuSbar = { bg = "#b4b4ac" },
        PmenuThumb = { bg = "#8e8a80" },
        Question = { fg = ansi.green },
        QuickFixLine = { bg = "#d8d8d2" },
        Search = { bg = "#f5e6c3", fg = fg },
        SpecialKey = { fg = ansi.cyan },
        SpellBad = { undercurl = 1, sp = ansi.red },
        SpellCap = { undercurl = 1, sp = ansi.blue },
        SpellLocal = { undercurl = 1, sp = ansi.cyan },
        SpellRare = { undercurl = 1, sp = ansi.magenta },
        StatusLine = { bg = statusline, fg = fg },
        StatusLineNC = { bg = statusline, fg = "#8e8a80" },
        TabLine = { bg = statusline, fg = "#8e8a80" },
        TabLineFill = { bg = statusline },
        TabLineSel = { bg = statusline, fg = ansi.blue },
        Title = { fg = const_fg },
        Visual = { bg = "#d4cdd4" }, -- canvasPink3
        VisualNOS = { bg = "#d4cdd4" },
        WarningMsg = { fg = "#cc6d00" },
        WildMenu = { bg = "#b4b4ac" },
        WinBar = { bg = bg, fg = fg, bold = true },
        WinBarNC = { bg = bg, fg = "#8e8a80" },

        --- SYNTAX I: TS groups link to these
        Constant = { fg = const_fg },
        String = { fg = string_fg },
        Character = { fg = const_fg },
        Number = { fg = const_fg },
        Boolean = { fg = const_fg },
        Float = { fg = const_fg },
        Operator = { fg = punct_fg },

        --- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
        Identifier = { fg = fg },
        Function = { fg = def_fg },
        Statement = { fg = fg },
        Conditional = { fg = fg },
        Repeat = { fg = fg },
        Label = { fg = def_fg },
        Keyword = { fg = fg },
        Exception = { fg = fg },
        PreProc = { fg = fg },
        Include = { fg = fg },
        Define = { fg = fg },
        Macro = { fg = fg },
        PreCondit = { fg = fg },
        Type = { fg = fg },
        StorageClass = { fg = fg },
        Structure = { fg = def_fg },
        Typedef = { fg = def_fg },

        Special = { fg = ansi.yellow },
        -- TODO better color than diffchange, try reddish
        -- SpecialChar = { fg = diffchange }, --  special character in a constant
        -- Tag            { }, --    you can use CTRL-] on this
        -- Delimiter      { },
        SpecialComment = { bg = "#d8d8d2", fg = ansi.blue },
        debugPc = { bg = "#d4cdd4" },
        debugBreakpoint = { bg = "#f5d5d0" },
        helpHyperTextJump = { fg = ansi.magenta },
        helpSectionDelim = { fg = ansi.magenta },
        helpExample = { fg = ansi.cyan },
        helpCommand = { fg = ansi.cyan },
        helpHeadline = { fg = ansi.blue },
        helpHeader = { fg = ansi.magenta },

        Underlined = { underline = 1 }, -- (preferred) text that stands out, HTML links
        Italic = { italic = 1 },

        -- ("Ignore", below, may be invisible...)
        -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = { bg = mistake.bg, fg = mistake.fg },

        Todo = { bg = "#d8d8d2", fg = ansi.blue },

        --- Diagnostic
        LspReferenceText = { bg = "#d1cfc5" },
        LspReferenceRdad = { bg = "#d1cfc5" },
        LspReferenceWrite = { bg = "#d1cfc5", underline = 1, sp = active_blue },
        LspCodeLens = { fg = "#8e8a80" },
        LspCodeLensSeparator = { fg = "#8e8a80" },

        --- Diagnostic
        DiagnosticError = { fg = error },
        DiagnosticWarn = { fg = warn },
        DiagnosticHint = { fg = hint },
        DiagnosticInfo = { fg = info },
        DiagnosticVirtualTextError = { bg = "#f5d5d0", fg = "#8f2a33" },
        DiagnosticVirtualTextWarn = { bg = "#f5e6c3", fg = fg },
        DiagnosticVirtualTextHint = { fg = "#575e60", bg = "#c9d5dd" },
        DiagnosticVirtualTextInfo = { bg = "#c9e2c3", fg = "#2d4a1f" },

        --- Treesitter
        TSAttribute = {},
        TSConstructor = { fg = fg },
        TSConditional = { fg = fg },
        TSConstBuiltin = { fg = const_fg },
        TSConstMacro = { fg = fg },
        TSError = { bg = mistake.bg, fg = mistake.fg },
        TSException = { fg = fg },
        TSField = { fg = fg },
        TSFunction = { fg = fg },
        TSFuncBuiltin = { fg = fg },
        TSFuncMacro = { fg = fg },
        TSKeyword = { fg = fg },
        TSKeywordFunction = { fg = fg },
        TSLabel = { fg = fg },
        TSMethod = { fg = fg },
        TSNamespace = { fg = fg },
        TSNone = { fg = const_fg },
        TSParameter = { fg = fg },
        TSParameterReference = { fg = fg },
        TSProperty = { fg = fg },
        TSPunctDelimiter = { fg = punct_fg },
        TSPunctBracket = { fg = punct_fg },
        TSPunctSpecial = { fg = punct_fg },
        TSRepeat = { fg = fg },
        TSString = { fg = string_fg },
        TSStringRegex = { bg = bg, fg = "#8e8a80" },
        TSStringEscape = { bg = bg, fg = "#8e8a80" },
        TSSymbol = {},
        TSType = { fg = fg },
        TSTypeBuiltin = { fg = fg },
        TSVariable = { fg = fg },
        TSVariableBuiltin = { fg = fg },
        TSTag = { fg = fg },
        TSTagDelimiter = { fg = punct_fg },
        TSText = { fg = fg },

        ["@attribute"] = {},
        ["@constructor"] = { fg = fg },
        ["@conditional"] = { fg = fg },
        ["@constant.builtin"] = { fg = const_fg },
        ["@constant.macro"] = { fg = fg },
        ["@error"] = { bg = mistake.bg, fg = mistake.fg },
        ["@exception"] = { fg = fg },
        ["@field"] = { fg = fg },
        ["@function"] = { fg = fg },
        ["@function.builtin"] = { fg = fg },
        ["@function.macro"] = { fg = fg },
        ["@keyword"] = { fg = fg },
        ["@keyword.function"] = { fg = fg },
        ["@label"] = { fg = fg },
        ["@method"] = { fg = fg },
        ["@module"] = { fg = fg },
        ["@namespace"] = { fg = fg },
        ["@none"] = { fg = const_fg },
        ["@parameter"] = { fg = fg },
        ["@parameter.reference"] = { fg = fg },
        ["@property"] = { fg = fg },
        ["@punctuation.delimiter"] = { fg = punct_fg },
        ["@punctuation.bracket"] = { fg = punct_fg },
        ["@punctuation.special"] = { fg = punct_fg },
        ["@repeat"] = { fg = fg },
        ["@string"] = { fg = string_fg },
        ["@string.regex"] = { bg = bg, fg = "#8e8a80" },
        ["@string.escape"] = { bg = bg, fg = "#8e8a80" },
        ["@symbol"] = {},
        ["@type"] = { fg = fg },
        ["@type.builtin"] = { fg = fg },
        ["@variable"] = { fg = fg },
        ["@variable.builtin"] = { fg = fg },
        ["@tag"] = { fg = fg },
        ["@tag.delimiter"] = { fg = punct_fg },
        ["@text"] = { fg = fg },
        ["@text.note"] = { bg = "#d8d8d2", fg = ansi.blue },
        ["@text.warning"] = { bg = "#d8d8d2", fg = ansi.blue },

        --- Theme specific
        ["@AlabasterConstant"] = { fg = const_fg },
        ["@AlabasterDefinition"] = { fg = def_fg },
        ["@AlabasterPunct"] = { fg = punct_fg },
        ["@AlabasterString"] = { fg = string_fg },
        ["@AlabasterHashbang"] = { fg = dim_comment },
        --- Gitsigns
        GitSignsAdd = { fg = "#6f894e" },
        GitSignsChange = { fg = diffchange },
        GitSignsDelete = { fg = diffdelete },
        --- Telescope
        TelescopeBorder = { fg = "#b4b4ac" },
        TelescopeMatching = { fg = "#a8826a" },
        TelescopeMultiSelection = { fg = ansi.magenta },
        TelescopePromptPrefix = { fg = ansi.blue },
        TelescopeSelectionCaret = { fg = mistake.fg },
        TelescopeTitle = { fg = ansi.yellow },
        TelescopeResultsTitle = { fg = ansi.yellow },
        --- fzf-lua
        FzfLuaBorder = { fg = "#b4b4ac" },
        --- Neogit
        NeogitPopupActionDisabled = { fg = darker_fg },
        NeogitPopupActionKey = { fg = ansi.magenta },
        NeogitPopupOptionDisabled = { fg = darker_fg },
        NeogitPopupOptionKey = { fg = ansi.blue },
        NeogitPopupSwitchDisabled = { fg = darker_fg },
        NeogitPopupSwitchEnabled = { fg = ansi.cyan },
        NeogitPopupSwitchKey = { fg = ansi.magenta },
        --- Fugitive
        diffAdded = { link = "DiffAdd" },
        diffRemoved = { link = "DiffDelete" },
        --- Startify
        StartifyBracket = { fg = darker_fg },
        StartifyFile = { fg = fg },
        StartifySection = { fg = ansi.green },
        StartifySlash = { fg = "#8e8a80" },
        StartifyPath = { fg = "#8e8a80" },
        --- Statusline
        StatuslineAdd = { fg = diffadd, bg = statusline },
        StatuslineErr = { fg = "#8E1410", bg = statusline },
        StatuslineHint = { fg = hint, bg = statusline },
        StatuslineInfo = { fg = info, bg = statusline },
        StatuslineWarn = { fg = warn, bg = statusline },
        StatuslineBlue = { fg = ansi.blue, bg = statusline },
        StatuslineRed = { fg = ansi.red, bg = statusline },
        StatuslineGreen = { fg = ansi.green, bg = statusline },
        StatuslineCyan = { fg = ansi.cyan, bg = statusline },
        StatuslineMagenta = { fg = ansi.magenta, bg = statusline },
        --- ALE
        ALEWarningSign = { fg = warn },
        --- vim-matchup
        MatchupVirtualText = { fg = ansi.yellow },
        --- For `highlight link`
        AlabasterBlack = { fg = ansi.black },
        AlabasterBlue = { fg = ansi.blue },
        AlabasterBrightYellow = { fg = ansi.brightyellow },
        AlabasterCyan = { fg = ansi.cyan },
        AlabasterGreen = { fg = ansi.green },
        AlabasterBrightGreen = { fg = "#60cb00" },
        AlabasterMagenta = { fg = ansi.magenta },
        AlabasterRed = { fg = ansi.red },
        AlabasterWhite = { fg = fg },
        AlabasterYellow = { fg = ansi.yellow },
        --- Hop
        HopNextKey = { fg = ansi.yellow },
        HopNextKey1 = { fg = ansi.blue },
        HopNextKey2 = { fg = "#17A2D6" },
        HopUnmatched = { fg = "#bfbfbf" },
        --- Lightspeed
        LightspeedGreyWash = { fg = "#bfbfbf" },
        --- checkhealth
        healthSuccess = { fg = ansi.green, bg = bg },
        --- cmp
        CmpItemMenuDefault = { fg = ansi.magenta },
        --- nvim-ts-rainbow
        rainbowcol1 = { fg = ansi.yellow },
        rainbowcol2 = { fg = ansi.magenta },
        rainbowcol3 = { fg = ansi.blue },
        rainbowcol4 = { fg = ansi.green },
        rainbowcol5 = { fg = ansi.brightyellow },
        rainbowcol6 = { fg = ansi.red },
        rainbowcol7 = { fg = ansi.cyan },
        --- Iswap
        ISwapSnipe = { bg = ansi.yellow, fg = bg },
        ISwapGrey = { fg = "#bfbfbf" },
        --- vim-dadbod-ui
        dbui_help = { fg = dim_comment },
        dbui_connection_source = { fg = dim_comment },
        --- nvim-dap-virtual-text
        NvimDapVirtualText = { bg = "#d4cdd4", fg = fg },
        --- Noice
        NoiceCmdlineIcon = { link = "AlabasterBrightGreen" },
        NoiceCmdlinePopupBorder = { link = "AlabasterBrightGreen" },
        NoiceConfirmBorder = { link = "AlabasterBrightGreen" },
        NoiceCmdlinePopupBorderCmdline = { link = "AlabasterBrightGreen" },
        NoiceCmdlineIconCmdline = { link = "AlabasterBrightGreen" },
        NoiceCmdlinePopupBorderFilter = { link = "AlabasterBrightGreen" },
        NoiceCmdlineIconFilter = { link = "AlabasterBrightGreen" },
        NoiceCmdlinePopupBorderLua = { link = "AlabasterBrightGreen" },
        NoiceCmdlineIconLua = { link = "AlabasterBrightGreen" },
        NoiceCmdlinePopupBorderSearch = { link = "AlabasterYellow" },
        NoiceCmdlineIconSearch = { link = "AlabasterYellow" },
        -- Languages
        --- asm
        asmDirective = { fg = dim_comment },
        nasmLabel = { link = "@AlabasterDefinition" },
        ["@lsp.mod.declaration"] = { fg = fg },
        ["@lsp.type.enumMember"] = { fg = fg },
        ["@lsp.type.function"] = { fg = fg },
        ["@lsp.type.method"] = { fg = fg },
        ["@lsp.type.selfKeyword"] = { fg = fg },
        ["@lsp.typemod.class.declaration"] = { fg = def_fg },
        ["@lsp.typemod.class.definition"] = { fg = def_fg },
        ["@lsp.typemod.enum.declaration"] = { fg = def_fg },
        ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = fg },
        ["@lsp.typemod.function.declaration"] = { fg = def_fg },
        ["@lsp.typemod.function.definition"] = { fg = def_fg },
        ["@lsp.typemod.macro.declaration"] = { fg = def_fg },
        ["@lsp.typemod.method.declaration"] = { fg = def_fg },
        ["@lsp.typemod.selfKeyword"] = { fg = fg },
        ["@lsp.typemod.struct.declaration"] = { fg = def_fg },
        ["@lsp.typemod.type.declaration"] = { fg = def_fg },
    }
end

for group, hl in pairs(theme) do
    vim.api.nvim_set_hl(0, group, hl)
end

-- vi:nowrap
