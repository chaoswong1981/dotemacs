;;基本配置
(tool-bar-mode -1)

(show-paren-mode t)
(column-number-mode 1)

(setq make-backup-files nil)

(when (eq system-type 'windows-nt)
  (set-frame-font "consolas-11"))

;;添加第三方加载路径
(defvar home-dir (file-name-directory load-file-name)
  "emacs home directory")

(defvar vendor-dir (concat home-dir "vendor/")
  "all of 3rd party")
(add-to-list 'load-path vendor-dir)

;;键绑定
(global-set-key (kbd "C-<tab>") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "C-<tab>") 'dabbrev-expand)
