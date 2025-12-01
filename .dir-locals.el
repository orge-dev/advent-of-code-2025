((nil
  .
  ((eval
    .
    (let ((root (locate-dominating-file default-directory ".dir-locals.el")))
      (when root
        (setq-local
         compile-command
         (format "cd %s && mix test"
                 (shell-quote-argument (expand-file-name root))))))))))
