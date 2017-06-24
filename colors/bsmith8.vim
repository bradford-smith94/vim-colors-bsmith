" Vim colorscheme file
" Bradford Smith
" bsmith16.vim
" updated: 06/23/2017
"=====================


"{{{--required colorscheme lines ==============================================
if exists("syntax_on")
    syntax reset
endif

"set the name of the colorscheme
let g:colors_name = "bsmith8"

if &t_Co < 8
    let g:colors_name = ""
    syntax off
endif
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
    highlight Normal ctermfg=7 ctermbg=0
    set background=dark "this is a fix for the background color switching

    "{{{-vim things
    highlight Cursor ctermfg=7 ctermbg=0
    highlight CursorLine ctermbg=6
    highlight link CursorColumn CursorLine
    highlight LineNR ctermfg=7 ctermbg=6
    highlight CursorLineNR cterm=bold ctermfg=208 ctermbg=233
    highlight link ColorColumn CursorColumn
    highlight Visual cterm=reverse
    highlight VisualNOS ctermbg=236
    highlight SignColumn ctermfg=118 ctermbg=236
    highlight Title ctermfg=202
    highlight Label ctermfg=228
    highlight Directory ctermfg=118
    highlight MatchParen cterm=bold ctermfg=160
    highlight Special ctermfg=161
    highlight link SpecialChar Special
    highlight link Tag Special
    highlight SpecialKey ctermfg=120
    highlight link Question SpecialKey
    highlight Delimiter ctermfg=81
    highlight Underlined cterm=underline
    "}}}

    "{{{-messages
    highlight Error ctermbg=196
    highlight link ErrorMsg Error
    highlight WarningMsg ctermfg=226 ctermbg=236
    highlight MoreMsg ctermfg=243
    highlight link ModeMsg MoreMsg
    "}}}

    "{{{-menus/ui
    highlight StatusLine ctermfg=253 ctermbg=238
    highlight StatusLineNC ctermfg=16 ctermbg=243
    highlight link Tabline LineNR
    highlight link TablineSel CursorLineNR
    highlight link TablineFill CursorLine
    highlight WildMenu ctermfg=118 ctermbg=238
    highlight Folded ctermfg=30 ctermbg=233
    highlight link FoldColumn Folded
    highlight PMenu ctermfg=156 ctermbg=243
    highlight link PMenuThumb PMenu
    highlight PMenuSel cterm=bold ctermfg=156 ctermbg=238
    highlight PMenuSBar ctermfg=253 ctermbg=238
    highlight VertSplit ctermfg=243
    "}}}

    "{{{-searching/spelling
    highlight Search ctermfg=16 ctermbg=228
    highlight IncSearch ctermfg=16 ctermbg=193
    highlight SpellBad cterm=underline ctermfg=160
    highlight SpellCap cterm=underline ctermfg=27
    highlight SpellRare cterm=underline ctermfg=165
    highlight SpellLocal cterm=underline ctermfg=91
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd ctermfg=174 ctermbg=28
    highlight DiffChange ctermfg=174 ctermbg=27
    highlight DiffDelete ctermbg=52
    highlight DiffText ctermfg=27 ctermbg=243
    "}}}

    "{{{-comments
    highlight Comment ctermfg=30
    highlight SpecialComment ctermfg=81
    highlight TODO cterm=bold ctermfg=226 ctermbg=16
    highlight NonText ctermfg=243
    highlight Conceal ctermfg=253 ctermbg=243
    "}}}

    "{{{-types
    highlight Type ctermfg=112
    highlight String ctermfg=28
    highlight Character ctermfg=196
    highlight Constant ctermfg=226
    highlight link Boolean Constant
    highlight Number ctermfg=133
    highlight link Float Number
    highlight Structure cterm=bold ctermfg=112
    highlight link Typedef Structure
    highlight StorageClass ctermfg=208
    "}}}

    "{{{-other programming language constructs
    highlight Function cterm=bold ctermfg=81
    highlight Keyword ctermfg=208
    highlight Identifier ctermfg=112
    highlight Conditional cterm=bold ctermfg=208
    highlight link Repeat Conditional
    highlight Statement ctermfg=196
    highlight link Operator Function
    highlight Debug ctermfg=219
    highlight Define cterm=bold ctermfg=81
    highlight link Macro Define
    highlight PreCondit cterm=bold ctermfg=67
    highlight PreProc ctermfg=161
    highlight Exception ctermfg=27
    "}}}
