" Vim colorscheme file
" Bradford Smith
" bsmith.vim
" updated: 2020-05-23
"=====================


"{{{--required colorscheme lines ==============================================
highlight clear

if exists('syntax_on')
    syntax reset
endif

"set the name of the colorscheme
let g:colors_name = 'bsmith'

if &t_Co < 256
    if &t_Co == 16
        colorscheme bsmith16
        finish
    elseif &t_Co == 8
        colorscheme bsmith8
        finish
    else
        echoerr 'bsmith colorscheme does not support "'.&t_Co.'" colors'
        let g:colors_name = ''
        finish
    endif
endif
"}}}===========================================================================

"{{{--apply new highlights ====================================================
if &background ==# 'dark'
    highlight Normal gui=NONE guifg=#d0d0d0 guibg=#121212 cterm=NONE ctermfg=252 ctermbg=233
    set background=dark "this is a fix for the background color switching

    "{{{-vim things
    highlight Cursor gui=NONE guifg=#dadada guibg=#d0d0d0 cterm=NONE ctermfg=253 ctermbg=NONE
    highlight CursorLine gui=NONE guibg=#404040 cterm=NONE ctermbg=236
    highlight! link CursorColumn CursorLine
    highlight LineNR gui=NONE guifg=NONE guibg=#303030 cterm=NONE ctermfg=NONE ctermbg=236
    highlight CursorLineNR gui=bold guifg=#ff8700 guibg=NONE cterm=bold ctermfg=208 ctermbg=NONE
    highlight! link ColorColumn CursorColumn
    highlight Visual gui=reverse guifg=NONE guibg=NONE cterm=reverse ctermfg=NONE ctermbg=NONE
    highlight VisualNOS gui=NONE guibg=#303030 cterm=NONE ctermbg=236
    highlight SignColumn gui=NONE guifg=#87ff00 guibg=#303030 cterm=NONE ctermfg=118 ctermbg=236
    highlight Title gui=NONE guifg=#ff5f00 guibg=NONE cterm=NONE ctermfg=202 ctermbg=NONE
    highlight Label gui=NONE guifg=#ffff87 guibg=NONE cterm=NONE ctermfg=228 ctermbg=NONE
    highlight Directory gui=NONE guifg=#87ff00 guibg=NONE cterm=NONE ctermfg=118 ctermbg=NONE
    highlight MatchParen gui=bold guifg=#d70000 guibg=NONE cterm=bold ctermfg=160 ctermbg=NONE
    highlight Special gui=NONE guifg=#d7005f guibg=NONE cterm=NONE ctermfg=161 ctermbg=NONE
    highlight! link SpecialChar Special
    highlight! link Tag Special
    highlight SpecialKey gui=NONE guifg=#87ff87 guibg=NONE cterm=NONE ctermfg=120 ctermbg=NONE
    highlight! link Question SpecialKey
    highlight Delimiter gui=NONE guifg=#5fd7ff guibg=NONE cterm=NONE ctermfg=81 ctermbg=NONE
    highlight Underlined gui=underline guifg=NONE guibg=NONE cterm=underline ctermfg=NONE ctermbg=NONE
    "}}}

    "{{{-messages
    highlight Error gui=NONE guifg=NONE guibg=#ff0000 cterm=NONE ctermfg=NONE ctermbg=196
    highlight! link ErrorMsg Error
    highlight WarningMsg gui=NONE guifg=#ffff00 guibg=#303030 cterm=NONE ctermfg=226 ctermbg=236
    highlight MoreMsg gui=NONE guifg=#767676 guibg=NONE cterm=NONE ctermfg=243 ctermbg=NONE
    highlight! link ModeMsg MoreMsg
    "}}}

    "{{{-menus/ui
    highlight StatusLine gui=NONE guifg=#dadada guibg=#444444 cterm=NONE ctermfg=253 ctermbg=238
    highlight StatusLineNC gui=NONE guifg=#000000 guibg=#767676 cterm=NONE ctermfg=16 ctermbg=243
    highlight! link Tabline LineNR
    highlight! link TablineSel CursorLineNR
    highlight! link TablineFill CursorLine
    highlight WildMenu gui=NONE guifg=#87ff00 guibg=#444444 cterm=NONE ctermfg=118 ctermbg=238
    highlight Folded gui=NONE guifg=#008787 guibg=NONE cterm=NONE ctermfg=30 ctermbg=NONE
    highlight! link FoldColumn Folded
    highlight PMenu gui=NONE guifg=#afff87 guibg=#767676 cterm=NONE ctermfg=156 ctermbg=243
    highlight! link PMenuThumb PMenu
    highlight PMenuSel gui=bold guifg=#afff87 guibg=#444444 cterm=bold ctermfg=156 ctermbg=238
    highlight PMenuSBar gui=NONE guifg=#dadada guibg=#444444 cterm=NONE ctermfg=253 ctermbg=238
    highlight VertSplit gui=NONE guifg=#767676 guibg=NONE cterm=NONE ctermfg=243 ctermbg=NONE
    "}}}

    "{{{-searching/spelling
    highlight Search gui=NONE guifg=#000000 guibg=#ffff87 cterm=NONE ctermfg=16 ctermbg=228
    highlight IncSearch gui=NONE guifg=#000000 guibg=#d7ffaf cterm=NONE ctermfg=16 ctermbg=193
    highlight SpellBad gui=underline guifg=#d70000 guibg=NONE cterm=underline ctermfg=160 ctermbg=NONE
    highlight SpellCap gui=underline guifg=#005fff guibg=NONE cterm=underline ctermfg=27 ctermbg=NONE
    highlight SpellRare gui=underline guifg=#d700ff guibg=NONE cterm=underline ctermfg=165 ctermbg=NONE
    highlight SpellLocal gui=underline guifg=#8700af guibg=NONE cterm=underline ctermfg=91 ctermbg=NONE
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd gui=NONE guifg=#00d700 guibg=#444444 cterm=NONE ctermfg=40 ctermbg=238
    highlight DiffChange gui=NONE guifg=#d7ff00 guibg=#444444 cterm=NONE ctermfg=190 ctermbg=238
    highlight DiffDelete gui=NONE guifg=#d70000 guibg=#444444 cterm=NONE ctermfg=160 ctermbg=238
    highlight DiffText gui=NONE guifg=#0087ff guibg=#444444 cterm=NONE ctermfg=33 ctermbg=238
    "}}}

    "{{{-comments
    highlight Comment gui=NONE guifg=#008787 guibg=NONE cterm=NONE ctermfg=30 ctermbg=NONE
    highlight SpecialComment gui=NONE guifg=#5fd7ff guibg=NONE cterm=NONE ctermfg=81 ctermbg=NONE
    highlight TODO gui=bold guifg=#ffff00 guibg=#000000 cterm=bold ctermfg=226 ctermbg=16
    highlight NonText gui=NONE guifg=#767676 guibg=NONE cterm=NONE ctermfg=243 ctermbg=NONE
    highlight Conceal gui=NONE guifg=#dadada guibg=#767676 cterm=NONE ctermfg=253 ctermbg=243
    "}}}

    "{{{-types
    highlight Type gui=NONE guifg=#87d700 guibg=NONE cterm=NONE ctermfg=112 ctermbg=NONE
    highlight String gui=NONE guifg=#008700 guibg=NONE cterm=NONE ctermfg=28 ctermbg=NONE
    highlight Character gui=NONE guifg=#ff0000 guibg=NONE cterm=NONE ctermfg=196 ctermbg=NONE
    highlight Constant gui=NONE guifg=#ffff00 guibg=NONE cterm=NONE ctermfg=226 ctermbg=NONE
    highlight! link Boolean Constant
    highlight Number gui=NONE guifg=#af5faf guibg=NONE cterm=NONE ctermfg=133 ctermbg=NONE
    highlight! link Float Number
    highlight Structure gui=bold guifg=#87d700 guibg=NONE cterm=bold ctermfg=112 ctermbg=NONE
    highlight! link Typedef Structure
    highlight StorageClass gui=NONE guifg=#ff8700 guibg=NONE cterm=NONE ctermfg=208 ctermbg=NONE
    "}}}

    "{{{-other programming language constructs
    highlight Function gui=bold guifg=#5fd7ff guibg=NONE cterm=bold ctermfg=81 ctermbg=NONE
    highlight Keyword gui=NONE guifg=#ff8700 guibg=NONE cterm=NONE ctermfg=208 ctermbg=NONE
    highlight Identifier gui=NONE guifg=#87d700 guibg=NONE cterm=NONE ctermfg=112 ctermbg=NONE
    highlight Conditional gui=bold guifg=#ff8700 guibg=NONE cterm=bold ctermfg=208 ctermbg=NONE
    highlight! link Repeat Conditional
    highlight Statement gui=NONE guifg=#ff0000 guibg=NONE cterm=NONE ctermfg=196 ctermbg=NONE
    highlight! link Operator Function
    highlight Debug gui=NONE guifg=#ffafff guibg=NONE cterm=NONE ctermfg=219 ctermbg=NONE
    highlight Define gui=bold guifg=#5fd7ff guibg=NONE cterm=bold ctermfg=81 ctermbg=NONE
    highlight! link Macro Define
    highlight PreCondit gui=bold guifg=#5f87af guibg=NONE cterm=bold ctermfg=67 ctermbg=NONE
    highlight PreProc gui=NONE guifg=#d7005f guibg=NONE cterm=NONE ctermfg=161 ctermbg=NONE
    highlight Exception gui=NONE guifg=#005fff guibg=NONE cterm=NONE ctermfg=27 ctermbg=NONE
    "}}}
