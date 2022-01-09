" Lightline themes for Cocoa:
" https://github.com/mvanderkamp/cocoa.vim

let s:p = {
            \ 'normal': {},
            \ 'inactive': {},
            \ 'insert': {},
            \ 'replace': {},
            \ 'visual': {},
            \ 'tabline': {},
            \ 'command': {},
            \}

let s:black    = ['#280F0E', 00]
let s:red      = ['#97001A', 01]
let s:green    = ['#305B12', 02]
let s:yellow   = ['#7C493E', 03]
let s:blue     = ['#573E55', 04]
let s:burgundy = ['#66292F', 05]
let s:orange   = ['#AF3F1C', 06]
let s:grey     = ['#E0CCAE', 07]
let s:brown    = ['#471E19', 08]
let s:pink     = ['#FF947C', 09]
let s:lime     = ['#CACF56', 10]
let s:bryellow = ['#F5BB89', 11]
let s:skyblue  = ['#E2CCCD', 12]
let s:cordovan = ['#D6AE91', 13]
let s:brorange = ['#F09F54', 14]
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
    let s:p.normal.left = [[ s:bryellow, s:burgundy, 'bold' ], [ s:bryellow, s:blue ], [ s:grey, s:yellow ]]
    let s:p.normal.right = [[ s:bryellow, s:burgundy, 'bold' ], [ s:bryellow, s:blue ], [ s:grey, s:yellow ]]
    let s:p.normal.middle = [[ s:grey, s:yellow ]]
    let s:p.normal.error = [[ s:red, s:yellow ]]
    let s:p.normal.warning = [[ s:orange, s:yellow ]]

    let s:p.command.left = [[ s:brown, s:lime, 'bold' ], [ s:bryellow, s:blue ], [ s:grey, s:yellow ]]
    let s:p.command.right = [[ s:brown, s:lime, 'bold' ], [ s:bryellow, s:blue ], [ s:grey, s:yellow ]]

    let s:p.insert.left = [[ s:bryellow, s:green, 'bold' ], [ s:bryellow, s:blue ], [ s:grey, s:yellow ]]
    let s:p.insert.right = [[ s:bryellow, s:green, 'bold' ], [ s:bryellow, s:blue ], [ s:grey, s:yellow ]]

    let s:p.visual.left = [[ s:bryellow, s:orange, 'bold' ], [ s:bryellow, s:blue ], [ s:grey, s:yellow ]]
    let s:p.visual.right = [[ s:bryellow, s:orange, 'bold' ],[ s:bryellow, s:blue ], [ s:grey, s:yellow ]]

    let s:p.inactive.left = [[ s:grey, s:yellow ], [ s:grey, s:yellow ]]
    let s:p.inactive.middle = [[ s:grey, s:yellow ], [ s:grey, s:yellow ]]
    let s:p.inactive.right = [[ s:grey, s:yellow ], [ s:grey, s:yellow ]]

    let s:p.replace.left = [[ s:bryellow, s:red, 'bold' ], [ s:bryellow, s:blue ], [ s:grey, s:yellow ]]
    let s:p.replace.right = [[ s:bryellow, s:red, 'bold' ], [ s:bryellow, s:blue ], [ s:grey, s:yellow ]]

    let s:p.tabline.left = [[ s:bryellow, s:green, 'bold' ]]
    let s:p.tabline.right = [[ s:bryellow, s:red, 'bold' ]]
    let s:p.tabline.tabsel = [[ s:black, s:lime ]]
endif

let g:lightline#colorscheme#cocoa#palette = lightline#colorscheme#flatten(s:p)

" See https://github.com/itchyny/lightline.vim/issues/424#issuecomment-590058820
augroup CocoaLightlineAutocmd
    autocmd!
    autocmd OptionSet background
        \ runtime autoload/lightline/colorscheme/cocoa.vim
        \ | call lightline#colorscheme()
        \ | call lightline#update()
augroup END
