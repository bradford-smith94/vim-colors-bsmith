" Vim colorscheme file
" Bradford Smith
" bsmith16.vim
" updated: 2020-05-24
"=====================


"{{{--required colorscheme lines ==============================================
highlight clear

if exists('syntax_on')
    syntax reset
endif

"set the name of the colorscheme
let g:colors_name = 'bsmith16'

if &t_Co < 16
    if &t_Co == 8
        colorscheme bsmith8
        finish
    endif
endif
"}}}===========================================================================

"{{{--apply new highlights ====================================================
if &background ==# 'dark'
    highlight Normal cterm=NONE ctermfg=7 ctermbg=0
    set background=dark "this is a fix for the background color switching

    "{{{-vim things
    highlight Cursor cterm=NONE ctermfg=7 ctermbg=0
    highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=6
    highlight! link CursorColumn CursorLine
    highlight LineNR cterm=NONE ctermfg=7 ctermbg=6
    highlight CursorLineNR cterm=bold ctermfg=3 ctermbg=0
    highlight! link ColorColumn CursorColumn
    highlight Visual cterm=reverse ctermfg=NONE ctermbg=NONE
    highlight VisualNOS cterm=NONE ctermfg=NONE ctermbg=8
    highlight SignColumn cterm=NONE ctermfg=10 ctermbg=8
    highlight Title cterm=NONE ctermfg=3 ctermbg=NONE
    highlight Label cterm=NONE ctermfg=11 ctermbg=NONE
    highlight Directory cterm=NONE ctermfg=10 ctermbg=NONE
    highlight MatchParen cterm=bold ctermfg=9 ctermbg=NONE
    highlight Special cterm=NONE ctermfg=13 ctermbg=NONE
    highlight! link SpecialChar Special
    highlight! link Tag Special
    highlight SpecialKey cterm=NONE ctermfg=10 ctermbg=NONE
    highlight! link Question SpecialKey
    highlight Delimiter cterm=NONE ctermfg=14 ctermbg=NONE
    highlight Underlined cterm=underline ctermfg=NONE ctermbg=NONE
    "}}}

    "{{{-messages
    highlight Error cterm=NONE ctermfg=NONE ctermbg=9
    highlight! link ErrorMsg Error
    highlight WarningMsg cterm=NONE ctermfg=11 ctermbg=0
    highlight MoreMsg cterm=NONE ctermfg=8 ctermbg=NONE
    highlight! link ModeMsg MoreMsg
    "}}}

    "{{{-menus/ui
    highlight StatusLine cterm=NONE ctermfg=15 ctermbg=0
    highlight StatusLineNC cterm=NONE ctermfg=0 ctermbg=8
    highlight! link Tabline LineNR
    highlight! link TablineSel CursorLineNR
    highlight! link TablineFill CursorLine
    highlight WildMenu cterm=NONE ctermfg=10 ctermbg=0
    highlight Folded cterm=NONE ctermfg=6 ctermbg=0
    highlight! link FoldColumn Folded
    highlight PMenu cterm=NONE ctermfg=10 ctermbg=8
    highlight! link PMenuThumb PMenu
    highlight PMenuSel cterm=bold ctermfg=10 ctermbg=0
    highlight PMenuSBar cterm=NONE ctermfg=15 ctermbg=0
    highlight VertSplit cterm=NONE ctermfg=8 ctermbg=NONE
    "}}}

    "{{{-searching/spelling
    highlight Search cterm=NONE ctermfg=0 ctermbg=11
    highlight IncSearch cterm=NONE ctermfg=0 ctermbg=11
    highlight SpellBad cterm=underline ctermfg=9 ctermbg=NONE
    highlight SpellCap cterm=underline ctermfg=4 ctermbg=NONE
    highlight SpellRare cterm=underline ctermfg=13 ctermbg=NONE
    highlight SpellLocal cterm=underline ctermfg=5 ctermbg=NONE
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd cterm=NONE ctermfg=10 ctermbg=8
    highlight DiffChange cterm=NONE ctermfg=11 ctermbg=8
    highlight DiffDelete cterm=NONE ctermfg=9 ctermbg=8
    highlight DiffText cterm=NONE ctermfg=12 ctermbg=8
    "}}}

    "{{{-comments
    highlight Comment cterm=NONE ctermfg=6 ctermbg=NONE
    highlight SpecialComment cterm=NONE ctermfg=14 ctermbg=NONE
    highlight TODO cterm=bold ctermfg=11 ctermbg=0
    highlight NonText cterm=NONE ctermfg=8 ctermbg=NONE
    highlight Conceal cterm=NONE ctermfg=15 ctermbg=8
    "}}}

    "{{{-types
    highlight Type cterm=NONE ctermfg=10 ctermbg=NONE
    highlight String cterm=NONE ctermfg=2 ctermbg=NONE
    highlight Character cterm=NONE ctermfg=9 ctermbg=NONE
    highlight Constant cterm=NONE ctermfg=11 ctermbg=NONE
    highlight! link Boolean Constant
    highlight Number cterm=NONE ctermfg=13 ctermbg=NONE
    highlight! link Float Number
    highlight Structure cterm=bold ctermfg=10 ctermbg=NONE
    highlight! link Typedef Structure
    highlight StorageClass cterm=NONE ctermfg=3 ctermbg=NONE
    "}}}

    "{{{-other programming language constructs
    highlight Function cterm=bold ctermfg=14 ctermbg=NONE
    highlight Keyword cterm=NONE ctermfg=3 ctermbg=NONE
    highlight Identifier cterm=NONE ctermfg=10 ctermbg=NONE
    highlight Conditional cterm=bold ctermfg=3 ctermbg=NONE
    highlight! link Repeat Conditional
    highlight Statement cterm=NONE ctermfg=9 ctermbg=NONE
    highlight! link Operator Function
    highlight Debug cterm=NONE ctermfg=13 ctermbg=NONE
    highlight Define cterm=bold ctermfg=14 ctermbg=NONE
    highlight! link Macro Define
    highlight PreCondit cterm=bold ctermfg=6 ctermbg=NONE
    highlight PreProc cterm=NONE ctermfg=13 ctermbg=NONE
    highlight Exception cterm=NONE ctermfg=4 ctermbg=NONE
    "}}}
