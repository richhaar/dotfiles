(package-initialize)
;;Load package repositories
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("marmalade" . "http://marmalade-repo.org/packages/")
	("melpa" . "https://melpa.org/packages/")))
(require 'helm-config) 

;;Enable ido tab-completion mode
(ido-mode 1)
(setq ido-everywhere 1)
(setq ido-enable-flex-matching 1)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(setq-default indent-tabs-mode nil)

;; Tex spelling checks
(add-hook 'tex-mode-hook
          #'(lambda () (setq ispell-parser 'tex)))

;; Org specific settings
(setq org-log-done 'time)
