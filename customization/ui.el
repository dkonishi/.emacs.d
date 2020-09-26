;;; Package --- summary

;;; Commentary:

;;; Code:

(use-package dracula-theme
  :init (load-theme 'dracula t))

(use-package spaceline
  :config
  (spaceline-spacemacs-theme))

;; Fullscreen
(toggle-frame-maximized)

;; Enable line numbers
(global-linum-mode t)

;; Disable startup screen
(setq inhibit-startup-message t)

;; Font config
(defun fontify-frame (frame)
  "Define the font size based on FRAME resolution."
  (interactive)
  (if window-system
    (progn
      (set-frame-parameter frame 'fullscreen 'maximized)

      (if (> (x-display-pixel-width) 1900)
        (set-frame-parameter frame 'font "Hack 10" )
        (set-frame-parameter frame 'font "Hack 10")))))
(fontify-frame nil)
(push 'fontify-frame after-make-frame-functions)

;; Remove scroll bar
(scroll-bar-mode -1)

;; Alternate between frames
(global-set-key (kbd "M-n") 'other-frame) ; Alt+n

;; Remove top bar
(menu-bar-mode -1)
(tool-bar-mode -1)

(provide 'ui)

(use-package yafolding)

(global-set-key (kbd "s-d y") 'yafolding-discover)
(add-hook 'prog-mode-hook
          (lambda () (yafolding-mode)))

;; (use-package centaur-tabs
;;   :demand
;;   :config
;;   (centaur-tabs-mode t))

(use-package elscreen
  :init (elscreen-start))

;;; ui.el ends here
