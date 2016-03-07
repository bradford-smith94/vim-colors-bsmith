" Vim colorscheme file
" Bradford Smith
" bsmith.vim
" updated: 03/07/2016
"=====================


"{{{--required colorscheme lines ==============================================
hi clear
if exists("syntax_on")
    syntax reset
endif

"set the name of the colorscheme
let g:colors_name = "bsmith"

"use my custom airline theme too, if it is present
if &background == "dark"
    let g:airline_theme = "bsmith_dark"
else
    let g:airline_theme = "bsmith_light"
endif
"}}}===========================================================================

"{{{--clear highlights manually (fixes some errors with defaults) =============
hi clear Normal
hi clear Cursor
hi clear CursorLine
hi clear CursorColumn
hi clear LineNr
hi clear CursorLineNR
hi clear ColorColumn
hi clear Visual
hi clear VisualNOS
hi clear SignColumn
hi clear Title
hi clear Label
hi clear Directory
hi clear MatchParen
hi clear Special
hi clear SpecialChar
hi clear SpecialKey
hi clear Tag
hi clear Delimiter
hi clear Question
hi clear Underlined

hi clear Error
hi clear ErrorMsg
hi clear WarningMsg
hi clear MoreMsg
hi clear ModeMsg
hi clear StatusLine
hi clear StatusLineNC
hi clear TabLine
hi clear TabLineSel
hi clear TabLineFill

hi clear WildMenu
hi clear Folded
hi clear FoldColumn
hi clear PMenu
hi clear PMenuSel
hi clear PMenuSBar
hi clear PMenuThumb
hi clear VertSplit

hi clear Search
hi clear IncSearch
hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal
hi clear SyntasticError
hi clear SyntasticWarning
hi clear SyntasticStyleError
hi clear SyntasticStyleWarning

hi clear DiffAdd
hi clear DiffChange
hi clear DiffDelete
hi clear DiffText

hi clear Comment
hi clear SpecialComment
hi clear TODO
hi clear NonText
hi clear Ignore
hi clear Conceal

hi clear Type
hi clear String
hi clear Character
hi clear Constant
hi clear Boolean
hi clear Number
hi clear Float
hi clear Structure
hi clear Typedef
hi clear StorageClass

hi clear Function
hi clear Keyword
hi clear Identifier
hi clear Conditional
hi clear Repeat
hi clear Statement
hi clear Operator
hi clear Debug
hi clear Define
hi clear Macro
hi clear PreCondit
hi clear PreProc
hi clear Exception
"}}}===========================================================================

"{{{--define modes ============================================================
"set the mode statement (s:m) based on vim/gvim and number of supported colors
if (has('gui_running'))
    let s:m = ' gui'
elseif &t_Co >= 256 || &t_Co == 16 || &t_Co == 8
    let s:m = ' cterm'
else
    let s:m = ' term'
    echoerr "bsmith.vim does not currently support non-color terminals, results may vary!"
    finish
endif

let s:mfg = s:m . "fg="      "mode foreground color statement
let s:mbg = s:m . "bg="      "mode background color statement

let s:b = s:m . "=bold"      "mode bold statement
let s:r = s:m . "=reverse"   "mode reverse statement
let s:u = s:m . "=underline" "mode unerline statement
"}}}===========================================================================

