# easy-vim-mode package #

A package created only for the ease of using vim navigation, visual mode and
quick and convenient pattern search.

## Vim Mode ##

Provides:
- [moving around](http://www.fprintf.net/vimCheatSheet.html#motion) (motion commands)
- [changing and replacing text](http://www.fprintf.net/vimCheatSheet.html#replace)
- [copying and moving text](http://www.fprintf.net/vimCheatSheet.html#move)
- [deleting text](http://www.fprintf.net/vimCheatSheet.html#delete)
- [undo and redo](http://www.fprintf.net/vimCheatSheet.html#undo)

In any following mode, press `esc` key will return vim mode

## Edit Mode ##

Toggle vim editing mode which actually is temporarily hide easy-vim-mode control

```coffee
'cmd-E': 'easy-vim-mode:toggle'
```

Of course, in vim mode press the following keys toggle editing too with extra action:
- a  Append text after the cursor [count] times.
- A  Append text at the end of the line [count] times.
- i  Insert text before the cursor [count] times.
- I  Insert text before the first non-blank in the line [count] times.
- gI  Insert text in column 1 [count] times.
- o  Begin a new line below the cursor and insert text, repeat [count] times.
- O  Begin a new line above the cursor and insert text, repeat [count] times.

## Search Mode ##

It's triggered also in a none-vim-mode-mode. So that you don't need to quit
to one level up then type `/`. And it will return back to previous active mode.

```coffee
'ctrl-/': 'easy-vim-mode:toggle-search-pattern-forward'
'ctrl-?': 'easy-vim-mode:toggle-search-pattern-backward'
```

After search window activated, type `[pattern][/offset]`. `/` indicates lines up
or down by +/- integers. If pattern is empty, equals start from line 0, thus
create a shortcut to go-to-line, and thus also, in this case a line number can
only be positive.

## Visual Mode ##

It's triggered also in a none-vim-mode-mode. So that you don't need to quit
to one level up then type `v`. And it will return back to previous active mode.

```coffee
'cmd-v': 'easy-vim-mode:toggle-visual-mode' # This will take the native mac paste key
'cmd-V': 'easy-vim-mode:toggle-visual-mode-linewise'
```

To select text, enter visual mode with one of the commands above, and use motion
commands to highlight the text you are interested in. Then, you can use following
commands on the text:
- ~  switch case
- d  delete
- c  change
- y  yank
- >  shift right
- <  shift left
- !  filter through external command
- =  filter through 'equalprg' option command
- gq  format lines to 'textwidth' length

## Extra ##

No need for `:q` stuff. Save and other stuff still working.
