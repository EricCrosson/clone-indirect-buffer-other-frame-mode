# clone-indirect-buffer-other-frame-mode [![Build Status](https://travis-ci.org/EricCrosson/clone-indirect-buffer-other-frame-mode.svg?branch=master)](https://travis-ci.org/EricCrosson/clone-indirect-buffer-other-frame-mode) [![Version](https://img.shields.io/github/tag/EricCrosson/clone-indirect-buffer-other-frame-mode.svg)](https://github.com/EricCrosson/clone-indirect-buffer-other-frame-mode/releases)

> Provide implementation and keybinding to clone-indirect-buffer-other-frame

This package provides an analagous function to the built-in [`clone-indirect-buffer-other-window`](http://www.gnu.org/software/emacs/manual/html_node/emacs/Indirect-Buffers.html), and binds it to an analagous key combination when provided minor-mode is active.

## Install

With [Quelpa](https://framagit.org/steckerhalter/quelpa)

``` {.sourceCode .lisp}
(use-package clone-indirect-buffer-other-frame-mode
  :quelpa (clone-indirect-buffer-other-frame-mode
           :fetcher github
           :repo "EricCrosson/clone-indirect-buffer-other-frame-mode"))
```

Or manually, after downloading into your `load-path`

``` {.sourceCode .lisp}
(require 'clone-indirect-buffer-other-frame-mode)
```

## Use

When the `clone-indirect-buffer-other-frame-mode` minor-mode is
active, `clone-indirect-buffer-other-frame` is bound to `C-x 5 c`.

## Example

Buffer cloned, in new frame.

![Screenshot after invoking `clone-indirect-buffer-other-frame`](https://raw.githubusercontent.com/EricCrosson/clone-indirect-buffer-other-frame-mode/master/img/clone-indirect-buffer-other-frame-demo.png)

## Related

- [Emacs documentation on Indirect Buffers](http://www.gnu.org/software/emacs/manual/html_node/emacs/Indirect-Buffers.html)
- [original StackOverflow post](https://stackoverflow.com/a/47333316)
- [Why use indirect buffers?](https://emacs.stackexchange.com/a/12182)

## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