"{{{--define colors ===========================================================
"{{{gui
if (has('gui_running'))
    "{{{black/white
    let s:black = '#000000 '
    let s:white = '#dadada '
    "}}}
    "{{{blues
    let s:blue      = '#005fff '
    "light blue is set in dark/light section
    let s:pale_blue = '#5f87af '
    let s:cyan      = '#008787 '
    "}}}
    "{{{greens
    let s:green      = '#008700 '
    "bright green is set in dark/light section
    let s:pale_green = '#d7ffaf '
    let s:lime       = '#87ff00 '
    let s:light_lime = '#afff87 '
    "}}}
    "{{{greys
    let s:grey       = '#444444 '
    let s:light_grey = '#767676 '
    "}}}
    "{{{oranges
    let s:orange      = '#ff8700 '
    let s:dark_orange = '#ff5f00 '
    "}}}
    "{{{pinks
    let s:pink       = '#d7005f '
    let s:light_pink = '#ffafff '
    "}}}
    "{{{purples
    let s:purple        = '#8700af '
    let s:bright_purple = '#d700ff '
    let s:light_purple  = '#af5faf '
    "}}}
    "{{{reds
    let s:red        = '#d70000 '
    let s:bright_red = '#ff0000 '
    let s:dark_red   = '#5f0000 '
    let s:pale_red   = '#d78787 '
    "}}}
    "{{{yellows
    let s:yellow       = '#ffff00 '
    let s:light_yellow = '#ffff87 '
    "}}}

    "{{{-dark/light colors
    if &background == "dark" "dark theme colors
        let s:bg           = '#121212 '
        let s:fg           = '#d0d0d0 '
        let s:cursor       = s:white
        let s:highlight    = '#303030 '
        let s:light_blue   = '#5fd7ff '
        let s:warn         = s:yellow
        let s:bright_green = '#87d700 '
        let s:special_key  = '#87ff87 '
    else "light theme colors
        let s:bg           = '#ffffd7 '
        let s:fg           = s:black
        let s:cursor       = s:black
        let s:highlight    = s:white
        let s:light_blue   = '#5fafff '
        let s:warn         = s:bright_purple
        let s:bright_green = '#00af00 '
        let s:special_key  = s:bright_green
    endif "end if background dark/light
    "}}}
"}}}
"{{{t_Co >= 256
elseif &t_Co >= 256
    "{{{black/white
    let s:black = '16 '
    let s:white = '253 '
    "}}}
    "{{{blues
    let s:blue      = '27 '
    "light blue is set in dark/light section
    let s:pale_blue = '67 '
    let s:cyan      = '30 '
    "}}}
    "{{{greens
    let s:green      = '28 '
    "bright green is set in dark/light section
    let s:pale_green = '193 '
    let s:lime       = '118 '
    let s:light_lime = '156 '
    "}}}
    "{{{greys
    let s:grey       = '238 '
    let s:light_grey = '243 '
    "}}}
    "{{{oranges
    let s:orange      = '208 '
    let s:dark_orange = '202 '
    "}}}
    "{{{pinks
    let s:pink       = '161 '
    let s:light_pink = '219 '
    "}}}
    "{{{purples
    let s:purple        = '91 '
    let s:bright_purple = '165 '
    let s:light_purple  = '133 '
    "}}}
    "{{{reds
    let s:red        = '160 '
    let s:bright_red = '196 '
    let s:dark_red   = '52 '
    let s:pale_red   = '174 '
    "}}}
    "{{{yellows
    let s:yellow       = '226 '
    let s:light_yellow = '228 '
    "}}}

    "{{{-dark/light colors
    if &background == "dark" "dark theme colors
        let s:bg           = '233 '
        let s:fg           = '252 '
        let s:cursor       = s:white
        let s:highlight    = '236 '
        let s:light_blue   = '81 '
        let s:warn         = s:yellow
        let s:bright_green = '112 '
        let s:special_key  = '120 '
    else "light theme colors
        let s:bg           = '230 '
        let s:fg           = s:black
        let s:cursor       = s:black
        let s:highlight    = s:white
        let s:light_blue   = '75 '
        let s:warn         = s:bright_purple
        let s:bright_green = '34 '
        let s:special_key  = s:bright_green
    endif "end if background dark/light
    "}}}
