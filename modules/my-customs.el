(tool-bar-mode -1)

(show-paren-mode t)
(column-number-mode 1)

(setq make-backup-files nil)

(require 'subatomic256-theme)

(when (eq system-type 'windows-nt)
  (set-default-font "consolas-11"))

(provide 'my-customs)
