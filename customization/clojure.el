;;; Package --- summary

;;; Commentary:

;;; Code:

(use-package cider
  :bind
  ("C-c M-b" . cider-repl-clear-buffer))
  ;; :config
  ;; (setq cider-lein-parameters "with-profile dev repl :headless"))

(use-package clj-refactor
  :config
  (defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1)
    (cljr-add-keybindings-with-prefix "C-c C-m"))
  (add-hook 'clojure-mode-hook 'my-clojure-mode-hook))

(use-package clojure-mode)

(use-package flycheck-joker)

(use-package paredit
  :config
  (add-hook 'clojure-mode-hook #'paredit-mode))

(defun start-cider-repl-with-profile ()
  (interactive)
  (letrec ((profile (read-string "Enter profile name: "))
           (lein-params (concat "with-profile +" profile " repl :headless")))
    (message "lein-params set to: %s" lein-params)
    (set-variable 'cider-lein-parameters lein-params)
    (cider-jack-in)))

(provide 'clojure)
;;; clojure.el ends here
