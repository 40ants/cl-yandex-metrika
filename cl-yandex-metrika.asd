(asdf:defsystem #:cl-yandex-metrika
  :description "A client library for metrika.yandex.ru"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "BSD"
  :depends-on (#:alexandria
               #:cl-interpol
               #:jonathan
               #:log4cl
               #:dexador)
  :serial t
  :components ((:file "cl-yandex-metrika")))

