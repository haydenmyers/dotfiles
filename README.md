## Helpful motions and commands

### General
- `:wqa` = write and quit all
- `:wa` = write all
- `:qa` = quit all
- `:e` = edit file
- `:e` <filename> = edit a file with a filename
- `:nohlsearch/:noh` = remove the highlight on the search results

To change instances of text sequentially
- search for text: `/`
- change the next occurence of that text: `cgn`
- perform the same action on next occurences: `.`

### Visual mode
<C-V> = visual block mode

### Buffers
:ls = list all open buffers
<C-6> = switch between last used buffers
:b <number> = go to specific buffer

### Splits
:sp/:split = horizontal split
:vs/:vsplit = vertical split

### Tabs
:tabnew = open a new tab
:tabp = previous tab
:tabn = next tab

## NeoVim
A guide on working with lua in neovim can be found here: https://neovim.io/doc/user/lua-guide.html#lua-guide.

## Font
The font can be found at https://nerdfonts.com.
If you want to find the fonts that kitty knows about, run `kitty list-fonts`.

## Themes
Run `kitty +kitten themes` to view available themes.

## Notes
Vim cannot control things like the font, font size and line height. This is
controlled in the terminal itself.