"}}}
"{{{t_Co == 16
elseif &t_Co == 16
    "{{{black/white
    let s:black = '0 '
    let s:white = '15 '
    "}}}
    "{{{blues
    let s:blue      = '4 '
    "light blue is set in dark/light section
    let s:pale_blue = '12 '
    let s:cyan      = '6 '
    "}}}
    "{{{greens
    let s:green      = '2 '
    "bright green is set in dark/light section
    let s:pale_green = '10 '
    let s:lime       = s:pale_green
    let s:light_lime = s:pale_green
    "}}}
    "{{{greys
    let s:grey       = '8 '
    let s:light_grey = s:grey
    "}}}
    "{{{oranges
    let s:orange      = '11 '
    let s:dark_orange = '3 '
    "}}}
    "{{{pinks
    let s:pink       = '5 '
    let s:light_pink = '13 '
    "}}}
    "{{{purples
    let s:purple        = s:pink
    let s:bright_purple = s:light_pink
    let s:light_purple  = s:light_pink
    "}}}
    "{{{reds
    let s:red        = '9 '
    let s:bright_red = '1 '
    let s:dark_red   = s:red
    let s:pale_red   = s:dark_red
    "}}}
    "{{{yellows
    let s:yellow       = s:dark_orange
    let s:light_yellow = s:orange
    "}}}

    "{{{-dark/light colors
    if &background == "dark" "dark theme colors
        let s:bg           = s:black
        let s:fg           = '7 '
        let s:cursor       = s:white
        let s:highlight    = s:grey
        let s:light_blue   = '14 '
        let s:warn         = s:yellow
        let s:bright_green = s:lime
        let s:special_key  = s:lime
    else "light theme colors
        let s:bg           = '7 '
        let s:fg           = s:black
        let s:cursor       = s:black
        let s:highlight    = s:white
        let s:light_blue   = '14 '
        let s:warn         = s:bright_purple
        let s:bright_green = s:lime
        let s:special_key  = s:bright_green
    endif "end if background dark/light
    "}}}
"}}}
"{{{t_Co == 8
elseif &t_Co == 8
    "{{{black/white
    let s:black = '0 '
    let s:white = '7 '
    "}}}
    "{{{blues
    let s:blue      = '4 '
    "light blue is set in dark/light section
    let s:pale_blue = s:blue
    let s:cyan      = '6 '
    "}}}
    "{{{greens
    let s:green      = '2 '
    "bright green is set in dark/light section
    let s:pale_green = s:green
    let s:lime       = s:pale_green
    let s:light_lime = s:pale_green
    "}}}
    "{{{greys
    let s:grey       = s:black
    let s:light_grey = s:grey
    "}}}
    "{{{oranges
    let s:orange      = s:dark_orange
    let s:dark_orange = '3 '
    "}}}
    "{{{pinks
    let s:pink       = '5 '
    let s:light_pink = s:pink
    "}}}
    "{{{purples
    let s:purple        = s:pink
    let s:bright_purple = s:light_pink
    let s:light_purple  = s:light_pink
    "}}}
    "{{{reds
    let s:red        = '1 '
    let s:bright_red = s:red
    let s:dark_red   = s:red
    let s:pale_red   = s:dark_red
    "}}}
    "{{{yellows
    let s:yellow       = s:dark_orange
    let s:light_yellow = s:orange
    "}}}

    "{{{-dark/light colors
    if &background == "dark" "dark theme colors
        let s:bg           = s:black
        let s:fg           = s:white
        let s:cursor       = s:white
        let s:highlight    = s:grey
        let s:light_blue   = s:cyan
        let s:warn         = s:yellow
        let s:bright_green = s:lime
        let s:special_key  = s:lime
    else "light theme colors
        let s:bg           = s:white
        let s:fg           = s:black
        let s:cursor       = s:black
        let s:highlight    = s:white
        let s:light_blue   = s:cyan
        let s:warn         = s:bright_purple
        let s:bright_green = s:lime
        let s:special_key  = s:bright_green
    endif "end if background dark/light
    "}}}
