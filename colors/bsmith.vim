" Vim colorscheme file
" Bradford Smith
" bsmith.vim
" updated: 09/21/2016
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
"{{{-vim things
if &background == "dark"
    highlight Normal guifg=#d0d0d0 guibg=#121212 ctermfg=252 ctermbg=233
    set background=dark "this is a fix for the background color switching

    highlight Cursor guifg=#dadada guibg=#d0d0d0  ctermfg=253 ctermbg=233
    highlight CursorLine guibg=#303030 ctermbg=236
    highlight link CursorColumn CursorLine
else
    highlight Normal guifg=#000000 guibg=#ffffd7 ctermfg=16 ctermbg=230

    highlight Cursor guifg=#121212 guibg=#000000  ctermfg=233 ctermbg=253
    highlight CursorLine guibg=#ffffd7 ctermbg=253
    highlight link CursorColumn CursorLine
endif
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
exe "hi Folded" . s:mfg . s:cyan . s:mbg . s:bg
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
hi link Operator Function
exe "hi Debug" . s:mfg . s:light_pink
exe "hi Define" . s:b . s:mfg . s:light_blue
hi link Macro Define
exe "hi PreCondit" . s:b . s:mfg . s:pale_blue
exe "hi PreProc" . s:mfg . s:pink
exe "hi Exception" . s:mfg . s:blue
"}}}
"}}}===========================================================================

