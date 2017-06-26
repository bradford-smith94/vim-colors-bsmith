" Vim colorscheme file
" Bradford Smith
" bsmith16.vim
" updated: 06/25/2017
"=====================


"{{{--required colorscheme lines ==============================================
if exists("syntax_on")
    syntax reset
endif

"set the name of the colorscheme
let g:colors_name = "bsmith16"

if &t_Co < 0
    if &t_Co == 8
        colorscheme bsmith8
        finish
    endif
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
    highlight CursorLineNR cterm=bold ctermfg=3 ctermbg=0
    highlight link ColorColumn CursorColumn
    highlight Visual cterm=reverse
    highlight VisualNOS ctermbg=8
    highlight SignColumn ctermfg=10 ctermbg=8
    highlight Title ctermfg=3
    highlight Label ctermfg=11
    highlight Directory ctermfg=10
    highlight MatchParen cterm=bold ctermfg=9
    highlight Special ctermfg=13
    highlight link SpecialChar Special
    highlight link Tag Special
    highlight SpecialKey ctermfg=10
    highlight link Question SpecialKey
    highlight Delimiter ctermfg=14
    highlight Underlined cterm=underline
    "}}}

    "{{{-messages
    highlight Error ctermbg=9
    highlight link ErrorMsg Error
    highlight WarningMsg ctermfg=11 ctermbg=0
    highlight MoreMsg ctermfg=8
    highlight link ModeMsg MoreMsg
    "}}}

    "{{{-menus/ui
    highlight StatusLine ctermfg=15 ctermbg=0
    highlight StatusLineNC ctermfg=0 ctermbg=8
    highlight link Tabline LineNR
    highlight link TablineSel CursorLineNR
    highlight link TablineFill CursorLine
    highlight WildMenu ctermfg=10 ctermbg=0
    highlight Folded ctermfg=6 ctermbg=0
    highlight link FoldColumn Folded
    highlight PMenu ctermfg=10 ctermbg=8
    highlight link PMenuThumb PMenu
    highlight PMenuSel cterm=bold ctermfg=10 ctermbg=0
    highlight PMenuSBar ctermfg=15 ctermbg=0
    highlight VertSplit ctermfg=8
    "}}}

    "{{{-searching/spelling
    highlight Search ctermfg=0 ctermbg=11
    highlight IncSearch ctermfg=0 ctermbg=11
    highlight SpellBad cterm=underline ctermfg=9
    highlight SpellCap cterm=underline ctermfg=4
    highlight SpellRare cterm=underline ctermfg=13
    highlight SpellLocal cterm=underline ctermfg=5
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd ctermfg=13 ctermbg=2
    highlight DiffChange ctermfg=13 ctermbg=4
    highlight DiffDelete ctermbg=1
    highlight DiffText ctermfg=4 ctermbg=8
    "}}}

    "{{{-comments
    highlight Comment ctermfg=6
    highlight SpecialComment ctermfg=14
    highlight TODO cterm=bold ctermfg=11 ctermbg=0
    highlight NonText ctermfg=8
    highlight Conceal ctermfg=15 ctermbg=8
    "}}}

    "{{{-types
    highlight Type ctermfg=10
    highlight String ctermfg=2
    highlight Character ctermfg=9
    highlight Constant ctermfg=11
    highlight link Boolean Constant
    highlight Number ctermfg=13
    highlight link Float Number
    highlight Structure cterm=bold ctermfg=10
    highlight link Typedef Structure
    highlight StorageClass ctermfg=3
    "}}}

    "{{{-other programming language constructs
    highlight Function cterm=bold ctermfg=14
    highlight Keyword ctermfg=3
    highlight Identifier ctermfg=10
    highlight Conditional cterm=bold ctermfg=3
    highlight link Repeat Conditional
    highlight Statement ctermfg=9
    highlight link Operator Function
    highlight Debug ctermfg=13
    highlight Define cterm=bold ctermfg=14
    highlight link Macro Define
    highlight PreCondit cterm=bold ctermfg=6
    highlight PreProc ctermfg=13
    highlight Exception ctermfg=4
    "}}}