"}}}
"{{{term
else
    "{{{black/white
    let s:black = ''
    let s:white = ''
    "}}}
    "{{{blues
    let s:blue      = ''
    "light blue is set in dark/light section
    let s:pale_blue = ''
    let s:cyan      = ''
    "}}}
    "{{{greens
    let s:green      = ''
    "bright green is set in dark/light section
    let s:pale_green = ''
    let s:lime       = ''
    let s:light_lime = ''
    "}}}
    "{{{greys
    let s:grey       = ''
    let s:light_grey = ''
    "}}}
    "{{{oranges
    let s:orange      = ''
    let s:dark_orange = ''
    "}}}
    "{{{pinks
    let s:pink       = ''
    let s:light_pink = ''
    "}}}
    "{{{purples
    let s:purple        = ''
    let s:bright_purple = ''
    let s:light_purple  = ''
    "}}}
    "{{{reds
    let s:red        = ''
    let s:bright_red = ''
    let s:dark_red   = ''
    let s:pale_red   = ''
    "}}}
    "{{{yellows
    let s:yellow       = ''
    let s:light_yellow = ''
    "}}}

    "{{{-dark/light colors
    if &background == "dark" "dark theme colors
        let s:bg           = ''
        let s:fg           = ''
        let s:cursor       = s:white
        let s:highlight    = ''
        let s:light_blue   = ''
        let s:warn         = s:yellow
        let s:bright_green = ''
        let s:special_key  = ''
    else "light theme colors
        let s:bg           = ''
        let s:fg           = s:black
        let s:cursor       = s:black
        let s:highlight    = s:white
        let s:light_blue   = ''
        let s:warn         = s:bright_purple
        let s:bright_green = ''
        let s:special_key  = s:bright_green
    endif "end if background dark/light
    "}}}
endif
"}}}
"}}}===========================================================================

"{{{--do highlights ===========================================================
"{{{-vim things
if &background == "dark"
    exe "hi Normal" . s:mfg . s:fg . s:mbg . s:bg
    set background=dark "this is a fix for the background color switching
else
    exe "hi Normal" . s:mfg . s:fg . s:mbg . s:bg
endif
exe "hi Cursor" . s:mfg . s:cursor . s:mbg . s:fg
exe "hi CursorLine" . s:mbg . s:highlight
hi link CursorColumn CursorLine
exe "hi LineNR" . s:mfg . s:fg . s:mbg . s:highlight
exe "hi CursorLineNR" . s:b . s:mfg . s:orange . s:mbg . s:bg
hi link ColorColumn CursorColumn
exe "hi Visual" . s:r
exe "hi VisualNOS" . s:mbg . s:highlight
exe "hi SignColumn" . s:mfg . s:lime . s:mbg . s:highlight
exe "hi Title" . s:mfg . s:dark_orange
exe "hi Label" . s:mfg . s:light_yellow
exe "hi Directory" . s:mfg . s:lime
exe "hi MatchParen" . s:b . s:mfg . s:red
exe "hi Special" . s:mfg . s:pink
hi link SpecialChar Special
hi link Tag Special
exe "hi SpecialKey" . s:mfg . s:special_key
hi link Question SpecialKey
exe "hi Delimiter" . s:mfg . s:light_blue
exe "hi Underlined" . s:u
"}}}

"{{{-messages
exe "hi Error" . s:mbg . s:bright_red
hi link ErrorMsg Error
exe "hi WarningMsg" . s:mfg . s:warn . s:mbg . s:highlight
exe "hi MoreMsg" . s:mfg . s:light_grey
hi link ModeMsg MoreMsg
"}}}

"{{{-menus/ui
exe "hi StatusLine" . s:mfg . s:white . s:mbg . s:grey
exe "hi StatusLineNC" . s:mfg . s:black . s:mbg . s:light_grey
hi link Tabline LineNR
hi link TablineSel CursorLineNR
hi link TablineFill CursorLine
exe "hi WildMenu" . s:mfg . s:lime . s:mbg . s:grey
exe "hi Folded" . s:mfg . s:pale_blue . s:mbg . s:black
hi link FoldColumn Folded
exe "hi PMenu" . s:mfg . s:light_lime . s:mbg . s:light_grey
hi link PMenuThumb PMenu
exe "hi PMenuSel" . s:b . s:mfg . s:light_lime . s:mbg . s:grey
exe "hi PMenuSBar" . s:mfg . s:white . s:mbg . s:grey
exe "hi VertSplit" . s:mfg . s:light_grey
"}}}

