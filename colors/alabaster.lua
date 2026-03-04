vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "alabaster"

local theme
---@diagnostic disable: undefined-global
if vim.o.background == "dark" then
    -- terminal colors
    vim.g.terminal_color_0 = "#0d0c0c"
    vim.g.terminal_color_1 = "#c4746e"
    vim.g.terminal_color_2 = "#699469"
    vim.g.terminal_color_3 = "#c4b28a"
    vim.g.terminal_color_4 = "#7E9CD8"
    vim.g.terminal_color_5 = "#a292a3"
    vim.g.terminal_color_6 = "#8ea49e"
    vim.g.terminal_color_7 = "#c5c9c5"
    vim.g.terminal_color_8 = "#393836"
    vim.g.terminal_color_9 = "#c4746e"
    vim.g.terminal_color_10 = "#8a9a7b"
    vim.g.terminal_color_11 = "#dfdf8e"
    vim.g.terminal_color_12 = "#71aed7"
    vim.g.terminal_color_13 = "#cc8bc9"
    vim.g.terminal_color_14 = "#47BEA9"
    vim.g.terminal_color_15 = "#ffffff"

    -- colors (kanagawa-paper palette)
    local bg = "#1D1C19"
    local fg = "#c5c9c5"
    local punct_fg = "#737c73"
    local def_fg = "#7E9CD8"
    local const_fg = "#a292a3"
    local active = "#c4b28a"
    local string_fg = "#699469"
    local darker_fg = "#717C7C"
    local diffadd = "#6abf40"
    local diffdelete = "#c4746e"
    local diffchange = "#DCA561"
    local statusline = "#12120f"
    local comment = "#717C7C"
    local dim_comment = "#625e5a"
    local mistake = {
        fg = "#c4746e",
        bg = "#2b1d1e",
    }
    local error = "#C34043"
    local warn = "#DCA561"
    local hint = "#7E9CD8"
    local info = "#76946A"
    local ansi = {
        black = "#393836",
        blue = "#7E9CD8",
        brightyellow = "#c4b28a",
        cyan = "#8ea49e",
        green = "#699469",
        magenta = "#a292a3",
        red = "#c4746e",
        white = "#c5c9c5",
        yellow = "#c4b28a",
    }
    local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
    local pmenu_bg = "#181616"
    local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
    local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = "#393836" }
        or {
            bg = float_bg,
            fg = float_bg,
        }
    theme = {
        Comment = { fg = comment_fg },
        ColorColumn = { bg = "#181616" },
        Conceal = { fg = "#a6a69c" },
        Cursor = { bg = active, fg = "#0d0c0c" },
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = "#181616" },
        CursorLine = { bg = "#181616" },
        Directory = { fg = ansi.blue },
        DiffAdd = { bg = "#244032", fg = "#56d364" },
        DiffDelete = { bg = "#462c32", fg = "#f85149" },
        DiffText = { fg = "#341a00", bg = "#fff987" },
        DiffChange = { bg = "#341a00", fg = "#e3b341" },
        EndOfBuffer = { fg = "#435965" },
        -- TermCursor   { }, -- cursor in a focused terminal
        TermCursorNC = { fg = bg, bg = fg },
        ErrorMsg = { fg = error, bg = mistake.bg },
        VertSplit = { fg = "#2b3d40" },
        Folded = { bg = "#181616", fg = "#717C7C" },
        FoldColumn = { bg = bg, fg = "#4d4d4d" },
        SignColumn = {},
        IncSearch = { bg = ansi.yellow, fg = bg },
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        LineNr = { fg = "#5c5c5c" },
        CursorLineNr = { fg = ansi.blue, bold = 1 },
        MatchParen = { underline = 1, sp = active },
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = { fg = ansi.green, bold = 1 },
        NonText = { fg = "#625e5a" },
        Normal = { bg = bg, fg = fg },
        NormalFloat = { bg = float_bg },
        -- NormalNC     { }, -- normal text in non-current windows
        FloatBorder = floatborder,
        Pmenu = { bg = pmenu_bg },
        PmenuSel = { bg = "#282727" },
        PmenuSbar = { bg = "#212f31" },
        PmenuThumb = { bg = "#47666b" },
        Question = { fg = diffadd },
        QuickFixLine = { bg = "#181616" },
        Search = { bg = "#282727" },
        SpecialKey = { fg = ansi.cyan },
        SpellBad = { undercurl = 1, sp = ansi.red },
        SpellCap = { undercurl = 1, sp = ansi.blue },
        SpellLocal = { undercurl = 1, sp = ansi.cyan },
        SpellRare = { undercurl = 1, sp = ansi.magenta },
        StatusLine = { bg = statusline, fg = fg },
        StatusLineNC = { bg = statusline, fg = "#9f9f9f" },
        TabLine = { bg = statusline, fg = "#717C7C" },
        TabLineFill = { bg = statusline },
        TabLineSel = { bg = statusline, fg = ansi.blue },
        Title = { fg = const_fg },
        Visual = { bg = "#282727" },
        VisualNOS = { bg = "#282727" },
        WarningMsg = { fg = "#e1ad4c" },
        WildMenu = { bg = "#282727" },
        WinBar = { bg = bg, fg = ansi.white, bold = true },
        WinBarNC = { bg = bg, fg = "#717C7C" },

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
        SpecialComment = { bg = "#1d292b", fg = ansi.blue },
        debugPc = { bg = "#0f2534" },
        debugBreakpoint = { bg = "#b33229" },
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

        Todo = { bg = "#d0d058", fg = bg },

        --- Diagnostic
        LspReferenceText = { bg = "#253437" },
        LspReferenceRead = { bg = "#253437" },
        LspReferenceWrite = { bg = "#253437", underline = 1, sp = active },
        LspCodeLens = { fg = "#5c5c5c" },
        LspCodeLensSeparator = { fg = "#5c5c5c" },

        --- Diagnostic
        DiagnosticError = { fg = error },
        DiagnosticWarn = { fg = warn },
        DiagnosticHint = { fg = hint },
        DiagnosticInfo = { fg = info },
        DiagnosticVirtualTextError = { bg = "#350B0B", fg = "#D1503A" },
        DiagnosticVirtualTextWarn = { bg = "#3F240A", fg = "#C8935D" },
        DiagnosticVirtualTextHint = { bg = "#1D2B37", fg = "#7E9CB9" },
        DiagnosticVirtualTextInfo = { bg = "#162C0B", fg = "#7BAC62" },

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
        TSPunctBracket = { fg = "#a6a69c" },
        TSPunctSpecial = { fg = punct_fg },
        TSRepeat = { fg = ansi.white },
        TSString = { fg = string_fg },
        TSStringRegex = { bg = "#1d292b", fg = const_fg },
        TSStringEscape = { bg = "#1d292b", fg = const_fg },
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
        ["@punctuation.bracket"] = { fg = "#a6a69c" },
        ["@punctuation.special"] = { fg = punct_fg },
        ["@repeat"] = { fg = ansi.white },
        ["@string"] = { fg = string_fg },
        ["@string.regex"] = { bg = "#1d292b", fg = const_fg },
        ["@string.escape"] = { bg = "#1d292b", fg = const_fg },
        ["@symbol"] = {},
        ["@type"] = { fg = ansi.white },
        ["@type.builtin"] = { fg = ansi.white },
        ["@variable"] = { fg = ansi.white },
        ["@variable.builtin"] = { fg = ansi.white },
        ["@tag"] = { fg = ansi.white },
        ["@tag.delimiter"] = { fg = punct_fg },
        ["@text"] = { fg = ansi.white },
        ["@text.note"] = { bg = "#1d292b", fg = ansi.blue },
        ["@text.warning"] = { bg = "#d0d058", fg = bg },

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
        TelescopeBorder = { fg = "#282727" },
        TelescopeMatching = { fg = "#DCA561" },
        TelescopeMultiSelection = { fg = ansi.magenta },
        TelescopePromptPrefix = { fg = ansi.blue },
        TelescopeSelectionCaret = { fg = mistake.fg },
        TelescopeTitle = { fg = ansi.brightyellow },
        TelescopeResultsTitle = { fg = ansi.yellow },
        --- fzf-lua
        FzfLuaBorder = { fg = "#282727" },
        --- mini.nvim
        MiniPickMatchCurrent  = { fg = "#f09942" },
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
        StartifySlash = { fg = "#435965" },
        StartifyPath = { fg = "#435965" },
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
        AlabasterDarkGreen = { fg = "#6abf40" },
        AlabasterMagenta = { fg = ansi.magenta },
        AlabasterRed = { fg = ansi.red },
        AlabasterWhite = { fg = ansi.white },
        AlabasterYellow = { fg = ansi.yellow },
        --- Hop
        HopNextKey = { fg = ansi.brightyellow },
        HopNextKey1 = { fg = ansi.cyan },
        HopNextKey2 = { fg = "#297567" },
        HopUnmatched = { fg = "#393836" },
        --- Lightspeed
        LightspeedGreyWash = { fg = "#393836" },
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
        ISwapGrey = { fg = "#3d3d3d" },
        --- vim-dadbod-ui
        dbui_help = { fg = dim_comment },
        dbui_connection_source = { fg = dim_comment },
        --- nvim-dap-virtual-text
        NvimDapVirtualText = { bg = "#1d292b", fg = ansi.cyan },
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
    -- terminal colors (kanagawa-paper light)
    vim.g.terminal_color_0 = "#1D1C19"
    vim.g.terminal_color_1 = "#C34043"
    vim.g.terminal_color_2 = "#76946A"
    vim.g.terminal_color_3 = "#DCA561"
    vim.g.terminal_color_4 = "#7E9CD8"
    vim.g.terminal_color_5 = "#a292a3"
    vim.g.terminal_color_6 = "#8ea49e"
    vim.g.terminal_color_7 = "#3d3d5e"
    vim.g.terminal_color_8 = "#717C7C"
    vim.g.terminal_color_9 = "#c4746e"
    vim.g.terminal_color_10 = "#8a9a7b"
    vim.g.terminal_color_11 = "#c4b28a"
    vim.g.terminal_color_12 = "#7E9CD8"
    vim.g.terminal_color_13 = "#a292a3"
    vim.g.terminal_color_14 = "#8ea49e"
    vim.g.terminal_color_15 = "#fbf7f3"

    -- colors (kanagawa-paper lotus palette for light mode)
    local bg = "#fbf7f3"
    local fg = "#3d3d5e"
    local punct_fg = "#717C7C"
    local def_fg = "#5d57a3"
    local const_fg = "#b35b79"
    local active = "#DCA561"
    local active_blue = "#7E9CD8"
    local string_fg = "#76946A"
    local darker_fg = "#716e61"
    local diffadd = "#284918"
    local diffdelete = "#B40600"
    local diffchange = "#cc6d00"
    local statusline = "#dcd7ba"
    local comment = "#727169"
    local dim_comment = "#8a8980"
    local mistake = {
        fg = "#C34043",
        bg = "#f8b28f",
    }
    local ansi = {
        black = "#1D1C19",
        blue = "#5d57a3",
        brightyellow = "#DCA561",
        cyan = "#4e8ca2",
        green = "#76946A",
        magenta = "#b35b79",
        red = "#C34043",
        white = "#fbf7f3",
        yellow = "#DCA561",
    }
    local error = "#C34043"
    local warn = "#cc6d00"
    local hint = ansi.blue
    local info = "#6f894e"
    local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
    local pmenu_bg = "#e6e6e3"
    local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
    local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = "#a6a69c" }
        or {
            bg = float_bg,
            fg = float_bg,
        }
    theme = {
        Comment = { fg = comment_fg },
        ColorColumn = { bg = "#e1e1de" },
        Conceal = { fg = "#a6a69c" },
        Cursor = { bg = active_blue, fg = "#bfdbfe" },
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = "#e1e1de" },
        CursorLine = { bg = "#e1e1de" },
        Directory = { fg = ansi.blue },
        DiffAdd = { bg = "#ADFFB7", fg = "#0A7816" },
        DiffDelete = { bg = "#F8B28F", fg = "#872C28" },
        DiffText = { fg = "#fff987", bg = "#876004" },
        DiffChange = { bg = "#fff987", fg = "#341a00" },
        EndOfBuffer = { fg = "#a6a69c" },
        -- TermCursor   { }, -- cursor in a focused terminal
        TermCursorNC = { fg = bg, bg = fg },
        ErrorMsg = { fg = error, bg = mistake.bg },
        VertSplit = { fg = "#b5cbd2" },
        Folded = { bg = "#d8d8d2", fg = "#716e61" },
        FoldColumn = { bg = bg, fg = "#4d4d4d" },
        SignColumn = {},
        IncSearch = { bg = active, fg = fg },
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        LineNr = { fg = "#716e61" },
        CursorLineNr = { fg = ansi.blue, bold = 1 },
        MatchParen = { underline = 1, sp = active },
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = { fg = ansi.green, bold = 1 },
        NonText = { fg = "#8a8980" },
        Normal = { bg = bg, fg = fg },
        NormalFloat = { bg = float_bg },
        -- NormalNC     { }, -- normal text in non-current windows
        FloatBorder = floatborder,
        Pmenu = { bg = pmenu_bg },
        PmenuSel = { bg = "#c7c7c7" },
        PmenuSbar = { bg = "#717C7C" },
        PmenuThumb = { bg = "#393836" },
        Question = { fg = ansi.green },
        QuickFixLine = { bg = "#e1e1de" },
        Search = { bg = "#c4b28a", fg = fg },
        SpecialKey = { fg = ansi.cyan },
        SpellBad = { undercurl = 1, sp = ansi.red },
        SpellCap = { undercurl = 1, sp = ansi.blue },
        SpellLocal = { undercurl = 1, sp = ansi.cyan },
        SpellRare = { undercurl = 1, sp = ansi.magenta },
        StatusLine = { bg = statusline, fg = fg },
        StatusLineNC = { bg = statusline, fg = "#9f9f9f" },
        TabLine = { bg = statusline, fg = "#716e61" },
        TabLineFill = { bg = statusline },
        TabLineSel = { bg = statusline, fg = ansi.blue },
        Title = { fg = const_fg },
        Visual = { bg = "#c7d7e0" },
        VisualNOS = { bg = "#c7d7e0" },
        WarningMsg = { fg = "#e1ad4c" },
        WildMenu = { bg = "#a6a69c" },
        WinBar = { bg = bg, fg = ansi.black, bold = true },
        WinBarNC = { bg = bg, fg = "#716e61" },

        --- SYNTAX I: TS groups link to these
        Constant = { fg = const_fg },
        String = { fg = string_fg },
        Character = { fg = const_fg },
        Number = { fg = const_fg },
        Boolean = { fg = const_fg },
        Float = { fg = const_fg },
        Operator = { fg = punct_fg },

        --- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
        Identifier = { fg = ansi.black },
        Function = { fg = def_fg },
        Statement = { fg = ansi.black },
        Conditional = { fg = ansi.black },
        Repeat = { fg = ansi.black },
        Label = { fg = def_fg },
        Keyword = { fg = ansi.black },
        Exception = { fg = ansi.black },
        PreProc = { fg = ansi.black },
        Include = { fg = ansi.black },
        Define = { fg = ansi.black },
        Macro = { fg = ansi.black },
        PreCondit = { fg = ansi.black },
        Type = { fg = ansi.black },
        StorageClass = { fg = ansi.black },
        Structure = { fg = def_fg },
        Typedef = { fg = def_fg },

        Special = { fg = ansi.yellow },
        -- TODO better color than diffchange, try reddish
        -- SpecialChar = { fg = diffchange }, --  special character in a constant
        -- Tag            { }, --    you can use CTRL-] on this
        -- Delimiter      { },
        SpecialComment = { bg = "#d7e3d8", fg = ansi.blue },
        debugPc = { bg = "#c7d7e0" },
        debugBreakpoint = { bg = "#F8B28F" },
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

        Todo = { bg = "#DCA561", fg = bg },

        --- Diagnostic
        LspReferenceText = { bg = "#dcd7ba" },
        LspReferenceRead = { bg = "#dcd7ba" },
        LspReferenceWrite = { bg = "#dcd7ba", underline = 1, sp = active_blue },
        LspCodeLens = { fg = "#a6a69c" },
        LspCodeLensSeparator = { fg = "#a6a69c" },

        --- Diagnostic
        DiagnosticError = { fg = error },
        DiagnosticWarn = { fg = warn },
        DiagnosticHint = { fg = hint },
        DiagnosticInfo = { fg = info },
        DiagnosticVirtualTextError = { bg = "#F8B28F", fg = "#411414" },
        DiagnosticVirtualTextWarn = { bg = "#c4b28a", fg = fg },
        DiagnosticVirtualTextHint = { fg = "#3d3d5e", bg = "#c7d7e0" },
        DiagnosticVirtualTextInfo = { bg = "#ADFFB7", fg = "#042F09" },

        --- Treesitter
        TSAttribute = {},
        TSConstructor = { fg = ansi.black },
        TSConditional = { fg = ansi.black },
        TSConstBuiltin = { fg = const_fg },
        TSConstMacro = { fg = ansi.black },
        TSError = { bg = mistake.bg, fg = mistake.fg },
        TSException = { fg = ansi.black },
        TSField = { fg = ansi.black },
        TSFunction = { fg = ansi.black },
        TSFuncBuiltin = { fg = ansi.black },
        TSFuncMacro = { fg = ansi.black },
        TSKeyword = { fg = ansi.black },
        TSKeywordFunction = { fg = ansi.black },
        TSLabel = { fg = ansi.black },
        TSMethod = { fg = ansi.black },
        TSNamespace = { fg = ansi.black },
        TSNone = { fg = const_fg },
        TSParameter = { fg = ansi.black },
        TSParameterReference = { fg = ansi.black },
        TSProperty = { fg = ansi.black },
        TSPunctDelimiter = { fg = punct_fg },
        TSPunctBracket = { fg = punct_fg },
        TSPunctSpecial = { fg = punct_fg },
        TSRepeat = { fg = ansi.black },
        TSString = { fg = string_fg },
        TSStringRegex = { bg = bg, fg = "#716e61" },
        TSStringEscape = { bg = bg, fg = "#716e61" },
        TSSymbol = {},
        TSType = { fg = ansi.black },
        TSTypeBuiltin = { fg = ansi.black },
        TSVariable = { fg = ansi.black },
        TSVariableBuiltin = { fg = ansi.black },
        TSTag = { fg = ansi.black },
        TSTagDelimiter = { fg = punct_fg },
        TSText = { fg = ansi.black },

        ["@attribute"] = {},
        ["@constructor"] = { fg = ansi.black },
        ["@conditional"] = { fg = ansi.black },
        ["@constant.builtin"] = { fg = const_fg },
        ["@constant.macro"] = { fg = ansi.black },
        ["@error"] = { bg = mistake.bg, fg = mistake.fg },
        ["@exception"] = { fg = ansi.black },
        ["@field"] = { fg = ansi.black },
        ["@function"] = { fg = ansi.black },
        ["@function.builtin"] = { fg = ansi.black },
        ["@function.macro"] = { fg = ansi.black },
        ["@keyword"] = { fg = ansi.black },
        ["@keyword.function"] = { fg = ansi.black },
        ["@label"] = { fg = ansi.black },
        ["@method"] = { fg = ansi.black },
        ["@module"] = { fg = ansi.black },
        ["@namespace"] = { fg = ansi.black },
        ["@none"] = { fg = const_fg },
        ["@parameter"] = { fg = ansi.black },
        ["@parameter.reference"] = { fg = ansi.black },
        ["@property"] = { fg = ansi.black },
        ["@punctuation.delimiter"] = { fg = punct_fg },
        ["@punctuation.bracket"] = { fg = punct_fg },
        ["@punctuation.special"] = { fg = punct_fg },
        ["@repeat"] = { fg = ansi.black },
        ["@string"] = { fg = string_fg },
        ["@string.regex"] = { bg = bg, fg = "#716e61" },
        ["@string.escape"] = { bg = bg, fg = "#716e61" },
        ["@symbol"] = {},
        ["@type"] = { fg = ansi.black },
        ["@type.builtin"] = { fg = ansi.black },
        ["@variable"] = { fg = ansi.black },
        ["@variable.builtin"] = { fg = ansi.black },
        ["@tag"] = { fg = ansi.black },
        ["@tag.delimiter"] = { fg = punct_fg },
        ["@text"] = { fg = ansi.black },
        ["@text.note"] = { bg = "#dcd7ba", fg = ansi.blue },
        ["@text.warning"] = { bg = "#DCA561", fg = ansi.blue },

        --- Theme specific
        ["@AlabasterConstant"] = { fg = const_fg },
        ["@AlabasterDefinition"] = { fg = def_fg },
        ["@AlabasterPunct"] = { fg = punct_fg },
        ["@AlabasterString"] = { fg = string_fg },
        ["@AlabasterHashbang"] = { fg = dim_comment },
        --- Gitsigns
        GitSignsAdd = { fg = "#6abf40" },
        GitSignsChange = { fg = diffchange },
        GitSignsDelete = { fg = diffdelete },
        --- Telescope
        TelescopeBorder = { fg = "#b5cbd2" },
        TelescopeMatching = { fg = "#cc6d00" },
        TelescopeMultiSelection = { fg = ansi.magenta },
        TelescopePromptPrefix = { fg = ansi.blue },
        TelescopeSelectionCaret = { fg = mistake.fg },
        TelescopeTitle = { fg = ansi.yellow },
        TelescopeResultsTitle = { fg = ansi.yellow },
        --- fzf-lua
        FzfLuaBorder = { fg = "#b5cbd2" },
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
        StartifyFile = { fg = ansi.black },
        StartifySection = { fg = ansi.green },
        StartifySlash = { fg = "#5a7785" },
        StartifyPath = { fg = "#5a7785" },
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
        AlabasterWhite = { fg = ansi.black },
        AlabasterYellow = { fg = ansi.yellow },
        --- Hop
        HopNextKey = { fg = ansi.yellow },
        HopNextKey1 = { fg = ansi.blue },
        HopNextKey2 = { fg = "#6693bf" },
        HopUnmatched = { fg = "#a6a69c" },
        --- Lightspeed
        LightspeedGreyWash = { fg = "#a6a69c" },
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
        ISwapGrey = { fg = "#a6a69c" },
        --- vim-dadbod-ui
        dbui_help = { fg = dim_comment },
        dbui_connection_source = { fg = dim_comment },
        --- nvim-dap-virtual-text
        NvimDapVirtualText = { bg = "#d7e3d8", fg = fg },
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
