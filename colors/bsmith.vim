" Vim colorscheme file
" Bradford Smith
" bsmith.vim
" updated: 10/11/2016
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

"{{{--apply new highlights ====================================================
if &background == "dark"
    highlight Normal guifg=#d0d0d0 guibg=#121212 ctermfg=252 ctermbg=233
    set background=dark "this is a fix for the background color switching

    "{{{-vim things
    highlight Cursor guifg=#dadada guibg=#d0d0d0  ctermfg=253 ctermbg=233
    highlight CursorLine guibg=#404040 ctermbg=236
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
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd guifg=#d78787 guibg=#008700 ctermfg=174 ctermbg=28
    highlight DiffChange guifg=#d78787 guibg=#005fff ctermfg=174 ctermbg=27
    highlight DiffDelete guibg=#5f0000 ctermbg=52
    highlight DiffText guifg=#005fff guibg=#767676 ctermfg=27 ctermbg=243
    "}}}

    "{{{-comments
    highlight Comment guifg=#008787 ctermfg=30
    highlight SpecialComment guifg=#5fd7ff ctermfg=81
    highlight TODO gui=bold guifg=#ffff00 guibg=#000000 cterm=bold ctermfg=226 ctermbg=16
    highlight NonText guifg=#767676 ctermfg=243
    highlight Conceal guifg=#dadada guibg=#767676 ctermfg=253 ctermbg=243
    "}}}

    "{{{-types
    highlight Type guifg=#87d700 ctermfg=112
    highlight String guifg=#008700 ctermfg=28
    highlight Character guifg=#ff0000 ctermfg=196
    highlight Constant guifg=#ffff00 ctermfg=226
    highlight link Boolean Constant
    highlight Number guifg=#af5faf ctermfg=133
    highlight link Float Number
    highlight Structure gui=bold guifg=#87d700 cterm=bold ctermfg=112
    highlight link Typedef Structure
    highlight StorageClass guifg=#ff8700 ctermfg=208
    "}}}

    "{{{-other programming language constructs
    highlight Function gui=bold guifg=#5fd7ff cterm=bold ctermfg=81
    highlight Keyword guifg=#ff8700 ctermfg=208
    highlight Identifier guifg=#87d700 ctermfg=112
    highlight Conditional gui=bold guifg=#ff8700 cterm=bold ctermfg=208
    highlight link Repeat Conditional
    highlight Statement guifg=#ff0000 ctermfg=196
    highlight link Operator Function
    highlight Debug guifg=#ffafff ctermfg=219
    highlight Define gui=bold guifg=#5fd7ff cterm=bold ctermfg=81
    highlight link Macro Define
    highlight PreCondit gui=bold guifg=#5f87af cterm=bold ctermfg=67
    highlight PreProc guifg=#d7005f ctermfg=161
    highlight Exception guifg=#005fff ctermfg=27
    "}}}
else "&backgroung == "light"
    highlight Normal guifg=#000000 guibg=#ffffd7 ctermfg=16 ctermbg=230

    "{{{-vim things
    highlight Cursor guifg=#121212 guibg=#000000  ctermfg=233 ctermbg=253
    highlight CursorLine guibg=#dadada ctermbg=253
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
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd guifg=#d78787 guibg=#008700 ctermfg=174 ctermbg=28
    highlight DiffChange guifg=#d78787 guibg=#005fff ctermfg=174 ctermbg=27
    highlight DiffDelete guibg=#5f0000 ctermbg=52
    highlight DiffText guifg=#005fff guibg=#767676 ctermfg=27 ctermbg=243
    "}}}

    "{{{-comments
    highlight Comment guifg=#008787 ctermfg=30
    highlight SpecialComment guifg=#5fafff ctermfg=75
    highlight TODO gui=bold guifg=#000000 guibg=#ffff00 cterm=bold ctermfg=16 ctermbg=226
    highlight NonText guifg=#767676 ctermfg=243
    highlight Conceal guifg=#dadada guibg=#767676 ctermfg=253 ctermbg=243
    "}}}

    "{{{-types
    highlight Type guifg=#00af00 ctermfg=34
    highlight String guifg=#008700 ctermfg=28
    highlight Character guifg=#ff0000 ctermfg=196
    highlight Constant guifg=#ff8700 ctermfg=208
    highlight link Boolean Constant
    highlight Number guifg=#8700af ctermfg=91
    highlight link Float Number
    highlight Structure gui=bold guifg=#00af00 cterm=bold ctermfg=34
    highlight link Typedef Structure
    highlight StorageClass guifg=#ff8700 ctermfg=208
    "}}}

    "{{{-other programming language constructs
    highlight Function gui=bold guifg=#5fafff cterm=bold ctermfg=75
    highlight Keyword guifg=#ff8700 ctermfg=208
    highlight Identifier guifg=#00af00 ctermfg=34
    highlight Conditional gui=bold guifg=#ff8700 cterm=bold ctermfg=208
    highlight link Repeat Conditional
    highlight Statement guifg=#ff0000 ctermfg=196
    highlight link Operator Function
    highlight Debug guifg=#ffafff ctermfg=219
    highlight Define gui=bold guifg=#5fafff cterm=bold ctermfg=75
    highlight link Macro Define
    highlight PreCondit gui=bold guifg=#5f87af cterm=bold ctermfg=67
    highlight PreProc guifg=#d7005f ctermfg=161
    highlight Exception guifg=#005fff ctermfg=27
    "}}}
endif
"}}}===========================================================================

