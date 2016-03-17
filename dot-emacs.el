;; Rethinking everything
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1)) 
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tooltip-mode) (tooltip-mode -1))

(setq dotfiles-dir "~/.emacs.d/")
(setq lisp-dir (concat dotfiles-dir "lisp"))
(add-to-list 'load-path lisp-dir)

;; FIXME: remove paths to /home/troden
;; FIXME: add artbollocks-mode,
;; FIXME: flyspell to markdown mode

(setq custom-file (concat dotfiles-dir "custom.el"))
(setq personal-file (concat dotfiles-dir "personal.el"))
(dolist (f (list custom-file personal-file))
  (if (file-exists-p f)
	  (progn (load f)
		 (message (concat "Loaded " f)))
	nil))

;; just for on the mac.
(setq ns-command-modifier 'meta)

;; confirm on exit (i have fat fingers on one of my keyboards)
(setq confirm-kill-emacs 'yes-or-no-p)

;; FIXME: if we're on HiDPI 
(set-default-font "Hack 14")

(require 'package)
;; (add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; FIXME: migrate all this to use package?
;; a list of packages
(defvar tedroden/packages
  '(auto-complete
	ac-ispell
	go-mode
	go-autocomplete
	magit
	markdown-mode
	flx-ido
	ace-window
	rainbow-blocks
	rainbow-delimiters
	rainbow-mode
	use-package
	smooth-scroll
	js3-mode
	beacon
	paradox
	base16-theme
    )
  "Stuff I like")


(if (file-exists-p package-user-dir)
    nil
  (package-refresh-contents))

(dolist (p tedroden/packages)
  (when (not (package-installed-p p))
	(package-install p)))


(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "C-.") 'avy-goto-char-2)


(use-package beacon-mode
  :init
  (beacon-mode 1))

(use-package markdown-mode
  :init
  (setq markdown-list-indent-width 2))

;; ;;; highlight the cursor when scrolling or switching buffers
;; ;; super great for teaching or for someone looking over your shoulder
;; (beacon-mode 1) 

;; ivy was cool. using helm now though
;; (ivy-mode nil) 
;; (setq ivy-display-style 'fancy)
;; (setq ivy-count-format "(%d/%d) ")
;; (require 'counsel)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; (global-set-key (kbd "C-h f") 'counsel-describe-function)
;; (global-set-key (kbd "C-h v") 'counsel-describe-variable)
;; (global-set-key (kbd "C-h l") 'counsel-load-library)
;; ; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; ;(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;; (global-set-key (kbd "C-c g") 'counsel-git)
;; (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; (global-set-key (kbd "C-c k") 'counsel-ag)
;; (global-set-key (kbd "C-c l") 'counsel-locate)
;; ; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;; (setq ivy-use-virtual-buffers t)

(require 'use-package)
(use-package smooth-scroll
  :config
  (smooth-scroll-mode 1)
  (setq smooth-scroll/vscroll-step-size 5)
  )

(use-package js3-mode
  :mode ("\\.js\\'" . js3-mode))

;; The package is "python" but the mode is "python-mode":
(use-package python
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python" . python-mode))

(use-package undo-tree
  :defer t
  :ensure t
  :diminish undo-tree-mode
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)))

(use-package artbollocks-mode
  :defer t
  :config
  (progn
    (setq artbollocks-weasel-words-regex
          (concat "\\b" (regexp-opt
                         '("one of the"
                           "should"
                           "just"
                           "sort of"
                           "a lot"
                           "probably"
                           "maybe"
                           "perhaps"
                           "I think"
                           "really"
                           "pretty"
                           "nice"
                           "action"
                           "utilize"
                           "leverage") t) "\\b"))
    ;; Don't show the art critic words, or at least until I figure
    ;; out my own jargon
    (setq artbollocks-jargon nil)))

;; ido is a good mode.
(ido-mode t)
(ido-everywhere t)
(flx-ido-mode t)

(load-theme 'base16-twilight-dark)

;; (global-hl-line-mode nil)
; (global-linum-mode t) ;; this is good for teaching, but i don't generally want it.
(column-number-mode t)

;; auto complete setup. Is this right?
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat lisp-dir "ac-dict"))
(ac-config-default)

;; magit setup. Is this right?
(setq magit-dir (concat dotfiles-dir "external/magit/"))
(add-to-list 'load-path magit-dir)
(require 'magit)
(global-set-key (kbd "C-c m") 'magit-status)


(global-hi-lock-mode 1)	  
(defun tedroden/code-setup ()
  (interactive)
  (highlight-phrase "FIXME" 'hi-yellow)
  (highlight-phrase "Fixme" 'hi-yellow)
  (highlight-phrase "fixme" 'hi-yellow)
  (highlight-phrase "TODO" 'hi-yellow)
  (highlight-phrase "Todo" 'hi-yellow)
  (highlight-phrase "todo" 'hi-yellow))

(add-hook 'prog-mode-hook  'tedroden/code-setup)
(add-hook 'text-mode-hook  'tedroden/code-setup)

(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'sass-mode-hook 'rainbow-mode)

;; setup-x p goes to the previous window (opposite of C-x o)
(defun tedroden/prev-window ()
  "go to previous window"
  (interactive)
  (other-window -1))

;; what do you think this does?
(setq-default tab-width 4)

(fset 'yes-or-no-p 'y-or-n-p)

(defun tedroden/edit-dot-emacs ()
  (interactive)
  (find-file (concat dotfiles-dir "init.el")))

;; set up some key bindings (setq default-tab-width 4)
(global-set-key "\M-g" 'goto-line)	
(global-set-key "\M-_" 'shrink-window)
(global-set-key "\M-+" 'enlarge-window)
(global-set-key (kbd "C-x p") 'tedroden/prev-window)
(global-set-key [f4] 'tedroden/edit-dot-emacs)
(global-set-key "\C-ca" 'org-agenda)


(defun eshell-here ()
  "opens up a shell in the same  directory as the current buffer"
  (interactive)
  (let* ((parent (if (buffer-file-name)
					 (file-name-directory (buffer-file-name))
				   default-directory))
		 (height (/ (window-total-height) 3))
		 (name (car (last (split-string parent "/" t)))))
	(split-window-below (- height))
	(other-window 1)
	(eshell "new")
	(rename-buffer (concat "*eshell: " name "*"))
	(insert (concat "ls"))
	(eshell-send-input)))
(global-set-key (kbd "C-!") 'eshell-here)

(defun eshell/x ()
  (insert "exit")
  (eshell-send-input)
  (other-window 1)
  (delete-other-windows 1))

; setup the path
(defun eshell-mode-hook-func ()
  (message "setting this up.")
  (setq eshell-path-env (concat "/usr/local/bin:" eshell-path-env)))

(add-hook 'eshell-mode-hook 'eshell-mode-hook-func)

;; start the server
;; FIXME: can we check to see if it's running first?
;; (server-start)


;; this *should* make it so we don't open new frames
(setq ns-pop-up-frames nil)

;; (setq c-default-style "linux")
(setq-default c-basic-offset 8
	      tab-width 8
	      indent-tabs-mode t)

(add-to-list 'load-path "/home/troden/code/emacs-async")
(add-to-list 'load-path "/home/troden/code/helm")

; (require 'helm-config)


(use-package helm-config
    :config
  (progn
    (helm-mode 1)
    (helm-adaptive-mode 1)
    (helm-push-mark-mode 1)
    (load "/home/troden/code/dot-files/helm-init.el")))

;; 					; (global-set-key (kbd "M-x") 'helm-M-x)
;; (helm-mode 1)


(defvar quicklisp-path "/home/troden/quicklisp")
(load (concat quicklisp-path "/slime-helper"))

(slime-setup '(slime-fancy slime-mrepl slime-banner slime-tramp
	       slime-xref-browser slime-highlight-edits
	       slime-sprof))
;;
;; Decide where to put a slime scratch file, if you want one, and set
;; it up with:
;;
(setf slime-scratch-file "/home/troden/.slime-scratch.lisp")
;;

(defadvice slime-scratch
    (after slime-scratch-adjust-modes () activate compile)
  (turn-some-mode-off)
  (turn-some-other-mode-on))

(use-package hyde
  :config
  (progn
    (setq hyde-home "/home/troden/code/blog")
    (setq hyde_images_dir "static")
    ))
  



