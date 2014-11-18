(require-package 'company)
(require 'company)

(setq company-idle-delay 0.2)
(setq company-minimum-prefix-length 1)
(setq company-show-numbers t)
(setq company-tooltip-limit 20)

(setq company-global-modes
      '(not
        org-mode
        latex-mode
        tex-mode))
(global-company-mode)

(provide 'init-company)
