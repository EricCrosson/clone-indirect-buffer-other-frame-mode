test:
	emacs --version
	emacs -nw --batch --eval '(load-file "clone-indirect-buffer-other-frame-mode.el")'
