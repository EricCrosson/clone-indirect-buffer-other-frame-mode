;;; clone-indirect-buffer-other-frame-mode.el --- Provide implementation and keybinding to clone-indirect-buffer-other-frame
;;
;;; Copyright (C) 2018  Free Software Foundation, Inc.
;;
;; Author: Eric Crosson <eric.s.crosson@utexas.com>
;; Version: 1.0.0
;; Keywords: convenience
;; URL: https://github.com/EricCrosson/clone-indirect-buffer-other-frame-mode
;; Package-Requires: ((emacs "24"))
;;
;; This file is not a part of GNU Emacs.
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
;;; Commentary:
;;
;; Thanks to https://stackoverflow.com/a/47333316

;;; Code:


(defun clone-indirect-buffer-other-frame (newname display-flag &optional norecord)
  "Like `clone-indirect-buffer' but display in another window.
NEWNAME, DISPLAY-FLAG, and NORECORD passed directly to
`clone-indirect-buffer'."
  (interactive
   (progn
     (if (get major-mode 'no-clone-indirect)
         (error "Cannot indirectly clone a buffer in %s mode" mode-name))
     (list (if current-prefix-arg
               (read-buffer "Name of indirect buffer: " (current-buffer)))
           t)))
  (let ((pop-up-frames t))
    (clone-indirect-buffer newname display-flag norecord)))

;;;###autoload
(define-minor-mode clone-indirect-buffer-other-frame-mode
  "Minor-mode providing default keybinding for `clone-indirect-buffer-other-frame'."
  :init-value t
  :lighter nil
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-x 5 c") 'clone-indirect-buffer-other-frame)
            map)
  :global t
  :group 'clone-indirect-buffer-other-frame
  :require 'clone-indirect-buffer-other-frame-mode)


(provide 'clone-indirect-buffer-other-frame-mode)

;;; clone-indirect-buffer-other-frame-mode.el ends here
