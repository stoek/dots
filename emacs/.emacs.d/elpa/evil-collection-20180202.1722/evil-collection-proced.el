;;; evil-collection-proced.el --- Evil bindings for proced -*- lexical-binding: t -*-

;; Copyright (C) 2017 Pierre Neidhardt

;; Author: Pierre Neidhardt <ambrevar@gmail.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/jojojames/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, proced, tools

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published
;; by the Free Software Foundation; either version 3, or (at your
;; option) any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Evil bindings for proced.

;;; Code:
(require 'evil)
(require 'proced)

(defun evil-collection-proced-setup ()
  (evil-set-initial-state 'proced-mode 'motion)

  (evil-define-key 'motion proced-mode-map
    (kbd "<return>") 'proced-refine

    ;; mark
    ;; TODO: Implement a proced-toggle-mark?
    "m" 'proced-mark ; Mentioned in documentation, should be followed.
    "*" 'proced-mark-all
    "M" 'proced-unmark-all
    "~" 'proced-toggle-marks
    "c" 'proced-mark-children
    "C" 'proced-mark-children ; Emacs has "C"
    "p" 'proced-mark-parents
    "P" 'proced-mark-parents ; Emacs has "P"
    (kbd "<delete>") 'proced-unmark-backward

    ;; motion
    ;; TODO: Implement beginning-of-buffer / end-of-buffer.
    (kbd "SPC") 'evil-scroll-down
    (kbd "S-SPC") 'evil-scroll-up

    "zt" 'proced-toggle-tree

    "u" 'proced-undo

    "O" 'proced-omit-processes ; TODO: Change default binding?

    "x" 'proced-send-signal ; Emacs has "k" and "x", "k" is mentioned in documentation

    ;; filter
    "s" 'proced-filter-interactive ; Refers to "[s]elect", Emacs has "f" mentioned in documentation.
    "S" 'proced-format-interactive

    ;; sort
    "oo" 'proced-sort-start ; Refers to "[o]order", Emacs has "s" mentioned in documentation.
    "oO" 'proced-sort-interactive
    "oc" 'proced-sort-pcpu
    "om" 'proced-sort-pmem
    "op" 'proced-sort-pid
    "ot" 'proced-sort-time
    "ou" 'proced-sort-user

    "r" 'proced-renice

    ;; refresh
    "gr" 'revert-buffer

    ;; quit
    "q" 'quit-window ; TODO: Macro support?
    "ZQ" 'evil-quit
    "ZZ" 'quit-window))

(provide 'evil-collection-proced)
;;; evil-collection-proced.el ends here