"{{{-searching/spelling
exe "hi Search" . s:mfg . s:black . s:mbg . s:light_yellow
exe "hi IncSearch" . s:mfg . s:black . s:mbg . s:pale_green
if &background == "dark"
    exe "hi SpellBad" . s:u . s:mfg . s:red
    exe "hi SpellCap" . s:u . s:mfg . s:blue
    exe "hi SpellRare" . s:u . s:mfg . s:bright_purple
    exe "hi SpellLocal" . s:u . s:mfg . s:purple
else
    exe "hi SpellBad" . s:u . s:mfg . s:red . s:mbg . s:white
    exe "hi SpellCap" . s:u . s:mfg . s:blue . s:mbg . s:white
    exe "hi SpellRare" . s:u . s:mfg . s:bright_purple . s:mbg . s:white
    exe "hi SpellLocal" . s:u . s:mfg . s:purple . s:mbg . s:white
endif
hi link SyntasticError SpellBad
hi link SyntasticWarning WarningMsg
hi link SyntasticStyleError SyntasticError
hi link SyntasticStyleWarning SyntasticWarning
"}}}

"{{{-vimdiff colors
exe "hi DiffAdd" . s:mfg . s:pale_red . s:mbg . s:green
exe "hi DiffChange" . s:mfg . s:pale_red . s:mbg . s:blue
exe "hi DiffDelete" . s:mbg . s:dark_red
exe "hi DiffText" . s:mfg . s:blue . s:mbg . s:light_grey
"}}}

"{{{-comments
exe "hi Comment" . s:mfg . s:cyan
exe "hi SpecialComment" . s:mfg . s:light_blue
if &background == "dark"
    exe "hi TODO" . s:b . s:mfg . s:yellow . s:mbg . s:black
else
    exe "hi TODO" . s:b . s:mfg . s:black . s:mbg . s:yellow
endif
exe "hi NonText" . s:mfg . s:light_grey
hi link Ignore NonText
exe "hi Conceal" s:mfg . s:white . s:mbg . s:light_grey
"}}}

"{{{-types
exe "hi Type" . s:mfg . s:bright_green
exe "hi String" . s:mfg . s:green
exe "hi Character" . s:mfg . s:bright_red
if &background == "dark"
    exe "hi Constant" . s:mfg . s:yellow
else
    exe "hi Constant" . s:mfg . s:orange
endif
hi link Boolean Constant
if &background == "dark"
    exe "hi Number" . s:mfg . s:light_purple
else
    exe "hi Number" . s:mfg . s:purple
endif
hi link Float Number
exe "hi Structure" . s:b . s:mfg . s:bright_green
hi link Typedef Structure
exe "hi StorageClass" . s:mfg . s:orange
"}}}

"{{{-other programming language constructs
exe "hi Function" . s:b . s:mfg . s:light_blue
exe "hi Keyword" . s:mfg . s:orange
exe "hi Identifier" . s:mfg . s:bright_green
exe "hi Conditional" . s:b . s:mfg . s:orange
hi link Repeat Conditional
exe "hi Statement" . s:mfg . s:bright_red
hi link Operator Normal
exe "hi Debug" . s:mfg . s:light_pink
exe "hi Define" . s:b . s:mfg . s:light_blue
hi link Macro Define
exe "hi PreCondit" . s:b . s:mfg . s:pale_blue
exe "hi PreProc" . s:mfg . s:pink
exe "hi Exception" . s:mfg . s:blue
"}}}
"}}}===========================================================================

