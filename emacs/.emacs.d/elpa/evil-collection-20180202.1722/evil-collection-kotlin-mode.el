;;; evil-collection-kotlin-mode.el --- Bindings for `kotlin-mode'. -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/jojojames/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: emacs, evil, tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;; Bindings for `kotlin-mode'.

;;; Code:
(require 'evil)
(require 'kotlin-mode nil t)

(defun evil-collection-kotlin-mode-setup ()
  "Set up `evil' bindings for `kotlin-mode'."
  (evil-define-key 'normal kotlin-mode-map "gz" 'kotlin-repl))

(provide 'evil-collection-kotlin-mode)
;;; evil-collection-kotlin-mode.el ends here