else "&backgroung == 'light'
    highlight Normal gui=NONE guifg=#000000 guibg=#ffffd7 cterm=NONE ctermfg=16 ctermbg=230

    "{{{-vim things
    highlight Cursor gui=NONE guifg=#121212 guibg=#000000  cterm=NONE ctermfg=233 ctermbg=253
    highlight CursorLine gui=NONE guifg=NONE guibg=#dadada cterm=NONE ctermfg=NONE ctermbg=253
    highlight! link CursorColumn CursorLine
    highlight LineNR gui=NONE guifg=#000000 guibg=#dadada cterm=NONE ctermfg=16 ctermbg=253
    highlight CursorLineNR gui=bold guifg=#ff8700 guibg=#ffffd7 cterm=bold ctermfg=208 ctermbg=230
    highlight! link ColorColumn CursorColumn
    highlight Visual gui=reverse guifg=NONE guibg=NONE cterm=reverse ctermfg=NONE ctermbg=NONE
    highlight VisualNOS gui=NONE guifg=NONE guibg=#dadada cterm=NONE ctermfg=NONE ctermbg=253
    highlight SignColumn gui=NONE guifg=#87ff00 guibg=#dadada cterm=NONE ctermfg=118 ctermbg=253
    highlight Title gui=NONE guifg=#ff5f00 guibg=NONE cterm=NONE ctermfg=202 ctermbg=NONE
    highlight Label gui=NONE guifg=#ffff87 guibg=NONE cterm=NONE ctermfg=228 ctermbg=NONE
    highlight Directory gui=NONE guifg=#87ff00 guibg=NONE cterm=NONE ctermfg=118 ctermbg=NONE
    highlight MatchParen gui=bold guifg=#d70000 guibg=NONE cterm=bold ctermfg=160 ctermbg=NONE
    highlight Special gui=NONE guifg=#d7005f guibg=NONE cterm=NONE ctermfg=161 ctermbg=NONE
    highlight! link SpecialChar Special
    highlight! link Tag Special
    highlight SpecialKey gui=NONE guifg=#00af00 guibg=NONE cterm=NONE ctermfg=34 ctermbg=NONE
    highlight! link Question SpecialKey
    highlight Delimiter gui=NONE guifg=#5fafff guibg=NONE cterm=NONE ctermfg=75 ctermbg=NONE
    highlight Underlined gui=underline guifg=NONE guibg=NONE cterm=underline ctermfg=NONE ctermbg=NONE
    "}}}

    "{{{-messages
    highlight Error gui=NONE guifg=NONE guibg=#ff0000 cterm=NONE ctermfg=NONE ctermbg=196
    highlight! link ErrorMsg Error
    highlight WarningMsg gui=NONE guifg=#d700ff guibg=#dadada cterm=NONE ctermfg=165 ctermbg=253
    highlight MoreMsg gui=NONE guifg=#767676 guibg=NONE cterm=NONE ctermfg=243 ctermbg=NONE
    highlight! link ModeMsg MoreMsg
    "}}}

    "{{{-menus/ui
    highlight StatusLine gui=NONE guifg=#dadada guibg=#444444 cterm=NONE ctermfg=253 ctermbg=238
    highlight StatusLineNC gui=NONE guifg=#000000 guibg=#767676 cterm=NONE ctermfg=16 ctermbg=243
    highlight! link Tabline LineNR
    highlight! link TablineSel CursorLineNR
    highlight! link TablineFill CursorLine
    highlight WildMenu gui=NONE guifg=#87ff00 guibg=#444444 cterm=NONE ctermfg=118 ctermbg=238
    highlight Folded gui=NONE guifg=#008787 guibg=#ffffd7 cterm=NONE ctermfg=30 ctermbg=230
    highlight! link FoldColumn Folded
    highlight PMenu gui=NONE guifg=#afff87 guibg=#767676 cterm=NONE ctermfg=156 ctermbg=243
    highlight! link PMenuThumb PMenu
    highlight PMenuSel gui=bold guifg=#afff87 guibg=#444444 cterm=bold ctermfg=156 ctermbg=238
    highlight PMenuSBar gui=NONE guifg=#dadada guibg=#444444 cterm=NONE ctermfg=253 ctermbg=238
    highlight VertSplit gui=NONE guifg=#767676 guibg=NONE cterm=NONE ctermfg=243 ctermbg=NONE
    "}}}

    "{{{-searching/spelling
    highlight Search gui=NONE guifg=#000000 guibg=#ffff87 cterm=NONE ctermfg=16 ctermbg=228
    highlight IncSearch gui=NONE guifg=#000000 guibg=#d7ffaf cterm=NONE ctermfg=16 ctermbg=193
    highlight SpellBad gui=underline guifg=#d70000 guibg=#dadada cterm=underline ctermfg=160 ctermbg=253
    highlight SpellCap gui=underline guifg=#005fff guibg=#dadada cterm=underline ctermfg=27 ctermbg=253
    highlight SpellRare gui=underline guifg=#d700ff guibg=#dadada cterm=underline ctermfg=165 ctermbg=253
    highlight SpellLocal gui=underline guifg=#8700af guibg=#dadada cterm=underline ctermfg=91 ctermbg=253
    "}}}

    "{{{-vimdiff colors
    highlight DiffAdd gui=NONE guifg=#d78787 guibg=#008700 cterm=NONE ctermfg=40 ctermbg=248
    highlight DiffChange gui=NONE guifg=#d78787 guibg=#005fff cterm=NONE ctermfg=94 ctermbg=248
    highlight DiffDelete gui=NONE guifg=NONE guibg=#5f0000 cterm=NONE ctermfg=124 ctermbg=248
    highlight DiffText gui=NONE guifg=#005fff guibg=#767676 cterm=NONE ctermfg=27 ctermbg=248
    "}}}

    "{{{-comments
    highlight Comment gui=NONE guifg=#008787 guibg=NONE cterm=NONE ctermfg=30 ctermbg=NONE
    highlight SpecialComment gui=NONE guifg=#5fafff guibg=NONE cterm=NONE ctermfg=75 ctermbg=NONE
    highlight TODO gui=bold guifg=#000000 guibg=#ffff00 cterm=bold ctermfg=16 ctermbg=226
    highlight NonText gui=NONE guifg=#767676 guibg=NONE cterm=NONE ctermfg=243 ctermbg=NONE
    highlight Conceal gui=NONE guifg=#dadada guibg=#767676 cterm=NONE ctermfg=253 ctermbg=243
    "}}}

    "{{{-types
    highlight Type gui=NONE guifg=#00af00 guibg=NONE cterm=NONE ctermfg=34 ctermbg=NONE
    highlight String gui=NONE guifg=#008700 guibg=NONE cterm=NONE ctermfg=28 ctermbg=NONE
    highlight Character gui=NONE guifg=#ff0000 guibg=NONE cterm=NONE ctermfg=196 ctermbg=NONE
    highlight Constant gui=NONE guifg=#ff8700 guibg=NONE cterm=NONE ctermfg=208 ctermbg=NONE
    highlight! link Boolean Constant
    highlight Number gui=NONE guifg=#8700af guibg=NONE cterm=NONE ctermfg=91 ctermbg=NONE
    highlight! link Float Number
    highlight Structure gui=bold guifg=#00af00 guibg=NONE cterm=bold ctermfg=34 ctermbg=NONE
    highlight! link Typedef Structure
    highlight StorageClass gui=NONE guifg=#ff8700 guibg=NONE cterm=NONE ctermfg=208 ctermbg=NONE
    "}}}

    "{{{-other programming language constructs
    highlight Function gui=bold guifg=#5fafff guibg=NONE cterm=bold ctermfg=75 ctermbg=NONE
    highlight Keyword gui=NONE guifg=#ff8700 guibg=NONE cterm=NONE ctermfg=208 ctermbg=NONE
    highlight Identifier gui=NONE guifg=#00af00 guibg=NONE cterm=NONE ctermfg=34 ctermbg=NONE
    highlight Conditional gui=bold guifg=#ff8700 guibg=NONE cterm=bold ctermfg=208 ctermbg=NONE
    highlight! link Repeat Conditional
    highlight Statement gui=NONE guifg=#ff0000 guibg=NONE cterm=NONE ctermfg=196 ctermbg=NONE
    highlight! link Operator Function
    highlight Debug gui=NONE guifg=#ffafff guibg=NONE cterm=NONE ctermfg=219 ctermbg=NONE
    highlight Define gui=bold guifg=#5fafff guibg=NONE cterm=bold ctermfg=75 ctermbg=NONE
    highlight! link Macro Define
    highlight PreCondit gui=bold guifg=#5f87af guibg=NONE cterm=bold ctermfg=67 ctermbg=NONE
    highlight PreProc gui=NONE guifg=#d7005f guibg=NONE cterm=NONE ctermfg=161 ctermbg=NONE
    highlight Exception gui=NONE guifg=#005fff guibg=NONE cterm=NONE ctermfg=27 ctermbg=NONE
    "}}}
endif
"}}}===========================================================================

