"   _________  _________  ___
"  / ___/ __ \/ ___/ __ \/ _ |
" / /__/ /_/ / /__/ /_/ / __ |
" \___/\____/\___/\____/_/ |_|
"
" Maintainer: mvanderkamp
" Version: 2.0.0
" Description: A smooth chocolatey colourscheme for vim
" Homepage: https://github.com/mvanderkamp/cocoa.vim


let s:script_name = expand('<sfile>:t:r')

" Clear highlights and set options. {{{1

highlight clear

if v:version > 580
    if exists('g:syntax_on')
        syntax reset
    endif
endif

let g:colors_name = s:script_name

" By default, DO define colors for :terminal.
let s:opt_terminal_colors = get(g:, s:script_name .. '_terminal_colors', 1)

" Define color palette. {{{1

let s:colors = [
            \ '#280F0E',
            \ '#97001A',
            \ '#305B12',
            \ '#7C493E',
            \ '#573E55',
            \ '#66292F',
            \ '#AF3F1C',
            \ '#E0CCAE',
            \ '#471E19',
            \ '#FF947C',
            \ '#CACF56',
            \ '#F5BB89',
            \ '#E2CCCD',
            \ '#D6AE91',
            \ '#F09F54',
            \ '#F2DDBC',
            \ ]

" Define highlight setter function. {{{1

function! s:hi(group, bg, fg, ...) abort
    " Parse bg and fg strings, e.g. 'NONE', or integers in the range [0,15].
    let l:guibg = type(a:bg) == type('') ? a:bg : s:colors[a:bg]
    let l:guifg = type(a:fg) == type('') ? a:fg : s:colors[a:fg]

    let l:colors = printf(
                \ 'highlight %s ctermbg=%s guibg=%s ctermfg=%s guifg=%s',
                \ a:group, a:bg, l:guibg, a:fg, l:guifg
                \)

    " By default, set special attributes to 'NONE'.
    let l:options = 'NONE'

    for l:opt in a:000
        if type(l:opt) == type('')
            " Parse special attribute string.
            let l:options = l:opt
        elseif type(l:opt) == type(0)
            " Parse guisp color integer in the range [0,15].
            let l:colors .= printf(' guisp=%s', s:colors[l:opt])
        endif
    endfor

    return printf('%s cterm=%s gui=%s', l:colors, l:options, l:options)
endfunction

" Set main colors. {{{1

if &background ==# 'light'
    "   group------------------ bg--------- fg--------- special-------
    exe s:hi('Comment',         15,         2)
    exe s:hi('Constant',        15,         6)
    exe s:hi('CursorLine',      7,          'NONE')
    exe s:hi('DiffAdd',         10,         'NONE')
    exe s:hi('DiffChange',      13,         'NONE')
    exe s:hi('DiffDelete',      15,         12,         'bold')
    exe s:hi('DiffText',        9,          'NONE',     'underline')
    exe s:hi('Directory',       15,         6)
    exe s:hi('Error',           1,          15,         'bold,reverse')
    exe s:hi('ErrorMsg',        1,          15)
    exe s:hi('Folded',          7,          5)
    exe s:hi('FoldColumn',      14,         6)
    exe s:hi('Function',        15,         5)
    exe s:hi('Identifier',      15,         4)
    exe s:hi('Ignore',          15,         'NONE')
    exe s:hi('IncSearch',       10,         'NONE',     'underline')
    exe s:hi('LineNr',          7,          3)
    exe s:hi('ModeMsg',         6,          15,         'bold,reverse')
    exe s:hi('MoreMsg',         3,          15,         'bold,reverse')
    exe s:hi('NonText',         15,         10)
    exe s:hi('Normal',          15,         0)
    exe s:hi('PmenuSel',        10,         8)
    exe s:hi('PmenuSbar',       3,          8)
    exe s:hi('Search',          12,         'NONE')
    exe s:hi('SignColumn',      11,         5)
    exe s:hi('Special',         15,         3)
    exe s:hi('SpecialKey',      15,         12,         'bold')
    exe s:hi('SpellBad',        15,         1,          'underline')
    exe s:hi('SpellCap',        15,         4,          'underline')
    exe s:hi('SpellLocal',      15,         6,          'underline')
    exe s:hi('SpellRare',       15,         3,          'underline')
    exe s:hi('Statement',       15,         1)
    exe s:hi('StatusLine',      11,         5)
    exe s:hi('StatusLineNC',    11,         3,          'underline')
    exe s:hi('Todo',            10,         8,          'bold')
    exe s:hi('Underlined',      15,         'NONE',     'underline')
    exe s:hi('VertSplit',       11,         6)
    exe s:hi('Visual',          10,         'NONE')
    exe s:hi('VisualNOS',       15,         'NONE',     'underline')
