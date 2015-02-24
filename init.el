(defvar home-dir (file-name-directory load-file-name)
  "emacs home directory")
(defvar modules-dir (concat home-dir "modules/")
  "all of my own el files")
(defvar vendor-dir (concat home-dir "vendor/")
  "all of 3rd party")

(add-to-list 'load-path modules-dir)
(add-to-list 'load-path vendor-dir)

(require 'my-customs)
(require 'my-modes)

(setq frame-title-format "%f")
