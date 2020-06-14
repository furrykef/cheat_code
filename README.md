# Cheat Code plugin for Godot 3.2

*NB: This is a work in progress. It is not ready yet!*

Use this plugin to add cheat codes or easter eggs to your games. It could also have some other uses, such as for a "Typing of the Dead" sort of game.


## How to use it

After installing and activating the plugin, there will be a new node type called CheatCode. Add it to a scene, then in the inspector there should be a textbox for typing in codes. Type in the list of codes, separated by newlines.

You can also call `add_code` on the CheatCode to add a code. Codes are simple strings; the code is triggered when the string is input on the keyboard. These strings are not case-sensitive, so "xyzzy" and "XYZZY" are the same code.

Once a code has been input, the CheatCode node will generate a `code_entered` signal. This signal takes a `code` argument containing the string that was input.
