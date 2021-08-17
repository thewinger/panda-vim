local lush = require('lush')
local hsl = lush.hsl

local bg = hsl("#1c1e26")
local fg = hsl("#E6E6E6")
local black = hsl("#292A2B")
local gray = hsl("#373B41")
local white = hsl("#E6E6E6")
local red = hsl("#FF2C6D")
local green = hsl("#19F9D8")
local yellow = hsl("#FFB86C")
local blue = hsl("#45A9F9")
local magenta = hsl("#FF75B5")
local purple = hsl("#B084EB")
local cyan = hsl("#46FCFF")
local orange = hsl("#FFB86C")
local light_red = hsl("#FF4B82")
local light_green = hsl("#6FE7D2")
local light_yellow = hsl("#FFCC95")
local light_blue = hsl("#6FC1FF")
local light_magenta = hsl("#FF9AC1")
local light_purple = hsl("#BCAAFE")
local light_cyan = hsl("#76F3F5")
local light_orange = hsl("#FFCC95")
local light_white = hsl("#FFFFFF")
local light_gray = hsl("#757575")

local test = hsl("#cdcdcd")
local dontknow = hsl("#FF00FF")

local theme = lush(function()
  return {
    Cursor       { fg = bg, bg = fg}, -- character under the cursor
    Comment      { fg = light_gray.li(20), gui = "italic" }, -- any comment
    ColorColumn  { bg = gray  }, -- used for the columns set with 'colorcolumn'
    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorLine   { bg = bg }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    Directory    { fg = blue }, -- directory names (and other special names in listings)
    DiffAdd      { fg = bg, bg = green, gui="bold" }, -- diff mode: Added line |diff.txt|
    DiffChange   { fg = purple, gui = "underline" }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = light_red }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg = purple, gui="bold"}, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { fg = red, }, -- error messages on the command line
    VertSplit    { fg = fg }, -- the column separating vertically split windows
    Folded       { fg = light_gray, bg = bg }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    -- SignColumn   { }, -- column where |signs| are displayed
    IncSearch    { fg = black, bg = cyan }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { fg = cyan, bg = black }, -- |:substitute| replacement text highlighting
    LineNr       { fg = light_gray }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = magenta }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { fg = magenta, gui = "underline"}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { fg = cyan }, -- |more-prompt|
    -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = fg }, -- normal text
    NormalFloat  { Normal }, -- Normal text in floating windows.
    NormalNC     { fg = light_gray }, -- normal text in non-current windows
    Pmenu        { Normal, bg = bg }, -- Popup menu: normal item.
    PmenuSel     { fg = bg, bg = magenta }, -- Popup menu: selected item.
    PmenuSbar    { fg = fg }, -- Popup menu: scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg = cyan }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { fg = green, gui = "underline"}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { gui = "underline"}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { fg = light_gray, bg = gray }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = fg, bg = bg, gui = "bold"}, -- status line of current window
    StatusLineNC { fg = light_gray }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { fg = gray.readable(), bg = gray }, -- tab pages line, not active tab page label
    -- TabLineFill  { }, -- tab pages line, where there are no labels
    TabLineSel   { fg = magenta }, -- tab pages line, active tab page label
    Title        { fg = fg, gui = "bold"}, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { fg = bg, bg = fg }, -- Visual mode selection
    VisualNOS    { Visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = orange }, -- warning messages
    Whitespace   { fg = light_gray }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { PmenuSel }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = orange }, -- (preferred) any constant
    String         { fg = green }, --   a string constant: "this is a string"
    Character      { fg = green }, --  a character constant: 'c', '\n'
    Number         { fg = orange }, --   a number constant: 234, 0xff
    Boolean        { fg = orange }, --  a boolean constant: TRUE, false
    Float          { fg = orange }, --    a floating point constant: 2.3e10

    Identifier     { fg = orange }, -- (preferred) any variable name
    Function       { fg = blue }, -- function name (also: methods for classes)

    Statement      { fg = magenta }, -- (preferred) any statement
    Conditional    { fg = magenta, gui = "italic" }, --  if, then, else, endif, switch, etc.
    Repeat         { fg = magenta, gui = "italic" }, --   for, do, while, etc.
    Label          { fg = green }, --    case, default, etc.
    Operator       { fg = magenta }, -- "sizeof", "+", "*", etc.
    Keyword        { fg = magenta }, --  any other keyword
    Exception      { fg = magenta }, --  try, catch, throw

    PreProc        { fg = light_purple }, -- (preferred) generic Preprocessor
    Include        { fg = light_purple }, --  preprocessor #include
    Define         { fg = light_purple }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = orange }, -- (preferred) int, long, char, etc.
    StorageClass   { fg = orange }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        { fg = fg }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    Tag            { fg = red }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error           { fg = red }, -- (preferred) any erroneous construct

    Todo            { fg = fg, gui = "inverse, bold, italic" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText                     { fg = white, bg = gray }, -- used for highlighting "text" references
    LspReferenceRead                     { LspReferenceText }, -- used for highlighting "read" references
    LspReferenceWrite                    { LspReferenceText }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { fg = red, gui = "undercurl", sp = red }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { fg = light_yellow }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     { fg = blue }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            { fg = cyan }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError         { LspDiagnosticsDefaultError, gui = "underline"}, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       { LspDiagnosticsDefaultWarning, gui = "underline"}, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation   { LspDiagnosticsDefaultInformation, gui = "underline"}, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint          { LspDiagnosticsDefaultHint, gui = "underline "}, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              { LspDiagnosticsDefaultError }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            { LspDiagnosticsDefaultWarning }, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation        { LspDiagnosticsDefaultInformation }, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               { LspDiagnosticsDefaultHint }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    TSAnnotation          { fg = blue };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    TSBoolean             { Boolean };    -- For booleans.
    TSCharacter           { Character };    -- For characters.
    TSComment             { Comment };    -- For comment blocks.
    TSConstructor         { fg = fg };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    TSConditional         { Conditional };    -- For keywords related to conditionnals.
    TSConstant            { Constant };    -- For constants
    TSConstBuiltin        { Constant };    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro          { Constant };    -- For constants that are defined by macros: `NULL` in C.
    TSError               { fg = red };    -- For syntax/parser errors.
    TSException           { fg = dontknow };    -- For exception related keywords.
    TSField               { fg = orange };    -- For fields.
    TSFloat               { Float };    -- For floats.
    TSFunction            { Function };    -- For function (calls and definitions).
    TSFuncBuiltin         { Function };    -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro           { fg = cyan };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude             { Include };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword             { fg = magenta };    -- For keywords that don't fall in previous categories.
    TSKeywordFunction     { TSKeyword };    -- For keywords used to define a fuction.
    TSLabel               { Label };    -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod              { fg = light_purple };    -- For method calls and definitions.
    TSNamespace           { fg = light_purple };    -- For identifiers referring to modules and namespaces.
    TSNone                { fg = dontknow };    -- TODO: docs
    TSNumber              { Number };    -- For all numbers
    TSOperator            { fg = magenta };    -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter           { fg = blue };    -- For parameters of a function.
    TSParameterReference  { TSParameter };    -- For references to parameters of a function.
    TSProperty            { TSField };    -- Same as `TSField`.
    TSPunctDelimiter      { fg = fg };    -- For delimiters ie: `.`
    TSPunctBracket        { fg = fg };    -- For brackets and parens.
    TSPunctSpecial        { fg = fg };    -- For special punctutation that does not fall in the catagories before.
    TSRepeat              { Repeat };    -- For keywords related to loops.
    TSString              { String };    -- For strings.
    TSStringRegex         { String };    -- For regexes.
    TSStringEscape        { fg = cyan };    -- For escape characters within a string.
    TSStringspecial       { fg = cyan };
    TSSymbol              { fg = fg };    -- For identifiers referring to symbols or atoms.
    TSType                { Type };    -- For types.
    TSTypeBuiltin         { Type };    -- For builtin types.
    TSVariable            { fg = fg };    -- Any variable name that does not have another highlight.
    TSVariableBuiltin     { Identifier };    -- Variable names that are defined by the languages, like `this` or `self`.

    TSTag                 { Tag };    -- Tags like html tag names.
    TSTagDelimiter        { fg = orange };    -- Tag delimiter like `<` `>` `/`
    TSText                { String };    -- For strings considered text in a markup language.
    TSEmphasis            { String, gui = "underline"};    -- For text to be represented with emphasis.
    TSUnderline           { Underlined };    -- For text to be represented with an underline.
    TSStrike              { fg = fg };    -- For strikethrough text.
    TSStrong              { fg = green, gui = "bold" };
    TSTitle               { Title };    -- Text that is part of a title.
    TSLiteral             { fg = light_yellow };    -- Literal text.
    TSURI                 { fg = blue, gui = "underline"};    -- Any URI like a link or email.

    TSWarning             { WarningMsg };
    TSDanger              { TSError };

        -- CSS
    cssAttrComma          {fg = dontknow},
    cssAttributeSelector  {fg = dontknow},
    cssBraces             {fg = dontknow},
    cssClassName          {fg = dontknow},
    cssClassNameDot       {fg = dontknow},
    cssDefinition         {fg = dontknow},
    cssFontAttr           {fg = dontknow},
    cssFontDescriptor     {cssDefinition},
    cssFunctionName       {fg = dontknow},
    cssIdentifier         {fg = dontknow},
    cssImportant          {cssDefinition},
    cssInclude            {fg = dontknow},
    cssIncludeKeyword     {cssDefinition},
    cssMediaType          {fg = dontknow},
    cssProp               {fg = dontknow},
    cssPseudoClassId      {fg = dontknow},
    cssSelectorOp         {cssDefinition},
    cssSelectorOp2        {cssDefinition},
    cssTagName            {fg = dontknow},
    cssTSType   { fg = orange },
    cssTSProperty { fg = magenta},
    cssTSNumber { fg = fg },
    cssTSString { fg = fg },

        -- HTML
    htmlArg {fg = purple, gui = "bold italic"},
    htmlBold {fg = yellow, gui = "bold"},
    htmlItalic {fg = purple, gui = "italic"},
    htmlLink {fg = cyan, gui = "underline"},
    htmlH1 {fg = red},
    htmlH2 {htmlH1},
    htmlH3 {htmlH1},
    htmlH4 {htmlH1},
    htmlH5 {htmlH1},
    htmlH6 {htmlH1},
    htmlSpecialChar {fg = yellow},
    htmlSpecialTagName {fg = red},
    htmlTag {TSTag},
    htmlEndTag {htmlTag},
    htmlTagN {fg = red},
    htmlTagName {fg = red},
    htmlTitle {fg = fg},
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrapu
