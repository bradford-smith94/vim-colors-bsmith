" Vim colorscheme file
" Bradford Smith
" bsmith.vim
" updated: 09/24/2016
"=====================


"{{{--required colorscheme lines ==============================================
if exists("syntax_on")
    syntax reset
endif

"set the name of the colorscheme
let g:colors_name = "bsmith"
"}}}===========================================================================

"{{{--clear highlights manually ===============================================
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

"{{{--define colors ===========================================================
    "gui black #000000
    "gui white #dadada
    "gui blue #005fff
    "gui pale blue #5f87af
    "gui cyan #008787
    "gui green #008700
    "gui pale green #d7ffaf
    "gui lime #87ff00
    "gui light lime #afff87
    "gui grey #444444
    "gui light grey #767676
    "gui orange      #ff8700
    "gui dark orange #ff5f00
    "gui pink       #d7005f
    "gui light pink #ffafff
    "gui purple        #8700af
    "gui bright purple #d700ff
    "gui light purple  #af5faf
    "gui red        #d70000
    "gui bright red #ff0000
    "gui dark red   #5f0000
    "gui pale red   #d78787
    "gui yellow       #ffff00
    "gui light yellow #ffff87

    "gui dark specific
        "gui bg           #121212
        "gui fg           #d0d0d0
        "gui cursor       white
        "gui highlight    #303030
        "gui light blue   #5fd7ff
        "gui warn         yellow
        "gui bright green #87d700
        "gui special key  #87ff87
    "gui light specific
        "gui bg           #ffffd7
        "gui fg           black
        "gui cursor       black
        "gui highlight    white
        "gui light blue   #5fafff
        "gui warn         bright purple
        "gui bright green #00af00
        "gui special key  bright_green
    "cterm black 16
    "cterm white 253
    "cterm blue      27
    "cterm pale_blue 67
    "cterm cyan      30
    "cterm green      28
    "cterm pale_green 193
    "cterm lime       118
    "cterm light_lime 156
    "cterm grey       238
    "cterm light_grey 243
    "cterm orange      208
    "cterm dark_orange 202
    "cterm pink       161
    "cterm light_pink 219
    "cterm purple        91
    "cterm bright_purple 165
    "cterm light_purple  133
    "cterm red        160
    "cterm bright_red 196
    "cterm dark_red   52
    "cterm pale_red   174
    "cterm yellow       226
    "cterm light_yellow 228

    "cterm dark specifics
        "cterm bg           233
        "cterm fg           252
        "cterm cursor       = s:white
        "cterm highlight    236
        "cterm light_blue   81
        "cterm warn         = s:yellow
        "cterm bright_green 112
        "cterm special_key  120
    "cterm light specifics
        "cterm bg           230
        "cterm fg           = s:black
        "cterm cursor       = s:black
        "cterm highlight    = s:white
        "cterm light_blue   75
        "cterm warn         = s:bright_purple
        "cterm bright_green 34
        "cterm special_key  = s:bright_green
"}}}===========================================================================

"{{{--do highlights ===========================================================
if &background == "dark"
    highlight Normal guifg=#d0d0d0 guibg=#121212 ctermfg=252 ctermbg=233
    set background=dark "this is a fix for the background color switching

    "{{{-vim things
    highlight Cursor guifg=#dadada guibg=#d0d0d0  ctermfg=253 ctermbg=233
    highlight CursorLine guibg=#303030 ctermbg=236
    highlight link CursorColumn CursorLine
    highlight LineNR guifg=#d0d0d0 guibg=#303030 ctermfg=252 ctermbg=236
    highlight CursorLineNR gui=bold guifg=#ff8700 guibg=#121212 cterm=bold ctermfg=208 ctermbg=233
    highlight link ColorColumn CursorColumn
    highlight Visual gui=reverse cterm=reverse
    highlight VisualNOS guibg=#303030 ctermbg=236
    highlight SignColumn guifg=#87ff00 guibg=#303030 ctermfg=118 ctermbg=236
    highlight Title guifg=#ff5f00 ctermfg=202
    highlight Label guifg=#ffff87 ctermfg=228
    highlight Directory guifg=#87ff00 ctermfg=118
    highlight MatchParen gui=bold guifg=#d70000 cterm=bold ctermfg=160
    highlight Special guifg=#d7005f ctermfg=161
    highlight link SpecialChar Special
    highlight link Tag Special
    highlight SpecialKey guifg=#87ff87 ctermfg=120
    highlight link Question SpecialKey
    highlight Delimiter guifg=#5fd7ff ctermfg=81
    highlight Underlined gui=underline cterm=underline
    "}}}

    "{{{-messages
    highlight Error guibg=#ff0000 ctermbg=196
    highlight link ErrorMsg Error
    highlight WarningMsg guifg=#ffff00 guibg=#303030 ctermfg=226 ctermbg=236
    highlight MoreMsg guifg=#767676 ctermfg=243
    highlight link ModeMsg MoreMsg
    "}}}

    "{{{-menus/ui
    highlight StatusLine guifg=#dadada guibg=#444444 ctermfg=253 ctermbg=238
    highlight StatusLineNC guifg=#000000 guibg=#767676 ctermfg=16 ctermbg=243
    highlight link Tabline LineNR
    highlight link TablineSel CursorLineNR
    highlight link TablineFill CursorLine
    highlight WildMenu guifg=#87ff00 guibg=#444444 ctermfg=118 ctermbg=238
    highlight Folded guifg=#008787 guibg=#121212 ctermfg=30 ctermbg=233
    highlight link FoldColumn Folded
    highlight PMenu guifg=#afff87 guibg=#767676 ctermfg=156 ctermbg=243
    highlight link PMenuThumb PMenu
    highlight PMenuSel gui=bold guifg=#afff87 guibg=#444444 cterm=bold ctermfg=156 ctermbg=238
    highlight PMenuSBar guifg=#dadada guibg=#444444 ctermfg=253 ctermbg=238
    highlight VertSplit guifg=#767676 ctermfg=243
    "}}}

    "{{{-searching/spelling
    highlight Search guifg=#000000 guibg=#ffff87 ctermfg=16 ctermbg=228
    highlight IncSearch guifg=#000000 guibg=#d7ffaf ctermfg=16 ctermbg=193
    highlight SpellBad gui=underline guifg=#d70000 cterm=underline ctermfg=160
    highlight SpellCap gui=underline guifg=#005fff cterm=underline ctermfg=27
    highlight SpellRare gui=underline guifg=#d700ff cterm=underline ctermfg=165
    highlight SpellLocal gui=underline guifg=#8700af cterm=underline ctermfg=91
    highlight link SyntasticError SpellBad
    highlight link SyntasticWarning WarningMsg
    highlight link SyntasticStyleError SyntasticError
    highlight link SyntasticStyleWarning SyntasticWarning
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd guifg=#d78787 guibg=#008700 ctermfg=174 ctermbg=28
    highlight DiffChange guifg=#d78787 guibg=#005fff ctermfg=174 ctermbg=27
    highlight DiffDelete guibg=#5f0000 ctermbg=52
    highlight DiffText guifg=#005fff guibg=#767676 ctermfg=27 ctermbg=243
    "}}}

    "{{{-comments
    "}}}

    "{{{-types
    "}}}

    "{{{-other programming language constructs
    "}}}
