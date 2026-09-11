;;; init.el --- Bootstrap; the real config lives in config.org -*- lexical-binding: t; -*-

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-always-ensure t)

;; Keep `M-x customize` output out of this file and out of git.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))

(setq gc-cons-threshold (* 16 1024 1024))
