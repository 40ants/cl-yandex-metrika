(asdf:defsystem #:cl-yandex-metrika
  :description "Describe cl-yandex-metrika here"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "BSD"
  :depends-on (#:cl-strings
               #:cl-ppcre
               #:cl-interpol
               #:jonathan
               #:log4cl
               #:dexador)
  :serial t
  :components ((:file "cl-yandex-metrika")))

