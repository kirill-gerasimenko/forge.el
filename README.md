# cargo.el

Forge mode for Emacs. This package gives you a set of key combinations to perform Forge tasks within your FSharp projects.

## Installation

This package can be installed through [melpa](https://melpa.org/):

```
M-x package-install forge
```

## Usage

Add forge-minor-mode to your fsharp-mode-hook

```el
(add-hook 'fsharp-mode-hook 'cargo-minor-mode)
```

You will now have the following key combinations at your disposal:

 Keybinding             | Command
------------------------|----------------------
 <kbd>C-c C-c C-n</kbd> | forge-process-new
 <kbd>C-c C-c C-f</kbd> | forge-process-file
 <kbd>C-c C-c C-r</kbd> | forge-process-reference
 <kbd>C-c C-c C-u</kbd> | forge-process-update
 <kbd>C-c C-c C-p</kbd> | forge-process-paket
 <kbd>C-c C-c C-c</kbd> | forge-process-fake
 <kbd>C-c C-c C-e</kbd> | forge-process-refresh

Before executing the task, Emacs will prompt you to save any modified buffers
associated with the current Forge project. Setting `compilation-ask-about-save`
to `nil` makes Emacs save modified buffers without asking.
