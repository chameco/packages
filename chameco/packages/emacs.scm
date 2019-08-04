(define-module (chameco packages emacs))

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
