;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

;; ido (cool completion)
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; tramp
(setq tramp-default-method "ssh")

;; theme (maybe pick a better one later)
(require 'color-theme)
(color-theme-midnight)

;; remove stupid menu bar stuff
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; misc nice things
(setq require-trailing-newline t)
(setq x-select-enable-clipboard t)
(setq inhibit-startup-message t)
(setq backup-directory-alist '(("." . "~/.emacs-backups")))
(setq echo-keystrokes 0.1)
(global-font-lock-mode t t)
(setq font-lock-maximum-decoration t)
(setq kill-whole-line t)

;; move with shift-arrow keys
(windmove-default-keybindings 'shift)