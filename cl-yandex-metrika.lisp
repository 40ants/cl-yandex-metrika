(defpackage #:cl-yandex-metrika
  (:use #:cl)
  (:export #:hit
           #:*counter*))
(in-package cl-yandex-metrika)

(cl-interpol:enable-interpol-syntax)


(defvar *counter* nil
  "Yandex Metrika's counter id.")


(defun hit (url &key params)
  (unless *counter*
    (error "Please, set cl-yandex-metrika:*counter* variable"))
  (let* ((rn (random 1000000))
         (endpoint #?"https://mc.yandex.ru/watch/${*counter*}/")
         (browser-info #?"en:utf-8:rn:${rn}:ar:1")
         (content `(("page-url" . ,url)
                    ("ut" . "noindex")
                    ("browser-info" . ,browser-info))))

    (when params
      (setf (alexandria:assoc-value content "site-info")
            (jonathan:to-json params)))

    (log:debug "Sending hit to" endpoint "with" content)
    (dex:post endpoint :content content :timeout 1)))
