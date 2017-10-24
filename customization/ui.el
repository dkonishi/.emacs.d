;;; package --- Summary

;;; Commentary:

;;; Code:

;; Fullscreen
(toggle-frame-maximized)

;; Enable line numbers
(global-linum-mode t)

;; Highlight current line
(global-hl-line-mode 1)

;; Disable startup screen
(setq inhibit-startup-message t)

;; Set default font
(setq default-frame-alist '((font . "Hack-10")))

;; Remove scroll bar
(scroll-bar-mode -1)

;; Remove top bar
(menu-bar-mode -1)
(tool-bar-mode -1)

(provide 'ui)
;;; ui.el ends here