else
    " -------- group ---------- bg--------- fg -------- special -------
    exe s:hi('Comment',         0,          10)
    exe s:hi('Constant',        0,          14)
    exe s:hi('CursorLine',      8,          'NONE')
    exe s:hi('DiffAdd',         2,          'NONE')
    exe s:hi('DiffChange',      5,          'NONE')
    exe s:hi('DiffDelete',      0,          4,          'bold')
    exe s:hi('DiffText',        1,          'NONE',     'underline')
    exe s:hi('Directory',       0,          14)
    exe s:hi('Error',           0,          9,          'bold')
    exe s:hi('ErrorMsg',        1,          15)
    exe s:hi('Folded',          8,          13)
    exe s:hi('FoldColumn',      6,          14)
    exe s:hi('Function',        0,          13)
    exe s:hi('Identifier',      0,          12)
    exe s:hi('Ignore',          0,          'NONE')
    exe s:hi('IncSearch',       2,          'NONE',     'underline')
    exe s:hi('LineNr',          8,          11)
    exe s:hi('ModeMsg',         0,          14,         'bold')
    exe s:hi('MoreMsg',         0,          5,          'bold')
    exe s:hi('NonText',         0,          2)
    exe s:hi('Normal',          0,          15)
    exe s:hi('PmenuSel',        2,          7)
    exe s:hi('PmenuSbar',       13,         7)
    exe s:hi('Search',          4,          'NONE')
    exe s:hi('SignColumn',      3,          11,         'bold')
    exe s:hi('Special',         0,          11)
    exe s:hi('SpecialKey',      0,          8,          'bold')
    exe s:hi('SpellBad',        0,          9,          'underline')
    exe s:hi('SpellCap',        0,          12,         'underline')
    exe s:hi('SpellLocal',      0,          14,         'underline')
    exe s:hi('SpellRare',       0,          11,         'underline')
    exe s:hi('Statement',       0,          9)
    exe s:hi('StatusLine',      3,          11)
    exe s:hi('StatusLineNC',    3,          11,         'underline')
    exe s:hi('Todo',            2,          11,         'bold')
    exe s:hi('Underlined',      0,          'NONE',     'underline')
    exe s:hi('VertSplit',       3,          5)
    exe s:hi('Visual',          2,          'NONE')
    exe s:hi('VisualNOS',       0,          'NONE',     'underline')
endif

highlight! link ColorColumn      CursorLine
highlight! link Conceal          Special
highlight! link CursorColumn     CursorLine
highlight! link CursorIM         Cursor
highlight! link CursorLineNr     StatusLine
highlight! link EndOfBuffer      Normal
highlight! link MatchParen       PmenuSel
highlight! link Number           Constant
highlight! link Pmenu            DiffChange
highlight! link PmenuThumb       PmenuSel
highlight! link PreProc          Identifier
highlight! link Question         ModeMsg
highlight! link QuickFixLine     Underlined
highlight! link StatusLineTerm   StatusLine
highlight! link StatusLineTermNC StatusLineNC
highlight! link String           Constant
highlight! link TabLine          StatusLineNC
highlight! link TabLineFill      StatusLineNC
highlight! link TabLineSel       StatusLine
highlight! link Terminal         Normal
highlight! link Title            Ignore
highlight! link Type             Function
highlight! link WarningMsg       Error
highlight! link WildMenu         Visual
highlight! link helpLeadBlank    Normal
highlight! link helpNormal       Normal

" Set terminal colors. {{{1

if s:opt_terminal_colors
    if has('nvim')
        for idx in range(16)
            call nvim_set_var('terminal_color_' .. idx, s:colors[idx])
        endfor
    elseif has('terminal')
        let g:terminal_ansi_colors = s:colors
    endif
endif


" vim: fdm=marker
