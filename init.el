(add-to-list 'load-path "~/.emacs.d/")

(require 'init-ui)
(require 'init-text)

(require 'init-c)
(require 'init-markdown)
(require 'init-php)
(require 'init-perl)
(require 'init-python)

;; do not make backup files
(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving
(setq backup-inhibited t)


(setq tags-table-list
            '("/home/git/bom" "/home/kaveh/Office/bom"))

(require 'highlight-symbol)
(setq search-highlight           t) ; Highlight search object 
(global-set-key [(C f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-prev)


(global-set-key (kbd "C-c l") 'goto-line)

(server-start)
(desktop-save-mode 1)

(defun kmz-insert-comment (p1 p2)
  (interactive "r")
    (query-replace-regexp "^\\(.*\\)" "#\\1"  nil (region-beginning) (region-end))
)
(global-set-key (kbd "C-c c") 'kmz-insert-comment)

(defun kmz-remove-comment (p1 p2)
  (interactive "r")
    (query-replace-regexp "^#\\(.*\\)" "\\1"  nil (region-beginning) (region-end))
)
(global-set-key (kbd "C-c C") 'kmz-remove-comment)

(defun kmz-insert-tab (p1 p2)
  (interactive "r")
    (query-replace-regexp "^\\(.*\\)" "    \\1" nil (region-beginning) (region-end))
)
(global-set-key (kbd "C-c t") 'kmz-insert-tab)


(defun kmz-remove-tab (p1 p2 )
  (interactive "r")
    (query-replace-regexp "^    \\(.*\\)" "\\1" nil (region-beginning) (region-end))
)
(global-set-key (kbd "C-c T") 'kmz-remove-tab)
