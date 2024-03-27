(add-to-list 'exec-path "/usr/bin")
(add-to-list 'exec-path "/usr/local/bin")

(if (eq system-type 'darwin)
    (add-to-list 'exec-path "/opt/homebrew/bin")
  )

(if (eq system-type 'gnu/linux)
    (add-to-list 'exec-path "/home/linuxbrew/.linuxbrew/bin")
  )

(add-to-list 'exec-path "~/bin")

(provide 'env-init)
