;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; (default nil)
   dotspacemacs-enable-lazy-installation nil
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t)
                      ;; auto-completion-enable-snippets-in-popup t)
     better-defaults
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-support t)
     chinese
     chrome
     colors
     deft
     (elfeed :variables
             ;; elfeed-enable-web-interface t
             rmh-elfeed-org-files (list "~/Dropbox/org/elfeed.org"))
     emacs-lisp
     git
     github
     gtags
     html
     (latex :variables
            latex-build-command "LaTeX")
     jabber
     markdown
     (mu4e :variables
           mu4e-enable-mode-line t
           mu4e-enable-notifications t
           mu4e-installation-path "/usr/share/emacs/site-lisp")
     org
     osx
     pdf-tools
     python
     (ranger :variables
             ranger-cleanup-on-disable t
             ranger-show-preview t)
     search-engine
     semantic
     shell
     spacemacs-layouts
     spacemacs-ivy
     spell-checking
     syntax-checking
     swift
     ;; twitter
     version-control
     ;; ycmd
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects bookmarks)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 7
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.3)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost
any user code here.  The exception is org related code, which should be placed
in `dotspacemacs/user-config'."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  (setq undo-tree-auto-save-history t
        undo-tree-history-directory-alist
        `(("." . ,(concat spacemacs-cache-directory "undo"))))
  (unless (file-exists-p (concat spacemacs-cache-directory "undo"))
    (make-directory (concat spacemacs-cache-directory "undo")))
  (when (spacemacs/system-is-linux)
    (setq browse-url-browser-function 'browse-url-generic
          browse-url-generic-program "google-chrome-stable"))
  (setq vc-follow-symlinks t)
  (setq ad-redefinition-action 'accept)
  ;; (cond
  ;;  ((spacemacs/system-is-mac)
  ;;   (spacemacs//set-monospaced-font "Source Code Pro" "Hiragino Sans GB" 14 16))
  ;;  ((spacemacs/system-is-linux)
  ;;   (spacemacs//set-monospaced-font "Source Code Pro" "Source Han Sans CN" 14 16)))
  ;; (set-fontset-font (frame-parameter nil 'font) 'symbol
  ;;                   (font-spec :family "Source Code Pro"))

  ;; latex
  (setq TeX-source-correlate-mode t
        TeX-source-correlate-start-server t
        TeX-source-correlate-method 'synctex)
  ;; (eval-after-load 'auctex (pdf-tools-install))
  (cond
   ((spacemacs/system-is-mac)
    (setq TeX-view-program-selection '((output-pdf "Skim"))))
   ((spacemacs/system-is-linux)
    (setq TeX-view-program-selection '((output-pdf "Zathura")
                                       (output-pdf "PDF Tools")))))
  (setq TeX-view-program-list
        '(("Okular" "okular --unique %o#src:%n`pwd`/./%b")
          ("Skim" "displayline -b -g %n %o %b")
          ("Zathura"
           ("zathura %o"
            (mode-io-correlate
             " --synctex-forward %n:0:%b -x \"emacsclient +%{line} %{input}\"")))))
  (setq-default TeX-master "paper")

  ;; org
  (setq org-agenda-files (list "~/Dropbox/org/tasks.org"))
  (setq org-bullets-bullet-list '("◉" "○" "✸" "•"))
  (setq markdown-command "/usr/bin/pandoc")
  (setq org-file-apps '(("pdf" . "open %s")))
  (setq org-latex-listings 'minted)
  (setq org-beamer-outline-frame-options "allowframebreaks=0.9")
  ;; (setq org-beamer-frame-default-options "allowframebreaks")
  (setq org-latex-pdf-process
        '("latexmk -xelatex -latexoption=\"-shell-escape -interaction=nonstopmode -synctex=1\" -output-directory=%o %f"))

  ;; ycmd
  (cond
   ((spacemacs/system-is-linux)
    (set-variable 'ycmd-server-command '("python2" "/home/mssun/program/ycmd/ycmd")))
   ((spacemacs/system-is-mac)
    (set-variable 'ycmd-server-command '("python2" "~/Documents/github/ycmd/ycmd"))))

  ;; auto-completion
  (setq company-idle-delay 0)
  (setq ac-delay 0)

  ;; deft
  (setq deft-directory "~/Dropbox/notes")

  ;; mu4e
  (setq mu4e-maildir "~/.mail/gmail"
        mu4e-sent-folder "/sent"
        mu4e-drafts-folder "/drafts"
        mu4e-trash-folder "/trash"
        mu4e-refile-folder "/archive"
        mu4e-sent-messages-behavior 'delete
        mu4e-get-mail-command "offlineimap"
        mu4e-update-interval 15)

  (setq user-mail-address "mssun@cse.cuhk.edu.hk"
        user-full-name  "Mingshen Sun"
        mu4e-compose-signature
        (concat
         "Best,\n"
         "Mingshen\n"))

  (setq message-send-mail-function 'smtpmail-send-it
        starttls-use-gnutls t
        smtpmail-stream-type 'starttls
        smtpmail-default-smtp-server "smtp.gmail.com"
        smtpmail-smtp-server "smtp.gmail.com"
        smtpmail-smtp-service 587
        smtpmail-auth-credentials (expand-file-name "~/.authinfo.gpg"))
  (setq mu4e-hide-index-messages t)
  (with-eval-after-load 'mu4e-alert
    ;; (mu4e-alert-set-default-style 'notifications)) ; For linux
    (mu4e-alert-set-default-style 'libnotify))  ; Alternative for linux
    ;; (mu4e-alert-set-default-style 'notifier))   ; For Mac OSX (through the
	    ; terminal notifier app)
    ;; (mu4e-alert-set-default-style 'growl))      ; Alternative for Mac OSX
  (setq mu4e-alert-interesting-mail-query
        (concat
         "flag:unread"
         " AND NOT flag:trashed"
         " AND NOT maildir:"
         "\"/archive\""))
  (setq mu4e-html2text-command "w3m -dump -cols 110 -T text/html")
  (setq message-kill-buffer-on-exit t)


  ;; jabber
  (setq ssl-program-name "gnutls-cli"
        ssl-program-arguments '("--insecure" "-p" service host)
        ssl-certificate-verification-policy 1)

  (load-file "~/.jabber_authinfo.gpg")
  (setq jabber-alert-presence-message-function (lambda (who oldstatus newstatus statusnext) nil))
  (setq jabber-roster-line-format " %c %-25n %u %-8s  %s")
  ;; (setq jabber-show-resources nil)
  (add-hook 'jabber-alert-message-hooks 'jabber-message-notifications)
  (add-hook 'jabber-post-connect-hook 'jabber-autoaway-start)
  (setq jabber-autoaway-methods (list 'jabber-xprintidle-get-idle-time))
  (setq jabber-auto-reconnect t
        jabber-history-enable t
        jabber-use-global-history nil
        jabber-backlog-number 40
        jabber-backlog-days 30
        jabber-show-offline-contacts nil
        jabber-roster-show-title nil
        jabber-roster-show-bindings nil
        jabber-chat-buffer-show-avatar nil)
  (defun jabber-font-setup ()
    (set-face-attribute 'jabber-roster-user-online nil :foreground "#4f97d7")
    (set-face-attribute 'jabber-roster-user-xa nil :slant 'normal :foreground "#9f8766")
    (set-face-attribute 'jabber-roster-user-dnd nil :slant 'normal :foreground "#9f8766")
    (set-face-attribute 'jabber-roster-user-away nil :slant 'normal :foreground "#9f8766")
    (set-face-attribute 'jabber-roster-user-error nil :slant 'normal)
    (set-face-attribute 'jabber-roster-user-offline nil :slant 'normal :foreground "dark grey")

    (set-face-attribute 'jabber-title-small nil :inherit 'default :width 'normal :foreground "#bc6ec5" :height 'unspecified)
    (set-face-attribute 'jabber-title-medium nil :inherit 'default :width 'normal :height 'unspecified)
    (set-face-attribute 'jabber-title-large nil :inherit 'default :width 'normal :height 'unspecified))

  (add-hook 'jabber-roster-mode-hook 'jabber-font-setup)
  (add-hook 'jabber-chat-mode-hook 'flyspell-mode)

)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
