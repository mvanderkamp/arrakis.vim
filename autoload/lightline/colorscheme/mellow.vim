" Lightline themes for Mellow:
" <https://github.com/adigitoleo/vim-mellow>

let s:p = {
            \ 'normal': {},
            \ 'inactive': {},
            \ 'insert': {},
            \ 'replace': {},
            \ 'visual': {},
            \ 'tabline': {},
            \ 'command': {},
            \}

let s:black    = ['#0F0908', 00]
let s:red      = ['#97001A', 01]
let s:green    = ['#3C5E15', 02]
let s:yellow   = ['#865448', 03]
let s:blue     = ['#573E55', 04]
let s:burgundy = ['#66292F', 05]
let s:orange   = ['#BF472C', 06]
let s:grey     = ['#E0CCAE', 07]
let s:brown    = ['#2D140F', 08]
let s:pink     = ['#FF9487', 09]
let s:lime     = ['#A4BF40', 10]
let s:bryellow = ['#F5BB89', 11]
let s:skyblue  = ['#CFCAD0', 12]
let s:cordovan = ['#BA8B93', 13]
let s:brorange = ['#D47D49', 14]
let s:white    = ['#F2DDBC', 15]

if lightline#colorscheme#background() ==# 'light'
    let s:p.normal.left = [[ s:bryellow, s:burgundy, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]
    let s:p.normal.right = [[ s:bryellow, s:burgundy, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]
    let s:p.normal.middle = [[ s:burgundy, s:bryellow ]]
    let s:p.normal.error = [[ s:red, s:bryellow ]]
    let s:p.normal.warning = [[ s:orange, s:bryellow ]]

    let s:p.command.left = [[ s:brown, s:lime, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]
    let s:p.command.right = [[ s:brown, s:lime, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]

    let s:p.insert.left = [[ s:bryellow, s:green, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]
    let s:p.insert.right = [[ s:bryellow, s:green, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]

    let s:p.visual.left = [[ s:bryellow, s:orange, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]
    let s:p.visual.right = [[ s:bryellow, s:orange, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]

    let s:p.inactive.left = [[ s:yellow, s:bryellow ], [ s:yellow, s:bryellow ]]
    let s:p.inactive.middle = [[ s:yellow, s:bryellow ], [ s:yellow, s:bryellow ]]
    let s:p.inactive.right = [[ s:yellow, s:bryellow ], [ s:yellow, s:bryellow ]]

    let s:p.replace.left = [[ s:bryellow, s:red, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]
    let s:p.replace.right = [[ s:bryellow, s:red, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]

    let s:p.tabline.left = [[ s:bryellow, s:green, 'bold' ]]
    let s:p.tabline.right = [[ s:bryellow, s:red, 'bold' ]]
    let s:p.tabline.tabsel = [[ s:black, s:lime ]]
else
    let s:p.normal.left = [[ s:bryellow, s:burgundy, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:yellow ]]
    let s:p.normal.right = [[ s:bryellow, s:burgundy, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:yellow ]]
    let s:p.normal.middle = [[ s:bryellow, s:yellow ]]
    let s:p.normal.error = [[ s:red, s:yellow ]]
    let s:p.normal.warning = [[ s:orange, s:yellow ]]

    let s:p.command.left = [[ s:brown, s:lime, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]
    let s:p.command.right = [[ s:brown, s:lime, 'bold' ], [ s:bryellow, s:blue ], [ s:burgundy, s:bryellow ]]

    let s:p.insert.left = [[ s:bryellow, s:green, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:yellow ]]
    let s:p.insert.right = [[ s:bryellow, s:green, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:yellow ]]

    let s:p.visual.left = [[ s:bryellow, s:orange, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:yellow ]]
    let s:p.visual.right = [[ s:bryellow, s:orange, 'bold' ],[ s:bryellow, s:blue ], [ s:bryellow, s:yellow ]]

    let s:p.inactive.left = [[ s:bryellow, s:yellow, 'bold' ], [ s:bryellow, s:yellow ]]
    let s:p.inactive.middle = [[ s:bryellow, s:yellow ], [ s:bryellow, s:yellow ]]
    let s:p.inactive.right = [[ s:bryellow, s:yellow , 'bold' ], [ s:bryellow, s:yellow ]]

    let s:p.replace.left = [[ s:bryellow, s:red, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:yellow ]]
    let s:p.replace.right = [[ s:bryellow, s:red, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:yellow ]]

    let s:p.tabline.left = [[ s:bryellow, s:green, 'bold' ]]
    let s:p.tabline.right = [[ s:bryellow, s:red, 'bold' ]]
    let s:p.tabline.tabsel = [[ s:black, s:lime ]]
endif

let g:lightline#colorscheme#mellow#palette = lightline#colorscheme#flatten(s:p)
