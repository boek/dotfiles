;;; early-init.el --- Runs before init.el, package.el, and UI init -*- lexical-binding: t; -*-

;; Defer GC during startup; init.el lowers this back down once loading is done.
(setq gc-cons-threshold most-positive-fixnum)

;; We call (package-initialize) ourselves in init.el.
(setq package-enable-at-startup nil)

;; Skip UI chrome before it's ever drawn, instead of enabling then disabling it.
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; Native-comp warnings from third-party packages are noise, not actionable.
(setq native-comp-async-report-warnings-errors nil)

;; This config is dotter-managed: ~/.config/emacs/*.el/.org are intentionally
;; symlinks into the git-controlled dotfiles repo. Always follow them instead
;; of prompting on every startup/visit.
(setq vc-follow-symlinks t)
