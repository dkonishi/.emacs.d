;;; Package --- summary

;;; Commentary:

;;; Code:

(use-package cider
  :bind ("C-c M-b" . cider-repl-clear-buffer)
  :config
  (setq cider-lein-parameters "with-profile prod repl :headless"))

(use-package clj-refactor
  :config
  (defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1)
    (cljr-add-keybindings-with-prefix "C-c C-m"))
  (add-hook 'clojure-mode-hook 'my-clojure-mode-hook))

(use-package clojure-mode)

(use-package paredit
  :init (add-hook 'clojure-mode-hook #'paredit-mode))

(provide 'clojure)
;;; clojure.el ends here
