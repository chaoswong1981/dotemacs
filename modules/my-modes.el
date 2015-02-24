;; ido
(require 'ido)
(ido-mode t)

;; web
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))

(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (local-set-key (kbd "RET") 'newline-and-indent)
)
(add-hook 'web-mode-hook 'web-mode-hook)

;; xml-mode
(add-to-list 'auto-mode-alist '("\\.earth?\\'" . xml-mode))

;; org-mode
(defvar home-dir (file-name-directory load-file-name))
(add-to-list 'load-path (concat home-dir "vendor/org/lisp"))
(add-to-list 'load-path (concat home-dir "vendor/org/contrib/lisp"))
(define-key global-map (kbd "C-c a") 'org-agenda)
(setq org-hiding-leading-stars t)
(setq org-log-done t)

(provide 'my-modes)
