(write-line "Hello from Lisp!")
(sb-ext:run-program "/usr/bin/java" (list "-jar" "kotlin.jar") :output T)
(write-line "Goodbye from Lisp!")