else "&backgroung == "light"
    highlight Normal ctermfg=0 ctermbg=7

    "{{{-vim things
    highlight Cursor  ctermfg=0 ctermbg=15
    highlight CursorLine ctermbg=15
    highlight link CursorColumn CursorLine
    highlight LineNR ctermfg=0 ctermbg=15
    highlight CursorLineNR cterm=bold ctermfg=3 ctermbg=7
    highlight link ColorColumn CursorColumn
    highlight Visual cterm=reverse
    highlight VisualNOS ctermbg=15
    highlight SignColumn ctermfg=10 ctermbg=15
    highlight Title ctermfg=3
    highlight Label ctermfg=11
    highlight Directory ctermfg=10
    highlight MatchParen cterm=bold ctermfg=9
    highlight Special ctermfg=13
    highlight link SpecialChar Special
    highlight link Tag Special
    highlight SpecialKey ctermfg=2
    highlight link Question SpecialKey
    highlight Delimiter ctermfg=14
    highlight Underlined cterm=underline
    "}}}

    "{{{-messages
    highlight Error ctermbg=9
    highlight link ErrorMsg Error
    highlight WarningMsg ctermfg=13 ctermbg=15
    highlight MoreMsg ctermfg=8
    highlight link ModeMsg MoreMsg
    "}}}

    "{{{-menus/ui
    highlight StatusLine ctermfg=15 ctermbg=0
    highlight StatusLineNC ctermfg=0 ctermbg=8
    highlight link Tabline LineNR
    highlight link TablineSel CursorLineNR
    highlight link TablineFill CursorLine
    highlight WildMenu ctermfg=10 ctermbg=0
    highlight Folded ctermfg=6 ctermbg=7
    highlight link FoldColumn Folded
    highlight PMenu ctermfg=10 ctermbg=8
    highlight link PMenuThumb PMenu
    highlight PMenuSel cterm=bold ctermfg=10 ctermbg=0
    highlight PMenuSBar ctermfg=15 ctermbg=0
    highlight VertSplit ctermfg=8
    "}}}

    "{{{-searching/spelling
    highlight Search ctermfg=0 ctermbg=11
    highlight IncSearch ctermfg=0 ctermbg=11
    highlight SpellBad cterm=underline ctermfg=9 ctermbg=15
    highlight SpellCap cterm=underline ctermfg=4 ctermbg=15
    highlight SpellRare cterm=underline ctermfg=13 ctermbg=15
    highlight SpellLocal cterm=underline ctermfg=5 ctermbg=15
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd ctermfg=13 ctermbg=2
    highlight DiffChange ctermfg=13 ctermbg=4
    highlight DiffDelete ctermbg=1
    highlight DiffText ctermfg=4 ctermbg=8
    "}}}

    "{{{-comments
    highlight Comment ctermfg=6
    highlight SpecialComment ctermfg=14
    highlight TODO cterm=bold ctermfg=0 ctermbg=11
    highlight NonText ctermfg=8
    highlight Conceal ctermfg=15 ctermbg=8
    "}}}

    "{{{-types
    highlight Type ctermfg=2
    highlight String ctermfg=2
    highlight Character ctermfg=9
    highlight Constant ctermfg=3
    highlight link Boolean Constant
    highlight Number ctermfg=5
    highlight link Float Number
    highlight Structure cterm=bold ctermfg=2
    highlight link Typedef Structure
    highlight StorageClass ctermfg=3
    "}}}

    "{{{-other programming language constructs
    highlight Function cterm=bold ctermfg=14
    highlight Keyword ctermfg=3
    highlight Identifier ctermfg=2
    highlight Conditional cterm=bold ctermfg=3
    highlight link Repeat Conditional
    highlight Statement ctermfg=9
    highlight link Operator Function
    highlight Debug ctermfg=13
    highlight Define cterm=bold ctermfg=14
    highlight link Macro Define
    highlight PreCondit cterm=bold ctermfg=6
    highlight PreProc ctermfg=13
    highlight Exception ctermfg=4
    "}}}
endif
"}}}===========================================================================