else
    highlight Normal guifg=#000000 guibg=#ffffd7 ctermfg=16 ctermbg=230

    "{{{-vim things
    highlight Cursor guifg=#121212 guibg=#000000  ctermfg=233 ctermbg=253
    highlight CursorLine guibg=#ffffd7 ctermbg=253
    highlight link CursorColumn CursorLine
    highlight LineNR guifg=#000000 guibg=#dadada ctermfg=16 ctermbg=253
    highlight CursorLineNR gui=bold guifg=#ff8700 guibg=#ffffd7 cterm=bold ctermfg=208 ctermbg=230
    highlight link ColorColumn CursorColumn
    highlight Visual gui=reverse cterm=reverse
    highlight VisualNOS guibg=#dadada ctermbg=253
    highlight SignColumn guifg=#87ff00 guibg=#dadada ctermfg=118 ctermbg=253
    highlight Title guifg=#ff5f00 ctermfg=202
    highlight Label guifg=#ffff87 ctermfg=228
    highlight Directory guifg=#87ff00 ctermfg=118
    highlight MatchParen gui=bold guifg=#d70000 cterm=bold ctermfg=160
    highlight Special guifg=#d7005f ctermfg=161
    highlight link SpecialChar Special
    highlight link Tag Special
    highlight SpecialKey guifg=#00af00 ctermfg=34
    highlight link Question SpecialKey
    highlight Delimiter guifg=#5fafff ctermfg=75
    highlight Underlined gui=underline cterm=underline
    "}}}

    "{{{-messages
    highlight Error guibg=#ff0000 ctermbg=196
    highlight link ErrorMsg Error
    highlight WarningMsg guifg=#d700ff guibg=#dadada ctermfg=165 ctermbg=253
    highlight MoreMsg guifg=#767676 ctermfg=243
    highlight link ModeMsg MoreMsg
    "}}}

    "{{{-menus/ui
    highlight StatusLine guifg=#dadada guibg=#444444 ctermfg=253 ctermbg=238
    highlight StatusLineNC guifg=#000000 guibg=#767676 ctermfg=16 ctermbg=243
    highlight link Tabline LineNR
    highlight link TablineSel CursorLineNR
    highlight link TablineFill CursorLine
    highlight WildMenu guifg=#87ff00 guibg=#444444 ctermfg=118 ctermbg=238
    highlight Folded guifg=#008787 guibg=#ffffd7 ctermfg=30 ctermbg=230
    highlight link FoldColumn Folded
    highlight PMenu guifg=#afff87 guibg=#767676 ctermfg=156 ctermbg=243
    highlight link PMenuThumb PMenu
    highlight PMenuSel gui=bold guifg=#afff87 guibg=#444444 cterm=bold ctermfg=156 ctermbg=238
    highlight PMenuSBar guifg=#dadada guibg=#444444 ctermfg=253 ctermbg=238
    highlight VertSplit guifg=#767676 ctermfg=243
    "}}}

    "{{{-searching/spelling
    highlight Search guifg=#000000 guibg=#ffff87 ctermfg=16 ctermbg=228
    highlight IncSearch guifg=#000000 guibg=#d7ffaf ctermfg=16 ctermbg=193
    highlight SpellBad gui=underline guifg=#d70000 guibg=#dadada cterm=underline ctermfg=160 ctermbg=253
    highlight SpellCap gui=underline guifg=#005fff guibg=#dadada cterm=underline ctermfg=27 ctermbg=253
    highlight SpellRare gui=underline guifg=#d700ff guibg=#dadada cterm=underline ctermfg=165 ctermbg=253
    highlight SpellLocal gui=underline guifg=#8700af guibg=#dadada cterm=underline ctermfg=91 ctermbg=253
    highlight link SyntasticError SpellBad
    highlight link SyntasticWarning WarningMsg
    highlight link SyntasticStyleError SyntasticError
    highlight link SyntasticStyleWarning SyntasticWarning
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd guifg=#d78787 guibg=#008700 ctermfg=174 ctermbg=28
    highlight DiffChange guifg=#d78787 guibg=#005fff ctermfg=174 ctermbg=27
    highlight DiffDelete guibg=#5f0000 ctermbg=52
    highlight DiffText guifg=#005fff guibg=#767676 ctermfg=27 ctermbg=243
    "}}}

    "{{{-comments
    "}}}

    "{{{-types
    "}}}

    "{{{-other programming language constructs
    "}}}
endif

"{{{-comments
exe "hi Comment" . s:mfg . s:cyan
exe "hi SpecialComment" . s:mfg . s:light_blue
if &background == "dark"
    exe "hi TODO" . s:b . s:mfg . s:yellow . s:mbg . s:black
else
    exe "hi TODO" . s:b . s:mfg . s:black . s:mbg . s:yellow
endif
exe "hi NonText" . s:mfg . s:light_grey
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
highlight link Boolean Constant
if &background == "dark"
    exe "hi Number" . s:mfg . s:light_purple
else
    exe "hi Number" . s:mfg . s:purple
endif
highlight link Float Number
exe "hi Structure" . s:b . s:mfg . s:bright_green
highlight link Typedef Structure
exe "hi StorageClass" . s:mfg . s:orange
"}}}

"{{{-other programming language constructs
exe "hi Function" . s:b . s:mfg . s:light_blue
exe "hi Keyword" . s:mfg . s:orange
exe "hi Identifier" . s:mfg . s:bright_green
exe "hi Conditional" . s:b . s:mfg . s:orange
highlight link Repeat Conditional
exe "hi Statement" . s:mfg . s:bright_red
highlight link Operator Function
exe "hi Debug" . s:mfg . s:light_pink
exe "hi Define" . s:b . s:mfg . s:light_blue
highlight link Macro Define
exe "hi PreCondit" . s:b . s:mfg . s:pale_blue
exe "hi PreProc" . s:mfg . s:pink
exe "hi Exception" . s:mfg . s:blue
"}}}
"}}}===========================================================================

