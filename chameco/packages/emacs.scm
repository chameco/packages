(define-module (chameco packages emacs)
  #:use-module (guix packages)
  #:use-module (guix build-system emacs)
  #:use-module (guix download))

(define-public emacs-quick-peek
  (package
   (name "emacs-quick-peek")
   (version "20190208.1515")
   (source
    (origin
     (method url-fetch)
     (uri (string-append
           "https://melpa.org/packages/quick-peek-"
           version
           ".el"))
     (sha256
      (base32
       "0dp843d217cblbn0xd6x06nghfk79q1y221qq72ndlr0znvqj6b7"))))
   (build-system emacs-build-system)
   (home-page "unspecified")
   (synopsis "Inline quick-peek windows")
   (description
    "A utility library to display inline pop-ups.  Looks roughly like this:


let _ = <|>le m n                           ← <|> marks the point
------------------------------------------- ← Pop-up begins here
        le : ℕ → ℕ → ℙ
        Inductive le (n : ℕ) : ℕ → ℙ ≜
        | le_n : n ≤ n
        | le_S : ∀ m : ℕ, n ≤ m → n ≤ S m
------------------------------------------- ← Pop-up ends here
        && le n m                           ← Buffer text continues here

See `quick-peek-show' and `quick-peek-hide' for usage instructions.
")
   (license #f)))

(define-public emacs-flycheck-inline
  (package
   (name "emacs-flycheck-inline")
   (version "20190320.1611")
   (source
    (origin
     (method url-fetch)
     (uri (string-append
           "https://melpa.org/packages/flycheck-inline-"
           version
           ".el"))
     (sha256
      (base32
       "04zvaa58fnpp8yqdlab4dx06w61rplhsf28k9yyz2hh7ipamyzy2"))))
   (build-system emacs-build-system)
   (propagated-inputs
    `(("emacs-flycheck" ,emacs-flycheck)))
   (home-page
    "https://github.com/flycheck/flycheck-inline")
   (synopsis "Display Flycheck errors inline")
   (description
    "Provide an error display function to show Flycheck errors inline, directly
below their location in the buffer.

# Setup

Enable the local minor mode for all flycheck-mode buffers:

(with-eval-after-load 'flycheck
  (add-hook 'flycheck-mode-hook #'flycheck-inline-mode))
")
   (license #f)))

(define-public emacs-shackle
  (package
   (name "emacs-shackle")
   (version "20190201.1846")
   (source
    (origin
     (method url-fetch)
     (uri (string-append
           "https://melpa.org/packages/shackle-"
           version
           ".el"))
     (sha256
      (base32
       "1bkbw8jc9fxp1dldf3bvyyhihimm559p689bsbdji85qinz1dn79"))))
   (build-system emacs-build-system)
   (home-page "https://github.com/wasamasa/shackle")
   (synopsis "Enforce rules for popups")
   (description
    "This global minor mode allows you to easily set up rules for
popups in Emacs.

See the README for more info:
https://github.com/wasamasa/shackle
")
  (license #f)))

(define-public emacs-eyebrowse
  (package
   (name "emacs-eyebrowse")
   (version "20190322.933")
   (source
    (origin
     (method url-fetch)
     (uri (string-append
           "https://melpa.org/packages/eyebrowse-"
           version
           ".el"))
     (sha256
      (base32
       "0pd115dsr2p6qrpxpc16m390aqizfzlv2gl03zq7nz3krdizl7v0"))))
   (build-system emacs-build-system)
   (propagated-inputs `(("emacs-dash" ,emacs-dash)))
   (home-page
    "https://github.com/wasamasa/eyebrowse")
   (synopsis "Easy window config switching")
   (description
    "This global minor mode provides a set of keybindings for switching
window configurations.  It tries mimicking the tab behaviour of
`ranger`, a file manager.

See the README for more info:
https://github.com/wasamasa/eyebrowse
")
   (license #f)))