else "&backgroung == "light"
    highlight Normal ctermfg=16 ctermbg=230

    "{{{-vim things
    highlight Cursor  ctermfg=233 ctermbg=253
    highlight CursorLine ctermbg=253
    highlight link CursorColumn CursorLine
    highlight LineNR ctermfg=16 ctermbg=253
    highlight CursorLineNR cterm=bold ctermfg=208 ctermbg=230
    highlight link ColorColumn CursorColumn
    highlight Visual cterm=reverse
    highlight VisualNOS ctermbg=253
    highlight SignColumn ctermfg=118 ctermbg=253
    highlight Title ctermfg=202
    highlight Label ctermfg=228
    highlight Directory ctermfg=118
    highlight MatchParen cterm=bold ctermfg=160
    highlight Special ctermfg=161
    highlight link SpecialChar Special
    highlight link Tag Special
    highlight SpecialKey ctermfg=34
    highlight link Question SpecialKey
    highlight Delimiter ctermfg=75
    highlight Underlined cterm=underline
    "}}}

    "{{{-messages
    highlight Error ctermbg=196
    highlight link ErrorMsg Error
    highlight WarningMsg ctermfg=165 ctermbg=253
    highlight MoreMsg ctermfg=243
    highlight link ModeMsg MoreMsg
    "}}}

    "{{{-menus/ui
    highlight StatusLine ctermfg=253 ctermbg=238
    highlight StatusLineNC ctermfg=16 ctermbg=243
    highlight link Tabline LineNR
    highlight link TablineSel CursorLineNR
    highlight link TablineFill CursorLine
    highlight WildMenu ctermfg=118 ctermbg=238
    highlight Folded ctermfg=30 ctermbg=230
    highlight link FoldColumn Folded
    highlight PMenu ctermfg=156 ctermbg=243
    highlight link PMenuThumb PMenu
    highlight PMenuSel cterm=bold ctermfg=156 ctermbg=238
    highlight PMenuSBar ctermfg=253 ctermbg=238
    highlight VertSplit ctermfg=243
    "}}}

    "{{{-searching/spelling
    highlight Search ctermfg=16 ctermbg=228
    highlight IncSearch ctermfg=16 ctermbg=193
    highlight SpellBad cterm=underline ctermfg=160 ctermbg=253
    highlight SpellCap cterm=underline ctermfg=27 ctermbg=253
    highlight SpellRare cterm=underline ctermfg=165 ctermbg=253
    highlight SpellLocal cterm=underline ctermfg=91 ctermbg=253
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd ctermfg=174 ctermbg=28
    highlight DiffChange ctermfg=174 ctermbg=27
    highlight DiffDelete ctermbg=52
    highlight DiffText ctermfg=27 ctermbg=243
    "}}}

    "{{{-comments
    highlight Comment ctermfg=30
    highlight SpecialComment ctermfg=75
    highlight TODO cterm=bold ctermfg=16 ctermbg=226
    highlight NonText ctermfg=243
    highlight Conceal ctermfg=253 ctermbg=243
    "}}}

    "{{{-types
    highlight Type ctermfg=34
    highlight String ctermfg=28
    highlight Character ctermfg=196
    highlight Constant ctermfg=208
    highlight link Boolean Constant
    highlight Number ctermfg=91
    highlight link Float Number
    highlight Structure cterm=bold ctermfg=34
    highlight link Typedef Structure
    highlight StorageClass ctermfg=208
    "}}}

    "{{{-other programming language constructs
    highlight Function cterm=bold ctermfg=75
    highlight Keyword ctermfg=208
    highlight Identifier ctermfg=34
    highlight Conditional cterm=bold ctermfg=208
    highlight link Repeat Conditional
    highlight Statement ctermfg=196
    highlight link Operator Function
    highlight Debug ctermfg=219
    highlight Define cterm=bold ctermfg=75
    highlight link Macro Define
    highlight PreCondit cterm=bold ctermfg=67
    highlight PreProc ctermfg=161
    highlight Exception ctermfg=27
    "}}}
endif
"}}}===========================================================================