else "&backgroung == 'light'
    highlight Normal cterm=NONE ctermfg=0 ctermbg=7

    "{{{-vim things
    highlight Cursor cterm=NONE  ctermfg=0 ctermbg=15
    highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=15
    highlight! link CursorColumn CursorLine
    highlight LineNR cterm=NONE ctermfg=0 ctermbg=15
    highlight CursorLineNR cterm=bold ctermfg=3 ctermbg=7
    highlight! link ColorColumn CursorColumn
    highlight Visual cterm=reverse ctermfg=NONE ctermbg=NONE
    highlight VisualNOS cterm=NONE ctermfg=NONE ctermbg=15
    highlight SignColumn cterm=NONE ctermfg=10 ctermbg=15
    highlight Title cterm=NONE ctermfg=3 ctermbg=NONE
    highlight Label cterm=NONE ctermfg=11 ctermbg=NONE
    highlight Directory cterm=NONE ctermfg=10 ctermbg=NONE
    highlight MatchParen cterm=bold ctermfg=9 ctermbg=NONE
    highlight Special cterm=NONE ctermfg=13 ctermbg=NONE
    highlight! link SpecialChar Special
    highlight! link Tag Special
    highlight SpecialKey cterm=NONE ctermfg=2 ctermbg=NONE
    highlight! link Question SpecialKey
    highlight Delimiter cterm=NONE ctermfg=14 ctermbg=NONE
    highlight Underlined cterm=underline ctermfg=NONE ctermbg=NONE
    "}}}

    "{{{-messages
    highlight Error cterm=NONE ctermfg=NONE ctermbg=9
    highlight! link ErrorMsg Error
    highlight WarningMsg cterm=NONE ctermfg=13 ctermbg=15
    highlight MoreMsg cterm=NONE ctermfg=8 ctermbg=NONE
    highlight! link ModeMsg MoreMsg
    "}}}

    "{{{-menus/ui
    highlight StatusLine cterm=NONE ctermfg=15 ctermbg=0
    highlight StatusLineNC cterm=NONE ctermfg=0 ctermbg=8
    highlight! link Tabline LineNR
    highlight! link TablineSel CursorLineNR
    highlight! link TablineFill CursorLine
    highlight WildMenu cterm=NONE ctermfg=10 ctermbg=0
    highlight Folded cterm=NONE ctermfg=6 ctermbg=7
    highlight! link FoldColumn Folded
    highlight PMenu cterm=NONE ctermfg=10 ctermbg=8
    highlight! link PMenuThumb PMenu
    highlight PMenuSel cterm=bold ctermfg=10 ctermbg=0
    highlight PMenuSBar cterm=NONE ctermfg=15 ctermbg=0
    highlight VertSplit cterm=NONE ctermfg=8 ctermbg=NONE
    "}}}

    "{{{-searching/spelling
    highlight Search cterm=NONE ctermfg=0 ctermbg=11
    highlight IncSearch cterm=NONE ctermfg=0 ctermbg=11
    highlight SpellBad cterm=underline ctermfg=9 ctermbg=15
    highlight SpellCap cterm=underline ctermfg=4 ctermbg=15
    highlight SpellRare cterm=underline ctermfg=13 ctermbg=15
    highlight SpellLocal cterm=underline ctermfg=5 ctermbg=15
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd cterm=NONE ctermfg=10 ctermbg=8
    highlight DiffChange cterm=NONE ctermfg=11 ctermbg=8
    highlight DiffDelete cterm=NONE ctermfg=9 ctermbg=8
    highlight DiffText cterm=NONE ctermfg=12 ctermbg=8
    "}}}

    "{{{-comments
    highlight Comment cterm=NONE ctermfg=6 ctermbg=NONE
    highlight SpecialComment cterm=NONE ctermfg=14 ctermbg=NONE
    highlight TODO cterm=bold ctermfg=0 ctermbg=11
    highlight NonText cterm=NONE ctermfg=8 ctermbg=NONE
    highlight Conceal cterm=NONE ctermfg=15 ctermbg=8
    "}}}

    "{{{-types
    highlight Type cterm=NONE ctermfg=2 ctermbg=NONE
    highlight String cterm=NONE ctermfg=2 ctermbg=NONE
    highlight Character cterm=NONE ctermfg=9 ctermbg=NONE
    highlight Constant cterm=NONE ctermfg=3 ctermbg=NONE
    highlight! link Boolean Constant
    highlight Number cterm=NONE ctermfg=5 ctermbg=NONE
    highlight! link Float Number
    highlight Structure cterm=bold ctermfg=2 ctermbg=NONE
    highlight! link Typedef Structure
    highlight StorageClass cterm=NONE ctermfg=3 ctermbg=NONE
    "}}}

    "{{{-other programming language constructs
    highlight Function cterm=bold ctermfg=14 ctermbg=NONE
    highlight Keyword cterm=NONE ctermfg=3 ctermbg=NONE
    highlight Identifier cterm=NONE ctermfg=2 ctermbg=NONE
    highlight Conditional cterm=bold ctermfg=3 ctermbg=NONE
    highlight! link Repeat Conditional
    highlight Statement cterm=NONE ctermfg=9 ctermbg=NONE
    highlight! link Operator Function
    highlight Debug cterm=NONE ctermfg=13 ctermbg=NONE
    highlight Define cterm=bold ctermfg=14 ctermbg=NONE
    highlight! link Macro Define
    highlight PreCondit cterm=bold ctermfg=6 ctermbg=NONE
    highlight PreProc cterm=NONE ctermfg=13 ctermbg=NONE
    highlight Exception cterm=NONE ctermfg=4 ctermbg=NONE
    "}}}
endif
"}}}===========================================================================

