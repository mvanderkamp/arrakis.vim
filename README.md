# Cocoa
A smooth chocolatey colourscheme for vim

Forked from https://github.com/adigitoleo/vim-mellow

## Design

A key design goal in this colourscheme is to make sure that all the dark
colours are comfortably legible as the foreground over any of the light colours
as a background, and vice versa. This allows setting the background for
highlights such as a Search, Visual, or DiffDelete without worrying about the
foreground- any of the foreground colours will still work. Syntax highlighting
can therefore be preserved whenever adding a background highlight to text!

See https://github.com/mvanderkamp/sixteen-colour-table

## Installation

If you use a vim plugin manager (recommended), consult the relevant
documentation. Here are some links to popular plugin managers:
- [Pathogen]
- [NeoBundle]
- [Vundle]
- [vim-plug]
- [packages]

For manual installation, download the files of the latest GitHub release and
put the `colors` folder inside:
- `~/.vim/` (vim users)
- `~/.config/nvim/` (neovim users)


## Usage

*To apply commands at startup, add them to the end of your configuration file
(see `:help vimrc`).*

You can omit the `termguicolors` part if you are running (neo)vim in a GUI, or
if you have set up your terminal to use the 16 colours from this colourscheme
as its palette.

```vim
:set termguicolors
:colorscheme cocoa
```

The colourscheme works for both `background=light` and `background=dark` using
the same 16-colour palette.

[Lightline] is supported. Set the Lightline colourscheme to `'cocoa'`.

If it doesn't look right, you might not have a truecolor [compatible] terminal.
It might be worth reading `:help 'termguicolors'` and `:help xterm-true-color`
before opening an issue.


### Options

**Use Cocoa colour palette in the embedded terminal:**
- enabled (`1`) by default if your (neo)vim has the terminal feature
- `:let g:cocoa = 0` to disable

*NOTE: Colors in existing `:terminal` buffers are NOT re-drawn when
changing `set background`. You will need to kill and restart any `:terminal`s
to see the new colors.*


### Customization

To make small changes to a colourscheme, use autocommands (see `:help autocmd`).
For example, to make line numbering use the normal background colour:

```vim
function! FixColours() abort
    highlight LineNr guibg=None
    highlight CursorLineNr guibg=None
endfunction

augroup fix_colors
    autocmd!
    autocmd ColorScheme cocoa call FixColours()
augroup END
```

This is also a good place to define or override custom colours for other plugins.


[NOTE]: # ( ------------ PUT ALL EXTERNAL LINKS BELOW THIS LINE ------------ )

[compatible]: https://gist.github.com/XVilka/8346728

[Pathogen]: https://github.com/tpope/vim-pathogen

[NeoBundle]: https://github.com/Shougo/neobundle.vim

[Vundle]: https://github.com/gmarik/vundle

[vim-plug]: https://github.com/junegunn/vim-plug

[packages]: https://vimhelp.org/repeat.txt.html#packages

[Lightline]: https://github.com/itchyny/lightline.vim
