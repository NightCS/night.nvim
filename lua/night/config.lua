local M = {}

M.highlights_base = function (colors)
  return {
    Normal = { fg = colors.foreground, bg = colors.background },
    StatusLineNC = { bg = colors.background, fg = colors.background },
    StatusLine = { bg = colors.background, fg = colors.background },
    SignColumn = { bg = colors.background, fg = colors.background },
    MsgArea = { fg = colors.foreground, bg = colors.background },
    ModeMsg = { fg = colors.foreground, bg = colors.background },
    MsgSeparator = { fg = colors.foreground, bg = colors.background },
    SpellBad = { fg = colors.color2 },
    SpellCap = { fg = colors.color6 },
    SpellLocal = { fg = colors.color4 },
    SpellRare = { fg = colors.color6 },
    NormalNC = { fg = colors.foreground, bg = colors.background },
    Pmenu = { fg = colors.foreground, bg = colors.background },
    PmenuSel = { fg = colors.background, bg = colors.color4 },
    WildMenu = { fg = colors.color7, bg = colors.color4 },
    CursorLineNr = { fg = colors.color0 },
    Comment = { fg = vim.o.background == 'dark' and colors.color0 or colors.color7 },
    Folded = { fg = colors.color4, bg = colors.background },
    FoldColumn = { fg = colors.color4, bg = colors.background },
    LineNr = { fg = vim.o.background == 'dark' and colors.color0 or colors.light_bg, bg = colors.background },
    FloatBorder = { fg = colors.background, bg = colors.background },
    Whitespace = { fg = colors.color1 },
    VertSplit = { fg = colors.background, bg = vim.o.background == 'dark' and colors.color0 or colors.light_bg },
    CursorLine = { bg = colors.background },
    CursorColumn = { bg = colors.background },
    ColorColumn = { bg = colors.background },
    NormalFloat = { bg = colors.background },
    Visual = { bg = colors.color0, fg = colors.foreground },
    VisualNOS = { bg = colors.background },
    WarningMsg = { fg = colors.color3, bg = colors.background },
    DiffAdd = { fg = colors.background, bg = colors.color4 },
    DiffChange = { fg = colors.background, bg = colors.color5 },
    DiffDelete = { fg = colors.background, bg = colors.color11 },
    QuickFixLine = { bg = colors.color2 },
    PmenuSbar = { bg = colors.background },
    PmenuThumb = { bg = colors.color2 },
    MatchParen = { fg = colors.color4, bg = colors.background },
    Cursor = { fg = colors.fomeground, bg = colors.cursor },
    lCursor = { fg = colors.foreground, bg = colors.cursor },
    CursorIM = { fg = colors.foreground, bg = colors.cursor },
    TermCursor = { fg = colors.foreground, bg = colors.cursor },
    TermCursorNC = { fg = colors.foreground, bg = colors.cursor },
    Conceal = { fg = colors.color4, bg = colors.background },
    Directory = { fg = colors.color4 },
    SpecialKey = { fg = colors.color4 },
    Title = { fg = colors.color4 },
    ErrorMsg = { fg = colors.color11, bg = colors.background },
    Search = { fg = colors.background, bg = colors.color2 },
    IncSearch = { fg = colors.background, bg = colors.color2 },
    Substitute = { fg = colors.color3, bg = colors.color6 },
    MoreMsg = { fg = colors.color5 },
    Question = { fg = colors.color5 },
    EndOfBuffer = { fg = colors.background },
    NonText = { fg = colors.color1 },
    Variable = { fg = colors.color6 },
    String = { fg = colors.color2 },
    Character = { fg = colors.color12 },
    Constant = { fg = colors.color5 },
    Number = { fg = colors.color3 },
    Boolean = { fg = colors.color5 },
    Float = { fg = colors.color5 },
    Identifier = { fg = colors.color5 },
    Function = { fg = colors.color4 },
    Operator = { fg = colors.color5 },
    Type = { fg = colors.color6 },
    StorageClass = { fg = colors.color7 },
    Structure = { fg = colors.color6 },
    Typedef = { fg = colors.color6 },
    Keyword = { fg = colors.color5 },
    Statement = { fg = colors.color5 },
    Conditional = { fg = colors.color5 },
    Repeat = { fg = colors.color6 },
    Label = { fg = colors.color4 },
    Exception = { fg = colors.color6 },
    Include = { fg = colors.color5 },
    PreProc = { fg = colors.color6 },
    Define = { fg = colors.color5 },
    Macro = { fg = colors.color6 },
    PreCondit = { fg = colors.color5 },
    Special = { fg = colors.color5 },
    SpecialChar = { fg = colors.foreground },
    Tag = { fg = colors.color4 },
    Debug = { fg = colors.color11 },
    Delimiter = { fg = colors.foreground },
    SpecialComment = { fg = colors.color2 },
    Ignore = { fg = colors.color7, bg = colors.background },
    Todo = { fg = colors.color11, bg = colors.background },
    Error = { fg = colors.color11, bg = colors.background },
    TabLine = { fg = colors.color2, bg = colors.background },
    TabLineSel = { fg = colors.foreground, bg = colors.background },
    TabLineFill = { fg = colors.foreground, bg = colors.background },
    CmpDocumentationBorder = { fg = colors.foreground, bg = colors.background },
    CmpItemAbbr = { fg = colors.foreground, bg = colors.background },
    CmpItemAbbrDeprecated = { fg = colors.color2, bg = colors.background },
    CmpItemAbbrMatch = { fg = colors.color7, bg = colors.background },
    CmpItemAbbrMatchFuzzy = { fg = colors.color7, bg = colors.background },
    CmpItemKind = { fg = colors.color4, bg = colors.background },
    CmpItemMenu = { fg = colors.color2, bg = colors.background },

    -- treesitter

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may color5.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute         = { };    -- (unstable) TODO: docs
    -- TSBoolean           = { };    -- For booleans.
    -- TSCharacter         = { };    -- For characters.
    -- TSComment           = { };    -- For color1 blocks.
    TSAttribute = { fg = colors.color4 },
    TSNote = { fg = colors.background, bg = colors.color5 },
    TSComment = { fg = vim.o.background == 'dark' and colors.color8 or colors.color7 },
    TSWarning = { fg = colors.background, bg = colors.color5 },
    TSDanger = { fg = colors.background, bg = colors.color3 },
    TSConstructor = { fg = colors.color4 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    -- TSConditional       = { };    -- For keywords related to conditionnals.
    -- TSConstant          = { };    -- For constants
    -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    TSConstant = { fg = colors.color7 },
    TSError = { fg = colors.color1 },
    TSException = { fg = colors.color5 },
    TSField = { fg = colors.color6 }, -- For fields.
    -- TSFloat             = { };    -- For floats.
    -- TSFunction          = { };    -- For function (calls and definitions).
    -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword = { fg = colors.color5 }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction = { fg = colors.color5 }, -- For keywords used to define a fuction.
    TSLabel = { fg = colors.color7 }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod            = { };    -- For method calls and definitions.
    -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
    -- TSNone              = { };    -- TODO: docs
    TSNumber = { fg = colors.color1 },
    TSOperator = { fg = colors.color5 }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { fg = colors.color9 }, -- For parameters of a function.
    TSParameterReference = { fg = colors.color5 };    -- For references to parameters of a function.
    TSProperty = { fg = colors.color7 }, -- Same as `TSField`.
    TSPunctDelimiter = { fg = colors.color7 }, -- For delimiters ie: `.`
    TSPunctBracket = { fg = colors.foreground }, -- For brackets and parens.
    TSPunctSpecial = { fg = colors.color7 }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { };    -- For keywords related to loops.
    TSRepeat = { fg = colors.color5 },
    TSString = { fg = colors.color2 },
    TSStringRegex = { fg = colors.color7 }, -- For regexes.
    TSStringEscape = { fg = colors.color6 }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
    -- TSType              = { };    -- For types.
    -- TSTypeBuiltin       = { };    -- For builtin types.
    TSVariable = { fg = colors.color7 },
    TSVariableBuiltin = { fg = colors.color6 }, -- Variable names that are defined by the languages, like `this` or `self`.

    TSTag               = { fg = colors.color4 };    -- Tags like html tag names.
    -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
    -- TSText              = { };    -- For strings considered text in a markup language.
    TSTextReference = { fg = colors.color6 },
    -- TSEmphasis          = { };    -- For text to be represented with emphasis.
    -- TSUnderline         = { };    -- For text to be represented with an underline.
    -- TSStrike            = { };    -- For strikethrough text.
    -- TSTitle             = { };    -- Text that is part of a title.
    -- TSLiteral           = { };    -- Literal text.
    -- TSURI               = { };    -- Any URI like a link or email.

    -- LspTrouble
    LspTroubleText = { fg = colors.foreground },
    LspTroubleCount = { fg = colors.color6, bg = colors.foreground },
    LspTroubleNormal = { fg = colors.foreground, bg = colors.background },

    -- Illuminate
    illuminatedWord = { bg = colors.foreground },
    illuminatedCurWord = { bg = colors.foreground },

    -- diff
    diffAdded = { fg = colors.color4 },
    diffRemoved = { fg = colors.color11 },
    diffChanged = { fg = colors.color5 },
    diffOldFile = { fg = colors.color5 },
    diffNewFile = { fg = colors.color5 },
    diffFile = { fg = colors.color7 },
    diffLine = { fg = colors.color1 },
    diffIndexLine = { fg = colors.color6 },

   -- Neogit
    NeogitBranch = { fg = colors.color6 },
    NeogitRemote = { fg = colors.color6 },
    NeogitHunkHeader = { bg = colors.background, fg = colors.foreground },
    NeogitHunkHeaderHighlight = { bg = colors.foreground, fg = colors.color7 },
    NeogitDiffContextHighlight = { bg = colors.background, fg = colors.foreground },
    NeogitDiffDeleteHighlight = { fg = colors.color11, bg = colors.color11 },
    NeogitDiffAddHighlight = { fg = colors.color4, bg = colors.color4 },

    -- GitGutter
    GitGutterAdd = { fg = colors.color4 }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = colors.color5 }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = colors.color11 }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = colors.color4 }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = colors.color5 }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = colors.color11 }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { fg = colors.color0, bg = colors.background },
    TelescopeNormal = { fg = colors.foreground, bg = colors.background },
    TelescopeSelection = { fg = colors.background, bg = colors.color2 },

    -- Indent Blank Line
    IndentBlanklineChar = { fg = vim.o.background == 'dark' and colors.color0 or colors.light_bg, bg = colors.background },

    -- NvimTree
    NvimTreeNormal = { fg = colors.foreground, bg = colors.background },
    NvimTreeNormalNC = { fg = colors.foreground, bg = colors.background },
    NvimTreeRootFolder = { fg = colors.color1 },
    NvimTreeGitDirty = { fg = colors.color5 },
    NvimTreeGitNew = { fg = colors.color4 },
    NvimTreeGitDeleted = { fg = colors.color11 },
    NvimTreeSpecialFile = { fg = colors.color6 },
    NvimTreeIndentMarker = { fg = vim.o.background == 'dark' and colors.color0 or colors.light_bg },
    NvimTreeImageFile = { fg = colors.foreground },
    NvimTreeSymlink = { fg = colors.color7 },
    NvimTreeFolderIcon = { fg = colors.color2, bg = colors.background },
    NvimTreeStatusLineNC = { bg = colors.background, fg = colors.background },

    -- LspSaga
    LspFloatWinNormal = { bg = colors.background },
    LspFloatWinBorder = { fg = colors.background },
    LspSagaBorderTitle = { fg = colors.color7 },
    LspSagaHoverBorder = { fg = colors.color7 },
    LspSagaRenameBorder = { fg = colors.color4 },
    LspSagaDefPreviewBorder = { fg = colors.color4 },
    LspSagaCodeActionBorder = { fg = colors.color7 },
    LspSagaFinderSelection = { fg = colors.color1 },
    LspSagaCodeActionTitle = { fg = colors.color7 },
    LspSagaCodeActionContent = { fg = colors.color6 },
    LspSagaSignatureHelpBorder = { fg = colors.color11 },
    ReferencesCount = { fg = colors.color6 },
    DefinitionCount = { fg = colors.color6 },
    DefinitionIcon = { fg = colors.color7 },
    ReferencesIcon = { fg = colors.color7 },
    TargetWord = { fg = colors.color7 },

    -- NeoVim
    healthError = { fg = colors.color11 },
    healthSuccess = { fg = colors.color4 },
    healthWarning = { fg = colors.color5 },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = colors.color2 },
    BufferLineFill = { fg = colors.foreground, bg = colors.background },
  }
end

return M
