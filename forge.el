;;; forge.el --- Emacs Minor Mode for Forge, FSharp's Package Manager.

;; Copyright (C) 2016 Simon Tyler Cousins

;; Author: Simon Tyler Cousins
;; Version  : 0.0.1
;; Keywords: tools
;; Package-Requires: ((emacs "24.3") (fsharp-mode "0.2.0"))

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
;;
;; Forge Minor mode.
;; Provides a number of key combinations and functions for managing Forge.
;; Current supported Forge Key Combinations:
;;  * C-c C-c C-n - forge-process-new
;;  * C-c C-c C-f - forge-process-file
;;  * C-c C-c C-r - forge-process-reference
;;  * C-c C-c C-u - forge-process-update
;;  * C-c C-c C-p - forge-process-paket
;;  * C-c C-c C-c - forge-process-fake
;;  * C-c C-c C-e - forge-process-refresh
;;
;;; Code:

(require 'forge-process)

(defgroup forge nil
  "Forge group."
  :prefix "forge-"
  :group 'tools)

(defvar forge-minor-mode-map (make-keymap) "Forge-mode keymap.")
(defvar forge-minor-mode nil)

;;;###autoload
(define-minor-mode forge-minor-mode
  "Forge minor mode. Used to hold keybindings for forge-mode"
  nil "forge" forge-minor-mode-map)

(define-key forge-minor-mode-map (kbd "C-c C-c C-n") 'forge-process-new)
(define-key forge-minor-mode-map (kbd "C-c C-c C-f") 'forge-process-file)
(define-key forge-minor-mode-map (kbd "C-c C-c C-r") 'forge-process-reference)
(define-key forge-minor-mode-map (kbd "C-c C-c C-u") 'forge-process-update)
(define-key forge-minor-mode-map (kbd "C-c C-c C-p") 'forge-process-paket)
(define-key forge-minor-mode-map (kbd "C-c C-c C-c") 'forge-process-fake)
(define-key forge-minor-mode-map (kbd "C-c C-c C-e") 'forge-process-refresh)

(provide 'forge)
;;; forge.el ends here
